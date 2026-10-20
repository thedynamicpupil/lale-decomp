
lale/SDISB16.DSD:     file format binary


Disassembly of section .data:

00000000 <.data>:
       0:	44                   	inc    %sp
       1:	53                   	push   %bx
       2:	8d 01                	lea    (%bx,%di),%ax
       4:	3a 00                	cmp    (%bx,%si),%al
       6:	3a 01                	cmp    (%bx,%di),%al
       8:	51                   	push   %cx
       9:	00 12                	add    %dl,(%bp,%si)
       b:	00 64 00             	add    %ah,0x0(%si)
       e:	00 00                	add    %al,(%bx,%si)
      10:	00 00                	add    %al,(%bx,%si)
      12:	00 01                	add    %al,(%bx,%di)
      14:	00 00                	add    %al,(%bx,%si)
      16:	00 00                	add    %al,(%bx,%si)
      18:	20 00                	and    %al,(%bx,%si)
      1a:	01 00                	add    %ax,(%bx,%si)
      1c:	00 00                	add    %al,(%bx,%si)
      1e:	00 00                	add    %al,(%bx,%si)
      20:	69 2e 00 00 40 2e    	imul   $0x2e40,0x0,%bp
      26:	00 00                	add    %al,(%bx,%si)
      28:	ed                   	in     (%dx),%ax
      29:	2d 00 00             	sub    $0x0,%ax
      2c:	35 2d 00             	xor    $0x2d,%ax
      2f:	00 51 33             	add    %dl,0x33(%bx,%di)
      32:	00 00                	add    %al,(%bx,%si)
      34:	80 32 00             	xorb   $0x0,(%bp,%si)
      37:	00 92 31 00          	add    %dl,0x31(%bp,%si)
      3b:	00 8d 30 00          	add    %cl,0x30(%di)
      3f:	00 b7 36 00          	add    %dh,0x36(%bx)
      43:	00 90 36 00          	add    %dl,0x36(%bx,%si)
      47:	00 40 36             	add    %al,0x36(%bx,%si)
      4a:	00 00                	add    %al,(%bx,%si)
      4c:	0a 36 00 00          	or     0x0,%dh
      50:	db 35                	(bad) (%di)
      52:	00 00                	add    %al,(%bx,%si)
      54:	92                   	xchg   %ax,%dx
      55:	35 00 00             	xor    $0x0,%ax
      58:	5f                   	pop    %di
      59:	35 00 00             	xor    $0x0,%ax
      5c:	2c 35                	sub    $0x35,%al
      5e:	00 00                	add    %al,(%bx,%si)
      60:	05 35 00             	add    $0x35,%ax
      63:	00 f6                	add    %dh,%dh
      65:	34 00                	xor    $0x0,%al
      67:	00 a6 34 00          	add    %ah,0x34(%bp)
      6b:	00 37                	add    %dh,(%bx)
      6d:	34 00                	xor    $0x0,%al
      6f:	00 a8 33 00          	add    %ch,0x33(%bx,%si)
      73:	00 f5                	add    %dh,%ch
      75:	08 d3                	or     %dl,%bl
      77:	03 f1                	add    %cx,%si
      79:	08 d3                	or     %dl,%bl
      7b:	03 ed                	add    %bp,%bp
      7d:	08 d3                	or     %dl,%bl
      7f:	03 e9                	add    %cx,%bp
      81:	08 d3                	or     %dl,%bl
      83:	03 e5                	add    %bp,%sp
      85:	08 d3                	or     %dl,%bl
      87:	03 e1                	add    %cx,%sp
      89:	08 d3                	or     %dl,%bl
      8b:	03 dd                	add    %bp,%bx
      8d:	08 d3                	or     %dl,%bl
      8f:	03 d9                	add    %cx,%bx
      91:	08 d3                	or     %dl,%bl
      93:	03 d5                	add    %bp,%dx
      95:	08 d3                	or     %dl,%bl
      97:	03 d1                	add    %cx,%dx
      99:	08 d3                	or     %dl,%bl
      9b:	03 cd                	add    %bp,%cx
      9d:	08 d3                	or     %dl,%bl
      9f:	03 c9                	add    %cx,%cx
      a1:	08 d3                	or     %dl,%bl
      a3:	03 c5                	add    %bp,%ax
      a5:	08 d3                	or     %dl,%bl
      a7:	03 c1                	add    %cx,%ax
      a9:	08 d3                	or     %dl,%bl
      ab:	03 bd 08 d3          	add    -0x2cf8(%di),%di
      af:	03 b9 08 d3          	add    -0x2cf8(%bx,%di),%di
      b3:	03 b5 08 d3          	add    -0x2cf8(%di),%si
      b7:	03 b1 08 d3          	add    -0x2cf8(%bx,%di),%si
      bb:	03 ad 08 d3          	add    -0x2cf8(%di),%bp
      bf:	03 a9 08 d3          	add    -0x2cf8(%bx,%di),%bp
      c3:	03 a5 08 d3          	add    -0x2cf8(%di),%sp
      c7:	03 a1 08 d3          	add    -0x2cf8(%bx,%di),%sp
      cb:	03 9d 08 d3          	add    -0x2cf8(%di),%bx
      cf:	03 99 08 d3          	add    -0x2cf8(%bx,%di),%bx
      d3:	03 95 08 d3          	add    -0x2cf8(%di),%dx
      d7:	03 91 08 d3          	add    -0x2cf8(%bx,%di),%dx
      db:	03 22                	add    (%bp,%si),%sp
      dd:	38 00                	cmp    %al,(%bx,%si)
      df:	00 d4                	add    %dl,%ah
      e1:	37                   	aaa
      e2:	00 00                	add    %al,(%bx,%si)
      e4:	86 38                	xchg   %bh,(%bx,%si)
      e6:	00 00                	add    %al,(%bx,%si)
      e8:	20 39                	and    %bh,(%bx,%di)
      ea:	00 00                	add    %al,(%bx,%si)
      ec:	b5 39                	mov    $0x39,%ch
      ee:	00 00                	add    %al,(%bx,%si)
      f0:	03 3a                	add    (%bp,%si),%di
      f2:	00 00                	add    %al,(%bx,%si)
      f4:	db 3a                	fstpt  (%bp,%si)
      f6:	00 00                	add    %al,(%bx,%si)
      f8:	84 3c                	test   %bh,(%si)
      fa:	00 00                	add    %al,(%bx,%si)
      fc:	77 3c                	ja     0x13a
      fe:	00 00                	add    %al,(%bx,%si)
     100:	58                   	pop    %ax
     101:	3c 00                	cmp    $0x0,%al
     103:	00 4b 3c             	add    %cl,0x3c(%bp,%di)
     106:	00 00                	add    %al,(%bx,%si)
     108:	24 07                	and    $0x7,%al
     10a:	00 00                	add    %al,(%bx,%si)
     10c:	12 07                	adc    (%bx),%al
     10e:	00 00                	add    %al,(%bx,%si)
     110:	ff 06 00 00          	incw   0x0
     114:	ec                   	in     (%dx),%al
     115:	06                   	push   %es
     116:	00 00                	add    %al,(%bx,%si)
     118:	ca 06 00             	lret   $0x6
     11b:	00 c5                	add    %al,%ch
     11d:	06                   	push   %es
     11e:	00 00                	add    %al,(%bx,%si)
     120:	1a 08                	sbb    (%bx,%si),%cl
     122:	00 00                	add    %al,(%bx,%si)
     124:	08 08                	or     %cl,(%bx,%si)
     126:	00 00                	add    %al,(%bx,%si)
     128:	f5                   	cmc
     129:	07                   	pop    %es
     12a:	00 00                	add    %al,(%bx,%si)
     12c:	d9 07                	flds   (%bx)
     12e:	00 00                	add    %al,(%bx,%si)
     130:	c7 07 00 00          	movw   $0x0,(%bx)
     134:	b4 07                	mov    $0x7,%ah
     136:	00 00                	add    %al,(%bx,%si)
     138:	a2 07 00             	mov    %al,0x7
     13b:	00 8f 07 00          	add    %cl,0x7(%bx)
     13f:	00 7d 07             	add    %bh,0x7(%di)
     142:	00 00                	add    %al,(%bx,%si)
     144:	77 08                	ja     0x14e
     146:	00 00                	add    %al,(%bx,%si)
     148:	64 08 00             	or     %al,%fs:(%bx,%si)
     14b:	00 52 08             	add    %dl,0x8(%bp,%si)
     14e:	00 00                	add    %al,(%bx,%si)
     150:	3f                   	aas
     151:	08 00                	or     %al,(%bx,%si)
     153:	00 2d                	add    %ch,(%di)
     155:	08 00                	or     %al,(%bx,%si)
     157:	00 a6 08 00          	add    %ah,0x8(%bp)
     15b:	00 a1 08 00          	add    %ah,0x8(%bx,%di)
     15f:	00 42 09             	add    %al,0x9(%bp,%si)
     162:	00 00                	add    %al,(%bx,%si)
     164:	37                   	aaa
     165:	09 00                	or     %ax,(%bx,%si)
     167:	00 58 0a             	add    %bl,0xa(%bx,%si)
     16a:	00 00                	add    %al,(%bx,%si)
     16c:	3f                   	aas
     16d:	0a 00                	or     (%bx,%si),%al
     16f:	00 fd                	add    %bh,%ch
     171:	0a 00                	or     (%bx,%si),%al
     173:	00 ec                	add    %ch,%ah
     175:	0a 00                	or     (%bx,%si),%al
     177:	00 e1                	add    %ah,%cl
     179:	0a 00                	or     (%bx,%si),%al
     17b:	00 d1                	add    %dl,%cl
     17d:	0a 00                	or     (%bx,%si),%al
     17f:	00 b5 0a 00          	add    %dh,0xa(%di)
     183:	00 a2 0a 00          	add    %ah,0xa(%bp,%si)
     187:	00 91 0a 00          	add    %dl,0xa(%bx,%di)
     18b:	00 7e 0a             	add    %bh,0xa(%bp)
     18e:	00 00                	add    %al,(%bx,%si)
     190:	6b 0a 00             	imul   $0x0,(%bp,%si),%cx
     193:	00 43 0b             	add    %al,0xb(%bp,%di)
     196:	00 00                	add    %al,(%bx,%si)
     198:	7a 0c                	jp     0x1a6
     19a:	00 00                	add    %al,(%bx,%si)
     19c:	67 0c 00             	addr32 or $0x0,%al
     19f:	00 56 0c             	add    %dl,0xc(%bp)
     1a2:	00 00                	add    %al,(%bx,%si)
     1a4:	43                   	inc    %bx
     1a5:	0c 00                	or     $0x0,%al
     1a7:	00 30                	add    %dh,(%bx,%si)
     1a9:	0c 00                	or     $0x0,%al
     1ab:	00 1d                	add    %bl,(%di)
     1ad:	0c 00                	or     $0x0,%al
     1af:	00 de                	add    %bl,%dh
     1b1:	0b 00                	or     (%bx,%si),%ax
     1b3:	00 07                	add    %al,(%bx)
     1b5:	0d 00 00             	or     $0x0,%ax
     1b8:	b6 0c                	mov    $0xc,%dh
     1ba:	00 00                	add    %al,(%bx,%si)
     1bc:	b3 0c                	mov    $0xc,%bl
     1be:	00 00                	add    %al,(%bx,%si)
     1c0:	dc 0d                	fmull  (%di)
     1c2:	00 00                	add    %al,(%bx,%si)
     1c4:	c9                   	leave
     1c5:	0d 00 00             	or     $0x0,%ax
     1c8:	b5 0d                	mov    $0xd,%ch
     1ca:	00 00                	add    %al,(%bx,%si)
     1cc:	a2 0d 00             	mov    %al,0xd
     1cf:	00 82 0d 00          	add    %al,0xd(%bp,%si)
     1d3:	00 6f 0d             	add    %ch,0xd(%bx)
     1d6:	00 00                	add    %al,(%bx,%si)
     1d8:	58                   	pop    %ax
     1d9:	0d 00 00             	or     $0x0,%ax
     1dc:	a5                   	movsw  %ds:(%si),%es:(%di)
     1dd:	0e                   	push   %cs
     1de:	00 00                	add    %al,(%bx,%si)
     1e0:	80 0e 00 00 48       	orb    $0x48,0x0
     1e5:	0e                   	push   %cs
     1e6:	00 00                	add    %al,(%bx,%si)
     1e8:	fe 0d                	decb   (%di)
     1ea:	00 00                	add    %al,(%bx,%si)
     1ec:	fb                   	sti
     1ed:	0d 00 00             	or     $0x0,%ax
     1f0:	66 0f 00 00          	data32 sldt (%bx,%si)
     1f4:	c7                   	(bad)
     1f5:	0e                   	push   %cs
     1f6:	00 00                	add    %al,(%bx,%si)
     1f8:	8a 0f                	mov    (%bx),%cl
     1fa:	00 00                	add    %al,(%bx,%si)
     1fc:	20 10                	and    %dl,(%bx,%si)
     1fe:	00 00                	add    %al,(%bx,%si)
     200:	0b 11                	or     (%bx,%di),%dx
     202:	00 00                	add    %al,(%bx,%si)
     204:	f9                   	stc
     205:	10 00                	adc    %al,(%bx,%si)
     207:	00 e6                	add    %ah,%dh
     209:	10 00                	adc    %al,(%bx,%si)
     20b:	00 c5                	add    %al,%ch
     20d:	10 00                	adc    %al,(%bx,%si)
     20f:	00 b3 10 00          	add    %dh,0x10(%bp,%di)
     213:	00 a0 10 00          	add    %ah,0x10(%bx,%si)
     217:	00 8e 10 00          	add    %cl,0x10(%bp)
     21b:	00 7b 10             	add    %bh,0x10(%bp,%di)
     21e:	00 00                	add    %al,(%bx,%si)
     220:	5e                   	pop    %si
     221:	10 00                	adc    %al,(%bx,%si)
     223:	00 bb 11 00          	add    %bh,0x11(%bp,%di)
     227:	00 a9 11 00          	add    %ch,0x11(%bx,%di)
     22b:	00 96 11 00          	add    %dl,0x11(%bp)
     22f:	00 84 11 00          	add    %al,0x11(%si)
     233:	00 71 11             	add    %dh,0x11(%bx,%di)
     236:	00 00                	add    %al,(%bx,%si)
     238:	55                   	push   %bp
     239:	11 00                	adc    %ax,(%bx,%si)
     23b:	00 43 11             	add    %al,0x11(%bp,%di)
     23e:	00 00                	add    %al,(%bx,%si)
     240:	30 11                	xor    %dl,(%bx,%di)
     242:	00 00                	add    %al,(%bx,%si)
     244:	1e                   	push   %ds
     245:	11 00                	adc    %ax,(%bx,%si)
     247:	00 75 12             	add    %dh,0x12(%di)
     24a:	00 00                	add    %al,(%bx,%si)
     24c:	63 12                	arpl   %dx,(%bp,%si)
     24e:	00 00                	add    %al,(%bx,%si)
     250:	50                   	push   %ax
     251:	12 00                	adc    (%bx,%si),%al
     253:	00 3e 12 00          	add    %bh,0x12
     257:	00 2b                	add    %ch,(%bp,%di)
     259:	12 00                	adc    (%bx,%si),%al
     25b:	00 19                	add    %bl,(%bx,%di)
     25d:	12 00                	adc    (%bx,%si),%al
     25f:	00 06 12 00          	add    %al,0x12
     263:	00 e0                	add    %ah,%al
     265:	11 00                	adc    %ax,(%bx,%si)
     267:	00 ce                	add    %cl,%dh
     269:	11 00                	adc    %ax,(%bx,%si)
     26b:	00 2f                	add    %ch,(%bx)
     26d:	13 00                	adc    (%bx,%si),%ax
     26f:	00 1d                	add    %bl,(%di)
     271:	13 00                	adc    (%bx,%si),%ax
     273:	00 0a                	add    %cl,(%bp,%si)
     275:	13 00                	adc    (%bx,%si),%ax
     277:	00 f8                	add    %bh,%al
     279:	12 00                	adc    (%bx,%si),%al
     27b:	00 e5                	add    %ah,%ch
     27d:	12 00                	adc    (%bx,%si),%al
     27f:	00 c7                	add    %al,%bh
     281:	12 00                	adc    (%bx,%si),%al
     283:	00 ab 12 00          	add    %ch,0x12(%bp,%di)
     287:	00 98 12 00          	add    %bl,0x12(%bx,%si)
     28b:	00 4e 13             	add    %cl,0x13(%bp)
     28e:	00 00                	add    %al,(%bx,%si)
     290:	42                   	inc    %dx
     291:	13 00                	adc    (%bx,%si),%ax
     293:	00 84 13 00          	add    %al,0x13(%si)
     297:	00 d2                	add    %dl,%dl
     299:	13 00                	adc    (%bx,%si),%ax
     29b:	00 bf 13 00          	add    %bh,0x13(%bx)
     29f:	00 a2 13 00          	add    %ah,0x13(%bp,%si)
     2a3:	00 28                	add    %ch,(%bx,%si)
     2a5:	14 00                	adc    $0x0,%al
     2a7:	00 10                	add    %dl,(%bx,%si)
     2a9:	14 00                	adc    $0x0,%al
     2ab:	00 93 14 00          	add    %dl,0x14(%bp,%di)
     2af:	00 b3 15 00          	add    %dh,0x15(%bp,%di)
     2b3:	00 a5 15 00          	add    %ah,0x15(%di)
     2b7:	00 97 15 00          	add    %dl,0x15(%bx)
     2bb:	00 89 15 00          	add    %cl,0x15(%bx,%di)
     2bf:	00 7b 15             	add    %bh,0x15(%bp,%di)
     2c2:	00 00                	add    %al,(%bx,%si)
     2c4:	6d                   	insw   (%dx),%es:(%di)
     2c5:	15 00 00             	adc    $0x0,%ax
     2c8:	5f                   	pop    %di
     2c9:	15 00 00             	adc    $0x0,%ax
     2cc:	4f                   	dec    %di
     2cd:	15 00 00             	adc    $0x0,%ax
     2d0:	4c                   	dec    %sp
     2d1:	15 00 00             	adc    $0x0,%ax
     2d4:	46                   	inc    %si
     2d5:	15 00 00             	adc    $0x0,%ax
     2d8:	20 16 00 00          	and    %dl,0x0
     2dc:	1d 16 00             	sbb    $0x16,%ax
     2df:	00 9c 2b 00          	add    %bl,0x2b(%si)
     2e3:	00 37                	add    %dh,(%bx)
     2e5:	2a 00                	sub    (%bx,%si),%al
     2e7:	00 b5 29 00          	add    %dh,0x29(%di)
     2eb:	00 63 29             	add    %ah,0x29(%bp,%di)
     2ee:	00 00                	add    %al,(%bx,%si)
     2f0:	91                   	xchg   %ax,%cx
     2f1:	2f                   	das
     2f2:	00 00                	add    %al,(%bx,%si)
     2f4:	78 2f                	js     0x325
     2f6:	00 00                	add    %al,(%bx,%si)
     2f8:	4a                   	dec    %dx
     2f9:	2f                   	das
     2fa:	00 00                	add    %al,(%bx,%si)
     2fc:	1c 2f                	sbb    $0x2f,%al
     2fe:	00 00                	add    %al,(%bx,%si)
     300:	e3 2e                	jcxz   0x330
     302:	00 00                	add    %al,(%bx,%si)
     304:	a6                   	cmpsb  %es:(%di),%ds:(%si)
     305:	2e 00 00             	add    %al,%cs:(%bx,%si)
     308:	03 00                	add    (%bx,%si),%ax
     30a:	00 00                	add    %al,(%bx,%si)
     30c:	1e                   	push   %ds
     30d:	00 d3                	add    %dl,%bl
     30f:	03 1a                	add    (%bp,%si),%bx
     311:	00 d3                	add    %dl,%bl
     313:	03 12                	add    (%bp,%si),%dx
     315:	00 d3                	add    %dl,%bl
     317:	03 0e 00 d3          	add    -0x2d00,%cx
     31b:	03 5f 00             	add    0x0(%bx),%bx
     31e:	d3 03                	rolw   %cl,(%bp,%di)
     320:	b8 00 d3             	mov    $0xd300,%ax
     323:	03 b4 00 d3          	add    -0x2d00(%si),%si
     327:	03 a8 00 d3          	add    -0x2d00(%bx,%si),%bp
     32b:	03 a4 00 d3          	add    -0x2d00(%si),%sp
     32f:	03 4e 01             	add    0x1(%bp),%cx
     332:	d3 03                	rolw   %cl,(%bp,%di)
     334:	4a                   	dec    %dx
     335:	01 d3                	add    %dx,%bx
     337:	03 46 01             	add    0x1(%bp),%ax
     33a:	d3 03                	rolw   %cl,(%bp,%di)
     33c:	42                   	inc    %dx
     33d:	01 d3                	add    %dx,%bx
     33f:	03 3e 01 d3          	add    -0x2cff,%di
     343:	03 32                	add    (%bp,%si),%si
     345:	01 d3                	add    %dx,%bx
     347:	03 2e 01 d3          	add    -0x2cff,%bp
     34b:	03 ed                	add    %bp,%bp
     34d:	00 d3                	add    %dl,%bl
     34f:	03 e9                	add    %cx,%bp
     351:	00 d3                	add    %dl,%bl
     353:	03 8b 01 d3          	add    -0x2cff(%bp,%di),%cx
     357:	03 87 01 d3          	add    -0x2cff(%bx),%ax
     35b:	03 83 01 d3          	add    -0x2cff(%bp,%di),%ax
     35f:	03 77 01             	add    0x1(%bx),%si
     362:	d3 03                	rolw   %cl,(%bp,%di)
     364:	73 01                	jae    0x367
     366:	d3 03                	rolw   %cl,(%bp,%di)
     368:	e6 02                	out    %al,$0x2
     36a:	d3 03                	rolw   %cl,(%bp,%di)
     36c:	e2 02                	loop   0x370
     36e:	d3 03                	rolw   %cl,(%bp,%di)
     370:	da 02                	fiaddl (%bp,%si)
     372:	d3 03                	rolw   %cl,(%bp,%di)
     374:	d6                   	salc
     375:	02 d3                	add    %bl,%dl
     377:	03 27                	add    (%bx),%sp
     379:	03 d3                	add    %bx,%dx
     37b:	03 80 03 d3          	add    -0x2cfd(%bx,%si),%ax
     37f:	03 7c 03             	add    0x3(%si),%di
     382:	d3 03                	rolw   %cl,(%bp,%di)
     384:	70 03                	jo     0x389
     386:	d3 03                	rolw   %cl,(%bp,%di)
     388:	6c                   	insb   (%dx),%es:(%di)
     389:	03 d3                	add    %bx,%dx
     38b:	03 16 04 d3          	add    -0x2cfc,%dx
     38f:	03 12                	add    (%bp,%si),%dx
     391:	04 d3                	add    $0xd3,%al
     393:	03 0e 04 d3          	add    -0x2cfc,%cx
     397:	03 0a                	add    (%bp,%si),%cx
     399:	04 d3                	add    $0xd3,%al
     39b:	03 06 04 d3          	add    -0x2cfc,%ax
     39f:	03 fa                	add    %dx,%di
     3a1:	03 d3                	add    %bx,%dx
     3a3:	03 f6                	add    %si,%si
     3a5:	03 d3                	add    %bx,%dx
     3a7:	03 b5 03 d3          	add    -0x2cfd(%di),%si
     3ab:	03 b1 03 d3          	add    -0x2cfd(%bx,%di),%si
     3af:	03 4f 04             	add    0x4(%bx),%cx
     3b2:	d3 03                	rolw   %cl,(%bp,%di)
     3b4:	4b                   	dec    %bx
     3b5:	04 d3                	add    $0xd3,%al
     3b7:	03 3f                	add    (%bx),%di
     3b9:	04 d3                	add    $0xd3,%al
     3bb:	03 3b                	add    (%bp,%di),%di
     3bd:	04 d3                	add    $0xd3,%al
     3bf:	03 98 04 d3          	add    -0x2cfc(%bx,%si),%bx
     3c3:	03 94 04 d3          	add    -0x2cfc(%si),%dx
     3c7:	03 90 04 d3          	add    -0x2cfc(%bx,%si),%dx
     3cb:	03 84 04 d3          	add    -0x2cfc(%si),%ax
     3cf:	03 80 04 d3          	add    -0x2cfc(%bx,%si),%ax
     3d3:	03 ae 05 d3          	add    -0x2cfb(%bp),%bp
     3d7:	03 aa 05 d3          	add    -0x2cfb(%bp,%si),%bp
     3db:	03 a2 05 d3          	add    -0x2cfb(%bp,%si),%sp
     3df:	03 9e 05 d3          	add    -0x2cfb(%bp),%bx
     3e3:	03 f3                	add    %bx,%si
     3e5:	05 d3 03             	add    $0x3d3,%ax
     3e8:	ef                   	out    %ax,(%dx)
     3e9:	05 d3 03             	add    $0x3d3,%ax
     3ec:	48                   	dec    %ax
     3ed:	06                   	push   %es
     3ee:	d3 03                	rolw   %cl,(%bp,%di)
     3f0:	44                   	inc    %sp
     3f1:	06                   	push   %es
     3f2:	d3 03                	rolw   %cl,(%bp,%di)
     3f4:	38 06 d3 03          	cmp    %al,0x3d3
     3f8:	34 06                	xor    $0x6,%al
     3fa:	d3 03                	rolw   %cl,(%bp,%di)
     3fc:	de 06 d3 03          	fiadds 0x3d3
     400:	da 06 d3 03          	fiaddl 0x3d3
     404:	d6                   	salc
     405:	06                   	push   %es
     406:	d3 03                	rolw   %cl,(%bp,%di)
     408:	d2 06 d3 03          	rolb   %cl,0x3d3
     40c:	ce                   	into
     40d:	06                   	push   %es
     40e:	d3 03                	rolw   %cl,(%bp,%di)
     410:	c2 06 d3             	ret    $0xd306
     413:	03 be 06 d3          	add    -0x2cfa(%bp),%di
     417:	03 7d 06             	add    0x6(%di),%di
     41a:	d3 03                	rolw   %cl,(%bp,%di)
     41c:	79 06                	jns    0x424
     41e:	d3 03                	rolw   %cl,(%bp,%di)
     420:	17                   	pop    %ss
     421:	07                   	pop    %es
     422:	d3 03                	rolw   %cl,(%bp,%di)
     424:	13 07                	adc    (%bx),%ax
     426:	d3 03                	rolw   %cl,(%bp,%di)
     428:	07                   	pop    %es
     429:	07                   	pop    %es
     42a:	d3 03                	rolw   %cl,(%bp,%di)
     42c:	03 07                	add    (%bx),%ax
     42e:	d3 03                	rolw   %cl,(%bp,%di)
     430:	64 07                	fs pop %es
     432:	d3 03                	rolw   %cl,(%bp,%di)
     434:	60                   	pusha
     435:	07                   	pop    %es
     436:	d3 03                	rolw   %cl,(%bp,%di)
     438:	5c                   	pop    %sp
     439:	07                   	pop    %es
     43a:	d3 03                	rolw   %cl,(%bp,%di)
     43c:	58                   	pop    %ax
     43d:	07                   	pop    %es
     43e:	d3 03                	rolw   %cl,(%bp,%di)
     440:	4c                   	dec    %sp
     441:	07                   	pop    %es
     442:	d3 03                	rolw   %cl,(%bp,%di)
     444:	48                   	dec    %ax
     445:	07                   	pop    %es
     446:	d3 03                	rolw   %cl,(%bp,%di)
     448:	30 00                	xor    %al,(%bx,%si)
     44a:	00 00                	add    %al,(%bx,%si)
     44c:	28 00                	sub    %al,(%bx,%si)
     44e:	00 00                	add    %al,(%bx,%si)
     450:	22 00                	and    (%bx,%si),%al
     452:	00 00                	add    %al,(%bx,%si)
     454:	a1 00 00             	mov    0x0,%ax
     457:	00 9e 00 00          	add    %bl,0x0(%bp)
     45b:	00 32                	add    %dh,(%bp,%si)
     45d:	01 00                	add    %ax,(%bx,%si)
     45f:	00 f9                	add    %bh,%cl
     461:	00 00                	add    %al,(%bx,%si)
     463:	00 86 02 00          	add    %al,0x2(%bp)
     467:	00 7c 02             	add    %bh,0x2(%si)
     46a:	00 00                	add    %al,(%bx,%si)
     46c:	66 02 00             	data32 add (%bx,%si),%al
     46f:	00 5c 02             	add    %bl,0x2(%si)
     472:	00 00                	add    %al,(%bx,%si)
     474:	47                   	inc    %di
     475:	02 00                	add    (%bx,%si),%al
     477:	00 3d                	add    %bh,(%di)
     479:	02 00                	add    (%bx,%si),%al
     47b:	00 f5                	add    %dh,%ch
     47d:	01 00                	add    %ax,(%bx,%si)
     47f:	00 1b                	add    %bl,(%bp,%di)
     481:	03 00                	add    (%bx,%si),%ax
     483:	00 f6                	add    %dh,%dh
     485:	02 00                	add    (%bx,%si),%al
     487:	00 ec                	add    %ch,%ah
     489:	02 00                	add    (%bx,%si),%al
     48b:	00 b6 02 00          	add    %dh,0x2(%bp)
     48f:	00 be 03 00          	add    %bh,0x3(%bp)
     493:	00 71 03             	add    %dh,0x3(%bx,%di)
     496:	00 00                	add    %al,(%bx,%si)
     498:	56                   	push   %si
     499:	04 00                	add    $0x0,%al
     49b:	00 42 04             	add    %al,0x4(%bp,%si)
     49e:	00 00                	add    %al,(%bx,%si)
     4a0:	2e 04 00             	cs add $0x0,%al
     4a3:	00 91 04 00          	add    %dl,0x4(%bx,%di)
     4a7:	00 7e 04             	add    %bh,0x4(%bp)
     4aa:	00 00                	add    %al,(%bx,%si)
     4ac:	c5 04                	lds    (%si),%ax
     4ae:	00 00                	add    %al,(%bx,%si)
     4b0:	af                   	scas   %es:(%di),%ax
     4b1:	04 00                	add    $0x0,%al
     4b3:	00 e3                	add    %ah,%bl
     4b5:	04 00                	add    $0x0,%al
     4b7:	00 d4                	add    %dl,%ah
     4b9:	05 00 00             	add    $0x0,%ax
     4bc:	be 05 00             	mov    $0x5,%si
     4bf:	00 a8 05 00          	add    %ch,0x5(%bx,%si)
     4c3:	00 92 05 00          	add    %dl,0x5(%bp,%si)
     4c7:	00 83 05 00          	add    %al,0x5(%bp,%di)
     4cb:	00 70 05             	add    %dh,0x5(%bx,%si)
     4ce:	00 00                	add    %al,(%bx,%si)
     4d0:	5b                   	pop    %bx
     4d1:	05 00 00             	add    $0x0,%ax
     4d4:	45                   	inc    %bp
     4d5:	05 00 00             	add    $0x0,%ax
     4d8:	9e                   	sahf
     4d9:	06                   	push   %es
     4da:	00 00                	add    %al,(%bx,%si)
     4dc:	8b 06 00 00          	mov    0x0,%ax
     4e0:	79 06                	jns    0x4e8
     4e2:	00 00                	add    %al,(%bx,%si)
     4e4:	66 06                	pushl  %es
     4e6:	00 00                	add    %al,(%bx,%si)
     4e8:	54                   	push   %sp
     4e9:	06                   	push   %es
     4ea:	00 00                	add    %al,(%bx,%si)
     4ec:	41                   	inc    %cx
     4ed:	06                   	push   %es
     4ee:	00 00                	add    %al,(%bx,%si)
     4f0:	24 06                	and    $0x6,%al
     4f2:	00 00                	add    %al,(%bx,%si)
     4f4:	02 06 00 00          	add    0x0,%al
     4f8:	fd                   	std
     4f9:	05 00 00             	add    $0x0,%ax
     4fc:	6a 07                	push   $0x7
     4fe:	00 00                	add    %al,(%bx,%si)
     500:	49                   	dec    %cx
     501:	07                   	pop    %es
     502:	00 00                	add    %al,(%bx,%si)
     504:	37                   	aaa
     505:	07                   	pop    %es
	...
     50e:	00 00                	add    %al,(%bx,%si)
     510:	ea 7c 14 00 00       	ljmp   $0x0,$0x147c
	...
     51d:	00 00                	add    %al,(%bx,%si)
     51f:	00 fc                	add    %bh,%ah
     521:	6d                   	insw   (%dx),%es:(%di)
     522:	63 70 4f             	arpl   %si,0x4f(%bx,%si)
     525:	70 65                	jo     0x58c
     527:	6e                   	outsb  %ds:(%si),(%dx)
     528:	44                   	inc    %sp
     529:	44                   	inc    %sp
     52a:	53                   	push   %bx
     52b:	0a 53 51             	or     0x51(%bp,%di),%dl
     52e:	52                   	push   %dx
     52f:	1e                   	push   %ds
     530:	06                   	push   %es
     531:	68 d3 03             	push   $0x3d3
     534:	68 b0 2f             	push   $0x2fb0
     537:	68 d3 03             	push   $0x3d3
     53a:	68 7c 08             	push   $0x87c
     53d:	6a 00                	push   $0x0
     53f:	b8 d3 03             	mov    $0x3d3,%ax
     542:	6a 12                	push   $0x12
     544:	8e d8                	mov    %ax,%ds
     546:	ff 1e e0 31          	lcall  *0x31e0
     54a:	1e                   	push   %ds
     54b:	68 c0 2f             	push   $0x2fc0
     54e:	1e                   	push   %ds
     54f:	68 e4 1f             	push   $0x1fe4
     552:	ff 1e e4 31          	lcall  *0x31e4
     556:	85 c0                	test   %ax,%ax
     558:	75 38                	jne    0x592
     55a:	1e                   	push   %ds
     55b:	68 cc 2f             	push   $0x2fcc
     55e:	1e                   	push   %ds
     55f:	68 e8 1f             	push   $0x1fe8
     562:	ff 1e e4 31          	lcall  *0x31e4
     566:	1e                   	push   %ds
     567:	68 e2 2f             	push   $0x2fe2
     56a:	1e                   	push   %ds
     56b:	68 ec 1f             	push   $0x1fec
     56e:	ff 1e e4 31          	lcall  *0x31e4
     572:	1e                   	push   %ds
     573:	68 fa 2f             	push   $0x2ffa
     576:	1e                   	push   %ds
     577:	68 f0 1f             	push   $0x1ff0
     57a:	ff 1e e4 31          	lcall  *0x31e4
     57e:	85 c0                	test   %ax,%ax
     580:	75 10                	jne    0x592
     582:	1e                   	push   %ds
     583:	68 14 30             	push   $0x3014
     586:	1e                   	push   %ds
     587:	68 e0 1f             	push   $0x1fe0
     58a:	ff 1e e4 31          	lcall  *0x31e4
     58e:	85 c0                	test   %ax,%ax
     590:	74 03                	je     0x595
     592:	b8 05 00             	mov    $0x5,%ax
     595:	07                   	pop    %es
     596:	1f                   	pop    %ds
     597:	5a                   	pop    %dx
     598:	59                   	pop    %cx
     599:	5b                   	pop    %bx
     59a:	c3                   	ret
     59b:	fc                   	cld
     59c:	6d                   	insw   (%dx),%es:(%di)
     59d:	63 70 43             	arpl   %si,0x43(%bx,%si)
     5a0:	6c                   	insb   (%dx),%es:(%di)
     5a1:	6f                   	outsw  %ds:(%si),(%dx)
     5a2:	73 65                	jae    0x609
     5a4:	44                   	inc    %sp
     5a5:	44                   	inc    %sp
     5a6:	53                   	push   %bx
     5a7:	0b 53 51             	or     0x51(%bp,%di),%dx
     5aa:	52                   	push   %dx
     5ab:	1e                   	push   %ds
     5ac:	06                   	push   %es
     5ad:	68 d3 03             	push   $0x3d3
     5b0:	b8 d3 03             	mov    $0x3d3,%ax
     5b3:	68 b0 2f             	push   $0x2fb0
     5b6:	8e d8                	mov    %ax,%ds
     5b8:	ff 1e cc 31          	lcall  *0x31cc
     5bc:	07                   	pop    %es
     5bd:	1f                   	pop    %ds
     5be:	5a                   	pop    %dx
     5bf:	59                   	pop    %cx
     5c0:	5b                   	pop    %bx
     5c1:	c3                   	ret
     5c2:	fc                   	cld
     5c3:	73 63                	jae    0x628
     5c5:	61                   	popa
     5c6:	6e                   	outsb  %ds:(%si),(%dx)
     5c7:	4c                   	dec    %sp
     5c8:	6f                   	outsw  %ds:(%si),(%dx)
     5c9:	6e                   	outsb  %ds:(%si),(%dx)
     5ca:	67 08 56 57          	or     %dl,0x57(%esi)
     5ce:	1e                   	push   %ds
     5cf:	06                   	push   %es
     5d0:	55                   	push   %bp
     5d1:	89 e5                	mov    %sp,%bp
     5d3:	83 ec 0a             	sub    $0xa,%sp
     5d6:	8b 7e 0c             	mov    0xc(%bp),%di
     5d9:	89 46 fe             	mov    %ax,-0x2(%bp)
     5dc:	8e c2                	mov    %dx,%es
     5de:	89 5e fc             	mov    %bx,-0x4(%bp)
     5e1:	89 4e f6             	mov    %cx,-0xa(%bp)
     5e4:	31 db                	xor    %bx,%bx
     5e6:	31 c9                	xor    %cx,%cx
     5e8:	8b 76 fe             	mov    -0x2(%bp),%si
     5eb:	26 8a 04             	mov    %es:(%si),%al
     5ee:	84 c0                	test   %al,%al
     5f0:	74 2f                	je     0x621
     5f2:	88 c2                	mov    %al,%dl
     5f4:	30 f6                	xor    %dh,%dh
     5f6:	83 fa 61             	cmp    $0x61,%dx
     5f9:	7c 07                	jl     0x602
     5fb:	83 fa 7a             	cmp    $0x7a,%dx
     5fe:	7f 02                	jg     0x602
     600:	2c 20                	sub    $0x20,%al
     602:	31 f6                	xor    %si,%si
     604:	85 ff                	test   %di,%di
     606:	7e 10                	jle    0x618
     608:	ba d3 03             	mov    $0x3d3,%dx
     60b:	8e da                	mov    %dx,%ds
     60d:	3a 84 5a 08          	cmp    0x85a(%si),%al
     611:	74 05                	je     0x618
     613:	46                   	inc    %si
     614:	39 fe                	cmp    %di,%si
     616:	7c f3                	jl     0x60b
     618:	39 fe                	cmp    %di,%si
     61a:	7c 05                	jl     0x621
     61c:	ff 46 fe             	incw   -0x2(%bp)
     61f:	eb c7                	jmp    0x5e8
     621:	8b 76 fe             	mov    -0x2(%bp),%si
     624:	26 8a 04             	mov    %es:(%si),%al
     627:	84 c0                	test   %al,%al
     629:	74 52                	je     0x67d
     62b:	88 c2                	mov    %al,%dl
     62d:	30 f6                	xor    %dh,%dh
     62f:	83 fa 61             	cmp    $0x61,%dx
     632:	7c 07                	jl     0x63b
     634:	83 fa 7a             	cmp    $0x7a,%dx
     637:	7f 02                	jg     0x63b
     639:	2c 20                	sub    $0x20,%al
     63b:	31 f6                	xor    %si,%si
     63d:	85 ff                	test   %di,%di
     63f:	7e 10                	jle    0x651
     641:	ba d3 03             	mov    $0x3d3,%dx
     644:	8e da                	mov    %dx,%ds
     646:	3a 84 5a 08          	cmp    0x85a(%si),%al
     64a:	74 05                	je     0x651
     64c:	46                   	inc    %si
     64d:	39 fe                	cmp    %di,%si
     64f:	7c f3                	jl     0x644
     651:	39 fe                	cmp    %di,%si
     653:	74 28                	je     0x67d
     655:	89 f8                	mov    %di,%ax
     657:	99                   	cwtd
     658:	89 46 f8             	mov    %ax,-0x8(%bp)
     65b:	89 56 fa             	mov    %dx,-0x6(%bp)
     65e:	89 d8                	mov    %bx,%ax
     660:	89 ca                	mov    %cx,%dx
     662:	8b 5e f8             	mov    -0x8(%bp),%bx
     665:	8b 4e fa             	mov    -0x6(%bp),%cx
     668:	0e                   	push   %cs
     669:	e8 c4 3a             	call   0x4130
     66c:	90                   	nop
     66d:	89 c3                	mov    %ax,%bx
     66f:	89 f0                	mov    %si,%ax
     671:	89 d1                	mov    %dx,%cx
     673:	99                   	cwtd
     674:	01 c3                	add    %ax,%bx
     676:	11 d1                	adc    %dx,%cx
     678:	ff 46 fe             	incw   -0x2(%bp)
     67b:	eb a4                	jmp    0x621
     67d:	8e 5e f6             	mov    -0xa(%bp),%ds
     680:	8b 76 fc             	mov    -0x4(%bp),%si
     683:	89 1c                	mov    %bx,(%si)
     685:	89 f3                	mov    %si,%bx
     687:	89 4f 02             	mov    %cx,0x2(%bx)
     68a:	84 c0                	test   %al,%al
     68c:	75 06                	jne    0x694
     68e:	30 e4                	xor    %ah,%ah
     690:	31 d2                	xor    %dx,%dx
     692:	eb 05                	jmp    0x699
     694:	8b 46 fe             	mov    -0x2(%bp),%ax
     697:	8c c2                	mov    %es,%dx
     699:	c9                   	leave
     69a:	07                   	pop    %es
     69b:	1f                   	pop    %ds
     69c:	5f                   	pop    %di
     69d:	5e                   	pop    %si
     69e:	c2 02 00             	ret    $0x2
     6a1:	fc                   	cld
     6a2:	37                   	aaa
     6a3:	02 97 02 97          	add    -0x68fe(%bx),%dl
     6a7:	02 56 02             	add    0x2(%bp),%dl
     6aa:	97                   	xchg   %ax,%di
     6ab:	02 97 02 97          	add    -0x68fe(%bx),%dl
     6af:	02 e6                	add    %dh,%ah
     6b1:	02 76 02             	add    0x2(%bp),%dh
     6b4:	50                   	push   %ax
     6b5:	03 54 03             	add    0x3(%si),%dx
     6b8:	6b 03 59             	imul   $0x59,(%bp,%di),%ax
     6bb:	03 6b 03             	add    0x3(%bp,%di),%bp
     6be:	5e                   	pop    %si
     6bf:	03 63 03             	add    0x3(%bp,%di),%sp
     6c2:	68 03 98             	push   $0x9803
     6c5:	03 9c 03 b8          	add    -0x47fd(%si),%bx
     6c9:	03 a1 03 b8          	add    -0x47fd(%bx,%di),%sp
     6cd:	03 a6 03 b8          	add    -0x47fd(%bp),%sp
     6d1:	03 b8 03 b8          	add    -0x47fd(%bx,%si),%di
     6d5:	03 ab 03 b0          	add    -0x4ffd(%bp,%di),%bp
     6d9:	03 b8 03 b8          	add    -0x47fd(%bx,%si),%di
     6dd:	03 b5 03 64          	add    0x6403(%di),%si
     6e1:	65 74 65             	gs je  0x749
     6e4:	63 74 44             	arpl   %si,0x44(%si)
     6e7:	65 76 69             	gs jbe 0x753
     6ea:	63 65 73             	arpl   %sp,0x73(%di)
     6ed:	0d 56 57             	or     $0x5756,%ax
     6f0:	1e                   	push   %ds
     6f1:	55                   	push   %bp
     6f2:	89 e5                	mov    %sp,%bp
     6f4:	83 ec 08             	sub    $0x8,%sp
     6f7:	c7 46 f8 00 00       	movw   $0x0,-0x8(%bp)
     6fc:	c7 46 fa ff ff       	movw   $0xffff,-0x6(%bp)
     701:	bf ff ff             	mov    $0xffff,%di
     704:	b8 d3 03             	mov    $0x3d3,%ax
     707:	89 7e fc             	mov    %di,-0x4(%bp)
     70a:	8e d8                	mov    %ax,%ds
     70c:	89 7e fe             	mov    %di,-0x2(%bp)
     70f:	83 3e fe 31 00       	cmpw   $0x0,0x31fe
     714:	74 6d                	je     0x783
     716:	50                   	push   %ax
     717:	68 2a 30             	push   $0x302a
     71a:	ff 1e 58 31          	lcall  *0x3158
     71e:	89 c6                	mov    %ax,%si
     720:	85 d2                	test   %dx,%dx
     722:	75 04                	jne    0x728
     724:	85 c0                	test   %ax,%ax
     726:	74 5b                	je     0x783
     728:	8e da                	mov    %dx,%ds
     72a:	89 c3                	mov    %ax,%bx
     72c:	80 3c 00             	cmpb   $0x0,(%si)
     72f:	74 74                	je     0x7a5
     731:	8a 07                	mov    (%bx),%al
     733:	2c 41                	sub    $0x41,%al
     735:	3c 08                	cmp    $0x8,%al
     737:	77 6e                	ja     0x7a7
     739:	30 e4                	xor    %ah,%ah
     73b:	89 c6                	mov    %ax,%si
     73d:	01 c6                	add    %ax,%si
     73f:	8d 47 01             	lea    0x1(%bx),%ax
     742:	2e ff a4 92 01       	jmp    *%cs:0x192(%si)
     747:	6a 10                	push   $0x10
     749:	bb 00 32             	mov    $0x3200,%bx
     74c:	b9 d3 03             	mov    $0x3d3,%cx
     74f:	8c da                	mov    %ds,%dx
     751:	e8 78 fe             	call   0x5cc
     754:	89 c3                	mov    %ax,%bx
     756:	b8 d3 03             	mov    $0x3d3,%ax
     759:	8e c0                	mov    %ax,%es
     75b:	8e da                	mov    %dx,%ds
     75d:	26 a1 00 32          	mov    %es:0x3200,%ax
     761:	89 46 fa             	mov    %ax,-0x6(%bp)
     764:	eb 42                	jmp    0x7a8
     766:	6a 0a                	push   $0xa
     768:	bb 00 32             	mov    $0x3200,%bx
     76b:	b9 d3 03             	mov    $0x3d3,%cx
     76e:	8c da                	mov    %ds,%dx
     770:	e8 59 fe             	call   0x5cc
     773:	89 c3                	mov    %ax,%bx
     775:	b8 d3 03             	mov    $0x3d3,%ax
     778:	8e c0                	mov    %ax,%es
     77a:	8e da                	mov    %dx,%ds
     77c:	26 8b 3e 00 32       	mov    %es:0x3200,%di
     781:	eb 25                	jmp    0x7a8
     783:	e9 67 01             	jmp    0x8ed
     786:	6a 0a                	push   $0xa
     788:	bb 00 32             	mov    $0x3200,%bx
     78b:	b9 d3 03             	mov    $0x3d3,%cx
     78e:	8c da                	mov    %ds,%dx
     790:	e8 39 fe             	call   0x5cc
     793:	89 c3                	mov    %ax,%bx
     795:	b8 d3 03             	mov    $0x3d3,%ax
     798:	8e c0                	mov    %ax,%es
     79a:	8e da                	mov    %dx,%ds
     79c:	26 a1 00 32          	mov    %es:0x3200,%ax
     7a0:	89 46 fe             	mov    %ax,-0x2(%bp)
     7a3:	eb 03                	jmp    0x7a8
     7a5:	eb 06                	jmp    0x7ad
     7a7:	43                   	inc    %bx
     7a8:	80 3f 00             	cmpb   $0x0,(%bx)
     7ab:	75 84                	jne    0x731
     7ad:	83 7e fa ff          	cmpw   $0xffff,-0x6(%bp)
     7b1:	74 2d                	je     0x7e0
     7b3:	8b 46 fa             	mov    -0x6(%bp),%ax
     7b6:	2d 10 02             	sub    $0x210,%ax
     7b9:	c1 f8 04             	sar    $0x4,%ax
     7bc:	85 c0                	test   %ax,%ax
     7be:	7c 20                	jl     0x7e0
     7c0:	3d 06 00             	cmp    $0x6,%ax
     7c3:	7d 1b                	jge    0x7e0
     7c5:	bb d3 03             	mov    $0x3d3,%bx
     7c8:	99                   	cwtd
     7c9:	8e db                	mov    %bx,%ds
     7cb:	a3 50 00             	mov    %ax,0x50
     7ce:	89 16 52 00          	mov    %dx,0x52
     7d2:	a3 18 03             	mov    %ax,0x318
     7d5:	89 16 1a 03          	mov    %dx,0x31a
     7d9:	a3 e0 05             	mov    %ax,0x5e0
     7dc:	89 16 e2 05          	mov    %dx,0x5e2
     7e0:	83 ff ff             	cmp    $0xffff,%di
     7e3:	74 66                	je     0x84b
     7e5:	b8 ff ff             	mov    $0xffff,%ax
     7e8:	83 ff 01             	cmp    $0x1,%di
     7eb:	72 28                	jb     0x815
     7ed:	76 2e                	jbe    0x81d
     7ef:	83 ff 03             	cmp    $0x3,%di
     7f2:	74 2e                	je     0x822
     7f4:	eb 2f                	jmp    0x825
     7f6:	6a 0a                	push   $0xa
     7f8:	bb 00 32             	mov    $0x3200,%bx
     7fb:	b9 d3 03             	mov    $0x3d3,%cx
     7fe:	8c da                	mov    %ds,%dx
     800:	e8 c9 fd             	call   0x5cc
     803:	89 c3                	mov    %ax,%bx
     805:	b8 d3 03             	mov    $0x3d3,%ax
     808:	8e c0                	mov    %ax,%es
     80a:	8e da                	mov    %dx,%ds
     80c:	26 a1 00 32          	mov    %es:0x3200,%ax
     810:	89 46 fc             	mov    %ax,-0x4(%bp)
     813:	eb 93                	jmp    0x7a8
     815:	85 ff                	test   %di,%di
     817:	75 0c                	jne    0x825
     819:	31 c0                	xor    %ax,%ax
     81b:	eb 08                	jmp    0x825
     81d:	b8 01 00             	mov    $0x1,%ax
     820:	eb 03                	jmp    0x825
     822:	b8 02 00             	mov    $0x2,%ax
     825:	3d ff ff             	cmp    $0xffff,%ax
     828:	74 21                	je     0x84b
     82a:	bb d3 03             	mov    $0x3d3,%bx
     82d:	99                   	cwtd
     82e:	8e db                	mov    %bx,%ds
     830:	a3 95 00             	mov    %ax,0x95
     833:	89 16 97 00          	mov    %dx,0x97
     837:	a3 5d 03             	mov    %ax,0x35d
     83a:	89 16 5f 03          	mov    %dx,0x35f
     83e:	83 7e fc ff          	cmpw   $0xffff,-0x4(%bp)
     842:	75 07                	jne    0x84b
     844:	a3 25 06             	mov    %ax,0x625
     847:	89 16 27 06          	mov    %dx,0x627
     84b:	83 7e fc ff          	cmpw   $0xffff,-0x4(%bp)
     84f:	74 3c                	je     0x88d
     851:	b8 ff ff             	mov    $0xffff,%ax
     854:	83 ff 07             	cmp    $0x7,%di
     857:	77 22                	ja     0x87b
     859:	01 ff                	add    %di,%di
     85b:	2e ff a5 a4 01       	jmp    *%cs:0x1a4(%di)
     860:	31 c0                	xor    %ax,%ax
     862:	eb 17                	jmp    0x87b
     864:	b8 01 00             	mov    $0x1,%ax
     867:	eb 12                	jmp    0x87b
     869:	b8 02 00             	mov    $0x2,%ax
     86c:	eb 0d                	jmp    0x87b
     86e:	b8 03 00             	mov    $0x3,%ax
     871:	eb 08                	jmp    0x87b
     873:	b8 04 00             	mov    $0x4,%ax
     876:	eb 03                	jmp    0x87b
     878:	b8 05 00             	mov    $0x5,%ax
     87b:	3d ff ff             	cmp    $0xffff,%ax
     87e:	74 0d                	je     0x88d
     880:	bb d3 03             	mov    $0x3d3,%bx
     883:	99                   	cwtd
     884:	8e db                	mov    %bx,%ds
     886:	a3 25 06             	mov    %ax,0x625
     889:	89 16 27 06          	mov    %dx,0x627
     88d:	83 7e fe ff          	cmpw   $0xffff,-0x2(%bp)
     891:	74 55                	je     0x8e8
     893:	8b 5e fe             	mov    -0x2(%bp),%bx
     896:	83 eb 02             	sub    $0x2,%bx
     899:	b8 ff ff             	mov    $0xffff,%ax
     89c:	83 fb 0d             	cmp    $0xd,%bx
     89f:	77 27                	ja     0x8c8
     8a1:	01 db                	add    %bx,%bx
     8a3:	2e ff a7 b4 01       	jmp    *%cs:0x1b4(%bx)
     8a8:	31 c0                	xor    %ax,%ax
     8aa:	eb 1c                	jmp    0x8c8
     8ac:	b8 01 00             	mov    $0x1,%ax
     8af:	eb 17                	jmp    0x8c8
     8b1:	b8 02 00             	mov    $0x2,%ax
     8b4:	eb 12                	jmp    0x8c8
     8b6:	b8 03 00             	mov    $0x3,%ax
     8b9:	eb 0d                	jmp    0x8c8
     8bb:	b8 04 00             	mov    $0x4,%ax
     8be:	eb 08                	jmp    0x8c8
     8c0:	b8 05 00             	mov    $0x5,%ax
     8c3:	eb 03                	jmp    0x8c8
     8c5:	b8 06 00             	mov    $0x6,%ax
     8c8:	3d ff ff             	cmp    $0xffff,%ax
     8cb:	74 1b                	je     0x8e8
     8cd:	bb d3 03             	mov    $0x3d3,%bx
     8d0:	99                   	cwtd
     8d1:	8e db                	mov    %bx,%ds
     8d3:	a3 1f 01             	mov    %ax,0x11f
     8d6:	89 16 21 01          	mov    %dx,0x121
     8da:	a3 e7 03             	mov    %ax,0x3e7
     8dd:	89 16 e9 03          	mov    %dx,0x3e9
     8e1:	a3 af 06             	mov    %ax,0x6af
     8e4:	89 16 b1 06          	mov    %dx,0x6b1
     8e8:	c7 46 f8 01 00       	movw   $0x1,-0x8(%bp)
     8ed:	8b 46 f8             	mov    -0x8(%bp),%ax
     8f0:	c9                   	leave
     8f1:	1f                   	pop    %ds
     8f2:	5f                   	pop    %di
     8f3:	5e                   	pop    %si
     8f4:	cb                   	lret
     8f5:	71 75                	jno    0x96c
     8f7:	65 72 79             	gs jb  0x973
     8fa:	44                   	inc    %sp
     8fb:	65 76 69             	gs jbe 0x967
     8fe:	63 65 43             	arpl   %sp,0x43(%di)
     901:	6f                   	outsw  %ds:(%si),(%dx)
     902:	75 6e                	jne    0x972
     904:	74 10                	je     0x916
     906:	b8 03 00             	mov    $0x3,%ax
     909:	cb                   	lret
     90a:	71 75                	jno    0x981
     90c:	65 72 79             	gs jb  0x988
     90f:	44                   	inc    %sp
     910:	65 76 69             	gs jbe 0x97c
     913:	63 65 0b             	arpl   %sp,0xb(%di)
     916:	56                   	push   %si
     917:	57                   	push   %di
     918:	1e                   	push   %ds
     919:	55                   	push   %bp
     91a:	89 e5                	mov    %sp,%bp
     91c:	8b 7e 0c             	mov    0xc(%bp),%di
     91f:	8b 56 0e             	mov    0xe(%bp),%dx
     922:	8b 46 10             	mov    0x10(%bp),%ax
     925:	3d 01 00             	cmp    $0x1,%ax
     928:	72 09                	jb     0x933
     92a:	76 1f                	jbe    0x94b
     92c:	3d 02 00             	cmp    $0x2,%ax
     92f:	74 2e                	je     0x95f
     931:	eb 40                	jmp    0x973
     933:	85 c0                	test   %ax,%ax
     935:	75 3c                	jne    0x973
     937:	b9 c6 02             	mov    $0x2c6,%cx
     93a:	be 04 00             	mov    $0x4,%si
     93d:	b8 d3 03             	mov    $0x3d3,%ax
     940:	8e c2                	mov    %dx,%es
     942:	8e d8                	mov    %ax,%ds
     944:	fc                   	cld
     945:	f3 a4                	rep movsb %ds:(%si),%es:(%di)
     947:	31 c0                	xor    %ax,%ax
     949:	eb 2b                	jmp    0x976
     94b:	b9 c6 02             	mov    $0x2c6,%cx
     94e:	be cc 02             	mov    $0x2cc,%si
     951:	b8 d3 03             	mov    $0x3d3,%ax
     954:	8e c2                	mov    %dx,%es
     956:	8e d8                	mov    %ax,%ds
     958:	fc                   	cld
     959:	f3 a4                	rep movsb %ds:(%si),%es:(%di)
     95b:	31 c0                	xor    %ax,%ax
     95d:	eb 17                	jmp    0x976
     95f:	b9 c6 02             	mov    $0x2c6,%cx
     962:	be 94 05             	mov    $0x594,%si
     965:	b8 d3 03             	mov    $0x3d3,%ax
     968:	8e c2                	mov    %dx,%es
     96a:	8e d8                	mov    %ax,%ds
     96c:	fc                   	cld
     96d:	f3 a4                	rep movsb %ds:(%si),%es:(%di)
     96f:	31 c0                	xor    %ax,%ax
     971:	eb 03                	jmp    0x976
     973:	b8 ff ff             	mov    $0xffff,%ax
     976:	5d                   	pop    %bp
     977:	1f                   	pop    %ds
     978:	5f                   	pop    %di
     979:	5e                   	pop    %si
     97a:	ca 06 00             	lret   $0x6
     97d:	fc                   	cld
     97e:	63 6d 64             	arpl   %bp,0x64(%di)
     981:	53                   	push   %bx
     982:	42                   	inc    %dx
     983:	05 53 51             	add    $0x5153,%ax
     986:	52                   	push   %dx
     987:	1e                   	push   %ds
     988:	89 c1                	mov    %ax,%cx
     98a:	bb e8 fd             	mov    $0xfde8,%bx
     98d:	b8 d3 03             	mov    $0x3d3,%ax
     990:	8e d8                	mov    %ax,%ds
     992:	8b 16 f2 31          	mov    0x31f2,%dx
     996:	29 c0                	sub    %ax,%ax
     998:	ec                   	in     (%dx),%al
     999:	a8 80                	test   $0x80,%al
     99b:	74 03                	je     0x9a0
     99d:	4b                   	dec    %bx
     99e:	75 ed                	jne    0x98d
     9a0:	b8 d3 03             	mov    $0x3d3,%ax
     9a3:	8e d8                	mov    %ax,%ds
     9a5:	88 c8                	mov    %cl,%al
     9a7:	8b 16 f2 31          	mov    0x31f2,%dx
     9ab:	ee                   	out    %al,(%dx)
     9ac:	1f                   	pop    %ds
     9ad:	5a                   	pop    %dx
     9ae:	59                   	pop    %cx
     9af:	5b                   	pop    %bx
     9b0:	c3                   	ret
     9b1:	72 65                	jb     0xa18
     9b3:	61                   	popa
     9b4:	64 53                	fs push %bx
     9b6:	42                   	inc    %dx
     9b7:	06                   	push   %es
     9b8:	53                   	push   %bx
     9b9:	52                   	push   %dx
     9ba:	1e                   	push   %ds
     9bb:	bb e8 03             	mov    $0x3e8,%bx
     9be:	b8 d3 03             	mov    $0x3d3,%ax
     9c1:	8e d8                	mov    %ax,%ds
     9c3:	8b 16 f4 31          	mov    0x31f4,%dx
     9c7:	83 c2 0e             	add    $0xe,%dx
     9ca:	29 c0                	sub    %ax,%ax
     9cc:	ec                   	in     (%dx),%al
     9cd:	a8 80                	test   $0x80,%al
     9cf:	75 03                	jne    0x9d4
     9d1:	4b                   	dec    %bx
     9d2:	75 ea                	jne    0x9be
     9d4:	b8 d3 03             	mov    $0x3d3,%ax
     9d7:	8e d8                	mov    %ax,%ds
     9d9:	8b 16 f4 31          	mov    0x31f4,%dx
     9dd:	83 c2 0a             	add    $0xa,%dx
     9e0:	29 c0                	sub    %ax,%ax
     9e2:	ec                   	in     (%dx),%al
     9e3:	1f                   	pop    %ds
     9e4:	5a                   	pop    %dx
     9e5:	5b                   	pop    %bx
     9e6:	c3                   	ret
     9e7:	72 65                	jb     0xa4e
     9e9:	73 65                	jae    0xa50
     9eb:	74 44                	je     0xa31
     9ed:	53                   	push   %bx
     9ee:	50                   	push   %ax
     9ef:	08 52 1e             	or     %dl,0x1e(%bp,%si)
     9f2:	ba d3 03             	mov    $0x3d3,%dx
     9f5:	8e da                	mov    %dx,%ds
     9f7:	8b 16 f4 31          	mov    0x31f4,%dx
     9fb:	b0 01                	mov    $0x1,%al
     9fd:	83 c2 06             	add    $0x6,%dx
     a00:	ee                   	out    %al,(%dx)
     a01:	8b 16 f4 31          	mov    0x31f4,%dx
     a05:	29 c0                	sub    %ax,%ax
     a07:	ec                   	in     (%dx),%al
     a08:	8b 16 f4 31          	mov    0x31f4,%dx
     a0c:	29 c0                	sub    %ax,%ax
     a0e:	ec                   	in     (%dx),%al
     a0f:	8b 16 f4 31          	mov    0x31f4,%dx
     a13:	29 c0                	sub    %ax,%ax
     a15:	ec                   	in     (%dx),%al
     a16:	8b 16 f4 31          	mov    0x31f4,%dx
     a1a:	29 c0                	sub    %ax,%ax
     a1c:	ec                   	in     (%dx),%al
     a1d:	8b 16 f4 31          	mov    0x31f4,%dx
     a21:	29 c0                	sub    %ax,%ax
     a23:	ec                   	in     (%dx),%al
     a24:	8b 16 f4 31          	mov    0x31f4,%dx
     a28:	29 c0                	sub    %ax,%ax
     a2a:	ec                   	in     (%dx),%al
     a2b:	8b 16 f4 31          	mov    0x31f4,%dx
     a2f:	29 c0                	sub    %ax,%ax
     a31:	ec                   	in     (%dx),%al
     a32:	8b 16 f4 31          	mov    0x31f4,%dx
     a36:	30 c0                	xor    %al,%al
     a38:	83 c2 06             	add    $0x6,%dx
     a3b:	ee                   	out    %al,(%dx)
     a3c:	1f                   	pop    %ds
     a3d:	5a                   	pop    %dx
     a3e:	c3                   	ret
     a3f:	64 73 70             	fs jae 0xab2
     a42:	56                   	push   %si
     a43:	65 72 73             	gs jb  0xab9
     a46:	69 6f 6e 0a 53       	imul   $0x530a,0x6e(%bx),%bp
     a4b:	51                   	push   %cx
     a4c:	52                   	push   %dx
     a4d:	1e                   	push   %ds
     a4e:	e8 9f ff             	call   0x9f0
     a51:	bb e8 03             	mov    $0x3e8,%bx
     a54:	b8 d3 03             	mov    $0x3d3,%ax
     a57:	8e d8                	mov    %ax,%ds
     a59:	8b 16 f4 31          	mov    0x31f4,%dx
     a5d:	83 c2 0e             	add    $0xe,%dx
     a60:	29 c0                	sub    %ax,%ax
     a62:	ec                   	in     (%dx),%al
     a63:	a8 80                	test   $0x80,%al
     a65:	75 03                	jne    0xa6a
     a67:	4b                   	dec    %bx
     a68:	75 ea                	jne    0xa54
     a6a:	b8 d3 03             	mov    $0x3d3,%ax
     a6d:	8e d8                	mov    %ax,%ds
     a6f:	8b 16 f4 31          	mov    0x31f4,%dx
     a73:	b9 e1 00             	mov    $0xe1,%cx
     a76:	83 c2 0a             	add    $0xa,%dx
     a79:	bb e8 fd             	mov    $0xfde8,%bx
     a7c:	29 c0                	sub    %ax,%ax
     a7e:	ec                   	in     (%dx),%al
     a7f:	b8 d3 03             	mov    $0x3d3,%ax
     a82:	8e d8                	mov    %ax,%ds
     a84:	8b 16 f2 31          	mov    0x31f2,%dx
     a88:	29 c0                	sub    %ax,%ax
     a8a:	ec                   	in     (%dx),%al
     a8b:	a8 80                	test   $0x80,%al
     a8d:	74 03                	je     0xa92
     a8f:	4b                   	dec    %bx
     a90:	75 ed                	jne    0xa7f
     a92:	b8 d3 03             	mov    $0x3d3,%ax
     a95:	8e d8                	mov    %ax,%ds
     a97:	88 c8                	mov    %cl,%al
     a99:	8b 16 f2 31          	mov    0x31f2,%dx
     a9d:	bb e8 03             	mov    $0x3e8,%bx
     aa0:	ee                   	out    %al,(%dx)
     aa1:	b8 d3 03             	mov    $0x3d3,%ax
     aa4:	8e d8                	mov    %ax,%ds
     aa6:	8b 16 f4 31          	mov    0x31f4,%dx
     aaa:	83 c2 0e             	add    $0xe,%dx
     aad:	29 c0                	sub    %ax,%ax
     aaf:	ec                   	in     (%dx),%al
     ab0:	a8 80                	test   $0x80,%al
     ab2:	75 03                	jne    0xab7
     ab4:	4b                   	dec    %bx
     ab5:	75 ea                	jne    0xaa1
     ab7:	b8 d3 03             	mov    $0x3d3,%ax
     aba:	8e d8                	mov    %ax,%ds
     abc:	8b 16 f4 31          	mov    0x31f4,%dx
     ac0:	83 c2 0a             	add    $0xa,%dx
     ac3:	29 c0                	sub    %ax,%ax
     ac5:	ec                   	in     (%dx),%al
     ac6:	88 c5                	mov    %al,%ch
     ac8:	bb e8 03             	mov    $0x3e8,%bx
     acb:	30 c9                	xor    %cl,%cl
     acd:	b8 d3 03             	mov    $0x3d3,%ax
     ad0:	8e d8                	mov    %ax,%ds
     ad2:	8b 16 f4 31          	mov    0x31f4,%dx
     ad6:	83 c2 0e             	add    $0xe,%dx
     ad9:	29 c0                	sub    %ax,%ax
     adb:	ec                   	in     (%dx),%al
     adc:	a8 80                	test   $0x80,%al
     ade:	75 03                	jne    0xae3
     ae0:	4b                   	dec    %bx
     ae1:	75 ea                	jne    0xacd
     ae3:	b8 d3 03             	mov    $0x3d3,%ax
     ae6:	8e d8                	mov    %ax,%ds
     ae8:	8b 16 f4 31          	mov    0x31f4,%dx
     aec:	83 c2 0a             	add    $0xa,%dx
     aef:	29 c0                	sub    %ax,%ax
     af1:	ec                   	in     (%dx),%al
     af2:	09 c8                	or     %cx,%ax
     af4:	1f                   	pop    %ds
     af5:	5a                   	pop    %dx
     af6:	59                   	pop    %cx
     af7:	5b                   	pop    %bx
     af8:	c3                   	ret
     af9:	49                   	dec    %cx
     afa:	52                   	push   %dx
     afb:	51                   	push   %cx
     afc:	48                   	dec    %ax
     afd:	61                   	popa
     afe:	6e                   	outsb  %ds:(%si),(%dx)
     aff:	64 6c                	fs insb (%dx),%es:(%di)
     b01:	65 72 0a             	gs jb  0xb0e
     b04:	60                   	pusha
     b05:	1e                   	push   %ds
     b06:	06                   	push   %es
     b07:	50                   	push   %ax
     b08:	50                   	push   %ax
     b09:	89 e5                	mov    %sp,%bp
     b0b:	fc                   	cld
     b0c:	b8 d3 03             	mov    $0x3d3,%ax
     b0f:	8e d8                	mov    %ax,%ds
     b11:	b8 d3 03             	mov    $0x3d3,%ax
     b14:	8e d8                	mov    %ax,%ds
     b16:	8b 16 f4 31          	mov    0x31f4,%dx
     b1a:	83 c2 0e             	add    $0xe,%dx
     b1d:	29 c0                	sub    %ax,%ax
     b1f:	ec                   	in     (%dx),%al
     b20:	b0 20                	mov    $0x20,%al
     b22:	ba 20 00             	mov    $0x20,%dx
     b25:	ee                   	out    %al,(%dx)
     b26:	83 3e f0 31 07       	cmpw   $0x7,0x31f0
     b2b:	7e 06                	jle    0xb33
     b2d:	b0 20                	mov    $0x20,%al
     b2f:	ba a0 00             	mov    $0xa0,%dx
     b32:	ee                   	out    %al,(%dx)
     b33:	b8 d3 03             	mov    $0x3d3,%ax
     b36:	8e d8                	mov    %ax,%ds
     b38:	83 3e f8 31 01       	cmpw   $0x1,0x31f8
     b3d:	74 03                	je     0xb42
     b3f:	e9 77 00             	jmp    0xbb9
     b42:	81 3e fa 31 00 02    	cmpw   $0x200,0x31fa
     b48:	7d f5                	jge    0xb3f
     b4a:	b9 14 00             	mov    $0x14,%cx
     b4d:	bb e8 fd             	mov    $0xfde8,%bx
     b50:	b8 d3 03             	mov    $0x3d3,%ax
     b53:	8e d8                	mov    %ax,%ds
     b55:	8b 16 f2 31          	mov    0x31f2,%dx
     b59:	29 c0                	sub    %ax,%ax
     b5b:	ec                   	in     (%dx),%al
     b5c:	a8 80                	test   $0x80,%al
     b5e:	74 03                	je     0xb63
     b60:	4b                   	dec    %bx
     b61:	75 ed                	jne    0xb50
     b63:	b8 d3 03             	mov    $0x3d3,%ax
     b66:	8e d8                	mov    %ax,%ds
     b68:	88 c8                	mov    %cl,%al
     b6a:	8b 16 f2 31          	mov    0x31f2,%dx
     b6e:	bb e8 fd             	mov    $0xfde8,%bx
     b71:	ee                   	out    %al,(%dx)
     b72:	b9 ff 00             	mov    $0xff,%cx
     b75:	b8 d3 03             	mov    $0x3d3,%ax
     b78:	8e d8                	mov    %ax,%ds
     b7a:	8b 16 f2 31          	mov    0x31f2,%dx
     b7e:	29 c0                	sub    %ax,%ax
     b80:	ec                   	in     (%dx),%al
     b81:	a8 80                	test   $0x80,%al
     b83:	74 03                	je     0xb88
     b85:	4b                   	dec    %bx
     b86:	75 ed                	jne    0xb75
     b88:	b8 d3 03             	mov    $0x3d3,%ax
     b8b:	8e d8                	mov    %ax,%ds
     b8d:	88 c8                	mov    %cl,%al
     b8f:	8b 16 f2 31          	mov    0x31f2,%dx
     b93:	bb e8 fd             	mov    $0xfde8,%bx
     b96:	ee                   	out    %al,(%dx)
     b97:	b9 ff 00             	mov    $0xff,%cx
     b9a:	b8 d3 03             	mov    $0x3d3,%ax
     b9d:	8e d8                	mov    %ax,%ds
     b9f:	8b 16 f2 31          	mov    0x31f2,%dx
     ba3:	29 c0                	sub    %ax,%ax
     ba5:	ec                   	in     (%dx),%al
     ba6:	a8 80                	test   $0x80,%al
     ba8:	74 03                	je     0xbad
     baa:	4b                   	dec    %bx
     bab:	75 ed                	jne    0xb9a
     bad:	b8 d3 03             	mov    $0x3d3,%ax
     bb0:	8e d8                	mov    %ax,%ds
     bb2:	88 c8                	mov    %cl,%al
     bb4:	8b 16 f2 31          	mov    0x31f2,%dx
     bb8:	ee                   	out    %al,(%dx)
     bb9:	58                   	pop    %ax
     bba:	58                   	pop    %ax
     bbb:	07                   	pop    %es
     bbc:	1f                   	pop    %ds
     bbd:	61                   	popa
     bbe:	cf                   	iret
     bbf:	53                   	push   %bx
     bc0:	42                   	inc    %dx
     bc1:	49                   	dec    %cx
     bc2:	52                   	push   %dx
     bc3:	51                   	push   %cx
     bc4:	48                   	dec    %ax
     bc5:	61                   	popa
     bc6:	6e                   	outsb  %ds:(%si),(%dx)
     bc7:	64 6c                	fs insb (%dx),%es:(%di)
     bc9:	65 72 0c             	gs jb  0xbd8
     bcc:	60                   	pusha
     bcd:	1e                   	push   %ds
     bce:	06                   	push   %es
     bcf:	50                   	push   %ax
     bd0:	50                   	push   %ax
     bd1:	89 e5                	mov    %sp,%bp
     bd3:	fc                   	cld
     bd4:	b8 d3 03             	mov    $0x3d3,%ax
     bd7:	8e d8                	mov    %ax,%ds
     bd9:	b8 d3 03             	mov    $0x3d3,%ax
     bdc:	8e d8                	mov    %ax,%ds
     bde:	8b 16 f4 31          	mov    0x31f4,%dx
     be2:	83 c2 0e             	add    $0xe,%dx
     be5:	29 c0                	sub    %ax,%ax
     be7:	ec                   	in     (%dx),%al
     be8:	b0 20                	mov    $0x20,%al
     bea:	ba 20 00             	mov    $0x20,%dx
     bed:	ee                   	out    %al,(%dx)
     bee:	83 3e f0 31 07       	cmpw   $0x7,0x31f0
     bf3:	7e 06                	jle    0xbfb
     bf5:	b0 20                	mov    $0x20,%al
     bf7:	ba a0 00             	mov    $0xa0,%dx
     bfa:	ee                   	out    %al,(%dx)
     bfb:	b8 d3 03             	mov    $0x3d3,%ax
     bfe:	8e d8                	mov    %ax,%ds
     c00:	81 3e fa 31 00 02    	cmpw   $0x200,0x31fa
     c06:	7d 66                	jge    0xc6e
     c08:	b9 14 00             	mov    $0x14,%cx
     c0b:	bb e8 fd             	mov    $0xfde8,%bx
     c0e:	b8 d3 03             	mov    $0x3d3,%ax
     c11:	8e d8                	mov    %ax,%ds
     c13:	8b 16 f2 31          	mov    0x31f2,%dx
     c17:	29 c0                	sub    %ax,%ax
     c19:	ec                   	in     (%dx),%al
     c1a:	a8 80                	test   $0x80,%al
     c1c:	74 03                	je     0xc21
     c1e:	4b                   	dec    %bx
     c1f:	75 ed                	jne    0xc0e
     c21:	b8 d3 03             	mov    $0x3d3,%ax
     c24:	8e d8                	mov    %ax,%ds
     c26:	88 c8                	mov    %cl,%al
     c28:	8b 16 f2 31          	mov    0x31f2,%dx
     c2c:	bb e8 fd             	mov    $0xfde8,%bx
     c2f:	ee                   	out    %al,(%dx)
     c30:	b9 ff 00             	mov    $0xff,%cx
     c33:	b8 d3 03             	mov    $0x3d3,%ax
     c36:	8e d8                	mov    %ax,%ds
     c38:	8b 16 f2 31          	mov    0x31f2,%dx
     c3c:	29 c0                	sub    %ax,%ax
     c3e:	ec                   	in     (%dx),%al
     c3f:	a8 80                	test   $0x80,%al
     c41:	74 03                	je     0xc46
     c43:	4b                   	dec    %bx
     c44:	75 ed                	jne    0xc33
     c46:	b8 d3 03             	mov    $0x3d3,%ax
     c49:	8e d8                	mov    %ax,%ds
     c4b:	88 c8                	mov    %cl,%al
     c4d:	8b 16 f2 31          	mov    0x31f2,%dx
     c51:	bb e8 fd             	mov    $0xfde8,%bx
     c54:	ee                   	out    %al,(%dx)
     c55:	b9 ff 00             	mov    $0xff,%cx
     c58:	b8 d3 03             	mov    $0x3d3,%ax
     c5b:	8e d8                	mov    %ax,%ds
     c5d:	8b 16 f2 31          	mov    0x31f2,%dx
     c61:	29 c0                	sub    %ax,%ax
     c63:	ec                   	in     (%dx),%al
     c64:	a8 80                	test   $0x80,%al
     c66:	74 03                	je     0xc6b
     c68:	4b                   	dec    %bx
     c69:	75 ed                	jne    0xc58
     c6b:	e9 18 01             	jmp    0xd86
     c6e:	74 03                	je     0xc73
     c70:	e9 8b 00             	jmp    0xcfe
     c73:	b9 48 00             	mov    $0x48,%cx
     c76:	bb e8 fd             	mov    $0xfde8,%bx
     c79:	b8 d3 03             	mov    $0x3d3,%ax
     c7c:	8e d8                	mov    %ax,%ds
     c7e:	8b 16 f2 31          	mov    0x31f2,%dx
     c82:	29 c0                	sub    %ax,%ax
     c84:	ec                   	in     (%dx),%al
     c85:	a8 80                	test   $0x80,%al
     c87:	74 03                	je     0xc8c
     c89:	4b                   	dec    %bx
     c8a:	75 ed                	jne    0xc79
     c8c:	b8 d3 03             	mov    $0x3d3,%ax
     c8f:	8e d8                	mov    %ax,%ds
     c91:	88 c8                	mov    %cl,%al
     c93:	8b 16 f2 31          	mov    0x31f2,%dx
     c97:	bb e8 fd             	mov    $0xfde8,%bx
     c9a:	ee                   	out    %al,(%dx)
     c9b:	b9 ff 00             	mov    $0xff,%cx
     c9e:	b8 d3 03             	mov    $0x3d3,%ax
     ca1:	8e d8                	mov    %ax,%ds
     ca3:	8b 16 f2 31          	mov    0x31f2,%dx
     ca7:	29 c0                	sub    %ax,%ax
     ca9:	ec                   	in     (%dx),%al
     caa:	a8 80                	test   $0x80,%al
     cac:	74 03                	je     0xcb1
     cae:	4b                   	dec    %bx
     caf:	75 ed                	jne    0xc9e
     cb1:	b8 d3 03             	mov    $0x3d3,%ax
     cb4:	8e d8                	mov    %ax,%ds
     cb6:	88 c8                	mov    %cl,%al
     cb8:	8b 16 f2 31          	mov    0x31f2,%dx
     cbc:	bb e8 fd             	mov    $0xfde8,%bx
     cbf:	ee                   	out    %al,(%dx)
     cc0:	b9 ff 00             	mov    $0xff,%cx
     cc3:	b8 d3 03             	mov    $0x3d3,%ax
     cc6:	8e d8                	mov    %ax,%ds
     cc8:	8b 16 f2 31          	mov    0x31f2,%dx
     ccc:	29 c0                	sub    %ax,%ax
     cce:	ec                   	in     (%dx),%al
     ccf:	a8 80                	test   $0x80,%al
     cd1:	74 03                	je     0xcd6
     cd3:	4b                   	dec    %bx
     cd4:	75 ed                	jne    0xcc3
     cd6:	b8 d3 03             	mov    $0x3d3,%ax
     cd9:	8e d8                	mov    %ax,%ds
     cdb:	88 c8                	mov    %cl,%al
     cdd:	8b 16 f2 31          	mov    0x31f2,%dx
     ce1:	bb e8 fd             	mov    $0xfde8,%bx
     ce4:	ee                   	out    %al,(%dx)
     ce5:	b9 1c 00             	mov    $0x1c,%cx
     ce8:	b8 d3 03             	mov    $0x3d3,%ax
     ceb:	8e d8                	mov    %ax,%ds
     ced:	8b 16 f2 31          	mov    0x31f2,%dx
     cf1:	29 c0                	sub    %ax,%ax
     cf3:	ec                   	in     (%dx),%al
     cf4:	a8 80                	test   $0x80,%al
     cf6:	74 03                	je     0xcfb
     cf8:	4b                   	dec    %bx
     cf9:	75 ed                	jne    0xce8
     cfb:	e9 88 00             	jmp    0xd86
     cfe:	b9 48 00             	mov    $0x48,%cx
     d01:	bb e8 fd             	mov    $0xfde8,%bx
     d04:	b8 d3 03             	mov    $0x3d3,%ax
     d07:	8e d8                	mov    %ax,%ds
     d09:	8b 16 f2 31          	mov    0x31f2,%dx
     d0d:	29 c0                	sub    %ax,%ax
     d0f:	ec                   	in     (%dx),%al
     d10:	a8 80                	test   $0x80,%al
     d12:	74 03                	je     0xd17
     d14:	4b                   	dec    %bx
     d15:	75 ed                	jne    0xd04
     d17:	b8 d3 03             	mov    $0x3d3,%ax
     d1a:	8e d8                	mov    %ax,%ds
     d1c:	88 c8                	mov    %cl,%al
     d1e:	8b 16 f2 31          	mov    0x31f2,%dx
     d22:	bb e8 fd             	mov    $0xfde8,%bx
     d25:	ee                   	out    %al,(%dx)
     d26:	b9 ff 00             	mov    $0xff,%cx
     d29:	b8 d3 03             	mov    $0x3d3,%ax
     d2c:	8e d8                	mov    %ax,%ds
     d2e:	8b 16 f2 31          	mov    0x31f2,%dx
     d32:	29 c0                	sub    %ax,%ax
     d34:	ec                   	in     (%dx),%al
     d35:	a8 80                	test   $0x80,%al
     d37:	74 03                	je     0xd3c
     d39:	4b                   	dec    %bx
     d3a:	75 ed                	jne    0xd29
     d3c:	b8 d3 03             	mov    $0x3d3,%ax
     d3f:	8e d8                	mov    %ax,%ds
     d41:	88 c8                	mov    %cl,%al
     d43:	8b 16 f2 31          	mov    0x31f2,%dx
     d47:	bb e8 fd             	mov    $0xfde8,%bx
     d4a:	ee                   	out    %al,(%dx)
     d4b:	b9 ff 00             	mov    $0xff,%cx
     d4e:	b8 d3 03             	mov    $0x3d3,%ax
     d51:	8e d8                	mov    %ax,%ds
     d53:	8b 16 f2 31          	mov    0x31f2,%dx
     d57:	29 c0                	sub    %ax,%ax
     d59:	ec                   	in     (%dx),%al
     d5a:	a8 80                	test   $0x80,%al
     d5c:	74 03                	je     0xd61
     d5e:	4b                   	dec    %bx
     d5f:	75 ed                	jne    0xd4e
     d61:	b8 d3 03             	mov    $0x3d3,%ax
     d64:	8e d8                	mov    %ax,%ds
     d66:	88 c8                	mov    %cl,%al
     d68:	8b 16 f2 31          	mov    0x31f2,%dx
     d6c:	bb e8 fd             	mov    $0xfde8,%bx
     d6f:	ee                   	out    %al,(%dx)
     d70:	b9 90 00             	mov    $0x90,%cx
     d73:	b8 d3 03             	mov    $0x3d3,%ax
     d76:	8e d8                	mov    %ax,%ds
     d78:	8b 16 f2 31          	mov    0x31f2,%dx
     d7c:	29 c0                	sub    %ax,%ax
     d7e:	ec                   	in     (%dx),%al
     d7f:	a8 80                	test   $0x80,%al
     d81:	74 03                	je     0xd86
     d83:	4b                   	dec    %bx
     d84:	75 ed                	jne    0xd73
     d86:	b8 d3 03             	mov    $0x3d3,%ax
     d89:	8e d8                	mov    %ax,%ds
     d8b:	88 c8                	mov    %cl,%al
     d8d:	8b 16 f2 31          	mov    0x31f2,%dx
     d91:	ee                   	out    %al,(%dx)
     d92:	58                   	pop    %ax
     d93:	58                   	pop    %ax
     d94:	07                   	pop    %es
     d95:	1f                   	pop    %ds
     d96:	61                   	popa
     d97:	cf                   	iret
     d98:	fc                   	cld
     d99:	53                   	push   %bx
     d9a:	42                   	inc    %dx
     d9b:	31 36 49 52          	xor    %si,0x5249
     d9f:	51                   	push   %cx
     da0:	48                   	dec    %ax
     da1:	61                   	popa
     da2:	6e                   	outsb  %ds:(%si),(%dx)
     da3:	64 6c                	fs insb (%dx),%es:(%di)
     da5:	65 72 0e             	gs jb  0xdb6
     da8:	60                   	pusha
     da9:	1e                   	push   %ds
     daa:	06                   	push   %es
     dab:	50                   	push   %ax
     dac:	50                   	push   %ax
     dad:	89 e5                	mov    %sp,%bp
     daf:	fc                   	cld
     db0:	b8 d3 03             	mov    $0x3d3,%ax
     db3:	8e d8                	mov    %ax,%ds
     db5:	ba d3 03             	mov    $0x3d3,%dx
     db8:	8e da                	mov    %dx,%ds
     dba:	8b 16 f4 31          	mov    0x31f4,%dx
     dbe:	83 c2 0e             	add    $0xe,%dx
     dc1:	29 c0                	sub    %ax,%ax
     dc3:	ec                   	in     (%dx),%al
     dc4:	8b 16 f4 31          	mov    0x31f4,%dx
     dc8:	83 c2 0f             	add    $0xf,%dx
     dcb:	29 c0                	sub    %ax,%ax
     dcd:	ec                   	in     (%dx),%al
     dce:	b0 20                	mov    $0x20,%al
     dd0:	ba 20 00             	mov    $0x20,%dx
     dd3:	ee                   	out    %al,(%dx)
     dd4:	83 3e f0 31 07       	cmpw   $0x7,0x31f0
     dd9:	7e 06                	jle    0xde1
     ddb:	b0 20                	mov    $0x20,%al
     ddd:	ba a0 00             	mov    $0xa0,%dx
     de0:	ee                   	out    %al,(%dx)
     de1:	58                   	pop    %ax
     de2:	58                   	pop    %ax
     de3:	07                   	pop    %es
     de4:	1f                   	pop    %ds
     de5:	61                   	popa
     de6:	cf                   	iret
     de7:	fc                   	cld
     de8:	32 0d                	xor    (%di),%cl
     dea:	3c 0d                	cmp    $0xd,%al
     dec:	43                   	inc    %bx
     ded:	0d 4d 0d             	or     $0xd4d,%ax
     df0:	7f 0e                	jg     0xe00
     df2:	65 0e                	gs push %cs
     df4:	6c                   	insb   (%dx),%es:(%di)
     df5:	0e                   	push   %cs
     df6:	73 0e                	jae    0xe06
     df8:	7a 0e                	jp     0xe08
     dfa:	fc                   	cld
     dfb:	69 6e 69 74 44       	imul   $0x4474,0x69(%bp),%bp
     e00:	65 76 69             	gs jbe 0xe6c
     e03:	63 65 0a             	arpl   %sp,0xa(%di)
     e06:	56                   	push   %si
     e07:	57                   	push   %di
     e08:	1e                   	push   %ds
     e09:	55                   	push   %bp
     e0a:	89 e5                	mov    %sp,%bp
     e0c:	83 ec 12             	sub    $0x12,%sp
     e0f:	c5 76 0c             	lds    0xc(%bp),%si
     e12:	c7 46 fe 00 00       	movw   $0x0,-0x2(%bp)
     e17:	c7 46 f6 01 00       	movw   $0x1,-0xa(%bp)
     e1c:	83 7c 02 00          	cmpw   $0x0,0x2(%si)
     e20:	75 05                	jne    0xe27
     e22:	83 3c 01             	cmpw   $0x1,(%si)
     e25:	74 1c                	je     0xe43
     e27:	83 7c 02 00          	cmpw   $0x0,0x2(%si)
     e2b:	75 05                	jne    0xe32
     e2d:	83 3c 02             	cmpw   $0x2,(%si)
     e30:	74 11                	je     0xe43
     e32:	83 7c 02 00          	cmpw   $0x0,0x2(%si)
     e36:	75 05                	jne    0xe3d
     e38:	83 3c 06             	cmpw   $0x6,(%si)
     e3b:	74 06                	je     0xe43
     e3d:	b8 ff ff             	mov    $0xffff,%ax
     e40:	e9 16 07             	jmp    0x1559
     e43:	b9 5c 00             	mov    $0x5c,%cx
     e46:	b8 d3 03             	mov    $0x3d3,%ax
     e49:	bf 5c 31             	mov    $0x315c,%di
     e4c:	8e c0                	mov    %ax,%es
     e4e:	fc                   	cld
     e4f:	f3 a4                	rep movsb %ds:(%si),%es:(%di)
     e51:	b8 d3 03             	mov    $0x3d3,%ax
     e54:	8e d8                	mov    %ax,%ds
     e56:	a1 5c 31             	mov    0x315c,%ax
     e59:	a3 f8 31             	mov    %ax,0x31f8
     e5c:	a1 64 31             	mov    0x3164,%ax
     e5f:	a3 f4 31             	mov    %ax,0x31f4
     e62:	a1 68 31             	mov    0x3168,%ax
     e65:	a3 fc 31             	mov    %ax,0x31fc
     e68:	a1 70 31             	mov    0x3170,%ax
     e6b:	a3 f0 31             	mov    %ax,0x31f0
     e6e:	a1 f4 31             	mov    0x31f4,%ax
     e71:	05 0c 00             	add    $0xc,%ax
     e74:	a3 f2 31             	mov    %ax,0x31f2
     e77:	e8 76 fb             	call   0x9f0
     e7a:	e8 3b fb             	call   0x9b8
     e7d:	b8 e1 00             	mov    $0xe1,%ax
     e80:	e8 01 fb             	call   0x984
     e83:	e8 32 fb             	call   0x9b8
     e86:	88 c7                	mov    %al,%bh
     e88:	30 db                	xor    %bl,%bl
     e8a:	e8 2b fb             	call   0x9b8
     e8d:	09 c3                	or     %ax,%bx
     e8f:	89 1e fa 31          	mov    %bx,0x31fa
     e93:	83 3e 5e 31 00       	cmpw   $0x0,0x315e
     e98:	75 56                	jne    0xef0
     e9a:	83 3e 5c 31 01       	cmpw   $0x1,0x315c
     e9f:	75 4f                	jne    0xef0
     ea1:	c6 06 c6 31 00       	movb   $0x0,0x31c6
     ea6:	c6 06 c7 31 01       	movb   $0x1,0x31c7
     eab:	c7 06 bc 31 01 00    	movw   $0x1,0x31bc
     eb1:	81 fb 01 02          	cmp    $0x201,%bx
     eb5:	7d 3c                	jge    0xef3
     eb7:	8b 16 a2 31          	mov    0x31a2,%dx
     ebb:	a1 a0 31             	mov    0x31a0,%ax
     ebe:	85 d2                	test   %dx,%dx
     ec0:	75 05                	jne    0xec7
     ec2:	3d 01 00             	cmp    $0x1,%ax
     ec5:	72 14                	jb     0xedb
     ec7:	85 d2                	test   %dx,%dx
     ec9:	75 05                	jne    0xed0
     ecb:	3d 01 00             	cmp    $0x1,%ax
     ece:	76 55                	jbe    0xf25
     ed0:	85 d2                	test   %dx,%dx
     ed2:	75 4f                	jne    0xf23
     ed4:	3d 02 00             	cmp    $0x2,%ax
     ed7:	74 10                	je     0xee9
     ed9:	eb 5d                	jmp    0xf38
     edb:	09 d0                	or     %dx,%ax
     edd:	75 59                	jne    0xf38
     edf:	c7 46 ee 1c 53       	movw   $0x531c,-0x12(%bp)
     ee4:	89 46 f0             	mov    %ax,-0x10(%bp)
     ee7:	eb 4f                	jmp    0xf38
     ee9:	c7 46 ee 67 2b       	movw   $0x2b67,-0x12(%bp)
     eee:	eb 43                	jmp    0xf33
     ef0:	e9 3f 01             	jmp    0x1032
     ef3:	8b 16 a2 31          	mov    0x31a2,%dx
     ef7:	a1 a0 31             	mov    0x31a0,%ax
     efa:	85 d2                	test   %dx,%dx
     efc:	75 05                	jne    0xf03
     efe:	3d 01 00             	cmp    $0x1,%ax
     f01:	72 14                	jb     0xf17
     f03:	85 d2                	test   %dx,%dx
     f05:	75 05                	jne    0xf0c
     f07:	3d 01 00             	cmp    $0x1,%ax
     f0a:	76 1b                	jbe    0xf27
     f0c:	85 d2                	test   %dx,%dx
     f0e:	75 28                	jne    0xf38
     f10:	3d 02 00             	cmp    $0x2,%ax
     f13:	74 19                	je     0xf2e
     f15:	eb 21                	jmp    0xf38
     f17:	09 d0                	or     %dx,%ax
     f19:	75 1d                	jne    0xf38
     f1b:	c7 46 ee 02 7e       	movw   $0x7e02,-0x12(%bp)
     f20:	89 46 f0             	mov    %ax,-0x10(%bp)
     f23:	eb 13                	jmp    0xf38
     f25:	eb 07                	jmp    0xf2e
     f27:	c7 46 ee 1c 53       	movw   $0x531c,-0x12(%bp)
     f2c:	eb 05                	jmp    0xf33
     f2e:	c7 46 ee 01 3f       	movw   $0x3f01,-0x12(%bp)
     f33:	c7 46 f0 00 00       	movw   $0x0,-0x10(%bp)
     f38:	b8 40 42             	mov    $0x4240,%ax
     f3b:	ba 0f 00             	mov    $0xf,%dx
     f3e:	8b 5e ee             	mov    -0x12(%bp),%bx
     f41:	8b 4e f0             	mov    -0x10(%bp),%cx
     f44:	be 00 01             	mov    $0x100,%si
     f47:	0e                   	push   %cs
     f48:	3e e8 04 32          	ds call 0x4150
     f4c:	29 c6                	sub    %ax,%si
     f4e:	b8 d3 03             	mov    $0x3d3,%ax
     f51:	8e d8                	mov    %ax,%ds
     f53:	8b 46 ee             	mov    -0x12(%bp),%ax
     f56:	c7 46 fc d1 00       	movw   $0xd1,-0x4(%bp)
     f5b:	a3 8a 08             	mov    %ax,0x88a
     f5e:	8b 46 f0             	mov    -0x10(%bp),%ax
     f61:	bb e8 fd             	mov    $0xfde8,%bx
     f64:	a3 8c 08             	mov    %ax,0x88c
     f67:	b8 d3 03             	mov    $0x3d3,%ax
     f6a:	8e d8                	mov    %ax,%ds
     f6c:	8b 16 f2 31          	mov    0x31f2,%dx
     f70:	29 c0                	sub    %ax,%ax
     f72:	ec                   	in     (%dx),%al
     f73:	a8 80                	test   $0x80,%al
     f75:	74 03                	je     0xf7a
     f77:	4b                   	dec    %bx
     f78:	75 ed                	jne    0xf67
     f7a:	b8 d3 03             	mov    $0x3d3,%ax
     f7d:	b9 40 00             	mov    $0x40,%cx
     f80:	8e d8                	mov    %ax,%ds
     f82:	8a 46 fc             	mov    -0x4(%bp),%al
     f85:	8b 16 f2 31          	mov    0x31f2,%dx
     f89:	bb e8 fd             	mov    $0xfde8,%bx
     f8c:	ee                   	out    %al,(%dx)
     f8d:	b8 d3 03             	mov    $0x3d3,%ax
     f90:	8e d8                	mov    %ax,%ds
     f92:	8b 16 f2 31          	mov    0x31f2,%dx
     f96:	29 c0                	sub    %ax,%ax
     f98:	ec                   	in     (%dx),%al
     f99:	a8 80                	test   $0x80,%al
     f9b:	74 03                	je     0xfa0
     f9d:	4b                   	dec    %bx
     f9e:	75 ed                	jne    0xf8d
     fa0:	b8 d3 03             	mov    $0x3d3,%ax
     fa3:	8e d8                	mov    %ax,%ds
     fa5:	88 c8                	mov    %cl,%al
     fa7:	8b 16 f2 31          	mov    0x31f2,%dx
     fab:	bb e8 fd             	mov    $0xfde8,%bx
     fae:	ee                   	out    %al,(%dx)
     faf:	89 f1                	mov    %si,%cx
     fb1:	b8 d3 03             	mov    $0x3d3,%ax
     fb4:	8e d8                	mov    %ax,%ds
     fb6:	8b 16 f2 31          	mov    0x31f2,%dx
     fba:	29 c0                	sub    %ax,%ax
     fbc:	ec                   	in     (%dx),%al
     fbd:	a8 80                	test   $0x80,%al
     fbf:	74 03                	je     0xfc4
     fc1:	4b                   	dec    %bx
     fc2:	75 ed                	jne    0xfb1
     fc4:	b8 d3 03             	mov    $0x3d3,%ax
     fc7:	8e d8                	mov    %ax,%ds
     fc9:	88 c8                	mov    %cl,%al
     fcb:	8b 16 f2 31          	mov    0x31f2,%dx
     fcf:	ee                   	out    %al,(%dx)
     fd0:	a1 f0 31             	mov    0x31f0,%ax
     fd3:	3d 08 00             	cmp    $0x8,%ax
     fd6:	7d 05                	jge    0xfdd
     fd8:	05 08 00             	add    $0x8,%ax
     fdb:	eb 03                	jmp    0xfe0
     fdd:	05 68 00             	add    $0x68,%ax
     fe0:	ba d3 03             	mov    $0x3d3,%dx
     fe3:	8e da                	mov    %dx,%ds
     fe5:	81 3e fa 31 00 02    	cmpw   $0x200,0x31fa
     feb:	7d 0b                	jge    0xff8
     fed:	6a 00                	push   $0x0
     fef:	50                   	push   %ax
     ff0:	68 00 00             	push   $0x0
     ff3:	68 f4 05             	push   $0x5f4
     ff6:	eb 09                	jmp    0x1001
     ff8:	6a 00                	push   $0x0
     ffa:	50                   	push   %ax
     ffb:	68 00 00             	push   $0x0
     ffe:	68 bc 06             	push   $0x6bc
    1001:	ff 1e b8 31          	lcall  *0x31b8
    1005:	a3 50 31             	mov    %ax,0x3150
    1008:	89 16 52 31          	mov    %dx,0x3152
    100c:	b8 d3 03             	mov    $0x3d3,%ax
    100f:	8e d8                	mov    %ax,%ds
    1011:	83 3e f0 31 07       	cmpw   $0x7,0x31f0
    1016:	7e 35                	jle    0x104d
    1018:	8b 0e f0 31          	mov    0x31f0,%cx
    101c:	bb 01 00             	mov    $0x1,%bx
    101f:	80 e1 07             	and    $0x7,%cl
    1022:	ba a1 00             	mov    $0xa1,%dx
    1025:	d3 e3                	shl    %cl,%bx
    1027:	29 c0                	sub    %ax,%ax
    1029:	ec                   	in     (%dx),%al
    102a:	f7 d3                	not    %bx
    102c:	ba a1 00             	mov    $0xa1,%dx
    102f:	e9 22 03             	jmp    0x1354
    1032:	83 3e 5e 31 00       	cmpw   $0x0,0x315e
    1037:	75 57                	jne    0x1090
    1039:	83 3e 5c 31 02       	cmpw   $0x2,0x315c
    103e:	75 50                	jne    0x1090
    1040:	a1 a2 31             	mov    0x31a2,%ax
    1043:	0b 06 a0 31          	or     0x31a0,%ax
    1047:	75 07                	jne    0x1050
    1049:	b0 01                	mov    $0x1,%al
    104b:	eb 05                	jmp    0x1052
    104d:	e9 f0 02             	jmp    0x1340
    1050:	30 c0                	xor    %al,%al
    1052:	ba d3 03             	mov    $0x3d3,%dx
    1055:	8e da                	mov    %dx,%ds
    1057:	c6 06 c7 31 01       	movb   $0x1,0x31c7
    105c:	a2 c6 31             	mov    %al,0x31c6
    105f:	30 e4                	xor    %ah,%ah
    1061:	c7 06 bc 31 01 00    	movw   $0x1,0x31bc
    1067:	3d 01 00             	cmp    $0x1,%ax
    106a:	75 3c                	jne    0x10a8
    106c:	8b 16 a6 31          	mov    0x31a6,%dx
    1070:	a1 a4 31             	mov    0x31a4,%ax
    1073:	85 d2                	test   %dx,%dx
    1075:	75 05                	jne    0x107c
    1077:	3d 01 00             	cmp    $0x1,%ax
    107a:	72 17                	jb     0x1093
    107c:	85 d2                	test   %dx,%dx
    107e:	75 05                	jne    0x1085
    1080:	3d 01 00             	cmp    $0x1,%ax
    1083:	76 55                	jbe    0x10da
    1085:	85 d2                	test   %dx,%dx
    1087:	75 4f                	jne    0x10d8
    1089:	3d 02 00             	cmp    $0x2,%ax
    108c:	74 13                	je     0x10a1
    108e:	eb 5d                	jmp    0x10ed
    1090:	e9 66 01             	jmp    0x11f9
    1093:	09 d0                	or     %dx,%ax
    1095:	75 56                	jne    0x10ed
    1097:	c7 46 ee 1c 53       	movw   $0x531c,-0x12(%bp)
    109c:	89 46 f0             	mov    %ax,-0x10(%bp)
    109f:	eb 4c                	jmp    0x10ed
    10a1:	c7 46 ee 67 2b       	movw   $0x2b67,-0x12(%bp)
    10a6:	eb 40                	jmp    0x10e8
    10a8:	8b 16 a6 31          	mov    0x31a6,%dx
    10ac:	a1 a4 31             	mov    0x31a4,%ax
    10af:	85 d2                	test   %dx,%dx
    10b1:	75 05                	jne    0x10b8
    10b3:	3d 01 00             	cmp    $0x1,%ax
    10b6:	72 14                	jb     0x10cc
    10b8:	85 d2                	test   %dx,%dx
    10ba:	75 05                	jne    0x10c1
    10bc:	3d 01 00             	cmp    $0x1,%ax
    10bf:	76 1b                	jbe    0x10dc
    10c1:	85 d2                	test   %dx,%dx
    10c3:	75 28                	jne    0x10ed
    10c5:	3d 02 00             	cmp    $0x2,%ax
    10c8:	74 19                	je     0x10e3
    10ca:	eb 21                	jmp    0x10ed
    10cc:	09 d0                	or     %dx,%ax
    10ce:	75 1d                	jne    0x10ed
    10d0:	c7 46 ee 02 7e       	movw   $0x7e02,-0x12(%bp)
    10d5:	89 46 f0             	mov    %ax,-0x10(%bp)
    10d8:	eb 13                	jmp    0x10ed
    10da:	eb 07                	jmp    0x10e3
    10dc:	c7 46 ee 1c 53       	movw   $0x531c,-0x12(%bp)
    10e1:	eb 05                	jmp    0x10e8
    10e3:	c7 46 ee 01 3f       	movw   $0x3f01,-0x12(%bp)
    10e8:	c7 46 f0 00 00       	movw   $0x0,-0x10(%bp)
    10ed:	b8 d3 03             	mov    $0x3d3,%ax
    10f0:	8e d8                	mov    %ax,%ds
    10f2:	8b 46 ee             	mov    -0x12(%bp),%ax
    10f5:	a3 8a 08             	mov    %ax,0x88a
    10f8:	8b 46 f0             	mov    -0x10(%bp),%ax
    10fb:	a3 8c 08             	mov    %ax,0x88c
    10fe:	a0 c6 31             	mov    0x31c6,%al
    1101:	30 e4                	xor    %ah,%ah
    1103:	3d 01 00             	cmp    $0x1,%ax
    1106:	75 06                	jne    0x110e
    1108:	d1 66 ee             	shlw   $1,-0x12(%bp)
    110b:	d1 56 f0             	rclw   $1,-0x10(%bp)
    110e:	b8 40 42             	mov    $0x4240,%ax
    1111:	ba 0f 00             	mov    $0xf,%dx
    1114:	8b 5e ee             	mov    -0x12(%bp),%bx
    1117:	8b 4e f0             	mov    -0x10(%bp),%cx
    111a:	be 00 01             	mov    $0x100,%si
    111d:	c7 46 fa d1 00       	movw   $0xd1,-0x6(%bp)
    1122:	0e                   	push   %cs
    1123:	e8 2a 30             	call   0x4150
    1126:	90                   	nop
    1127:	bb e8 fd             	mov    $0xfde8,%bx
    112a:	29 c6                	sub    %ax,%si
    112c:	b8 d3 03             	mov    $0x3d3,%ax
    112f:	8e d8                	mov    %ax,%ds
    1131:	8b 16 f2 31          	mov    0x31f2,%dx
    1135:	29 c0                	sub    %ax,%ax
    1137:	ec                   	in     (%dx),%al
    1138:	a8 80                	test   $0x80,%al
    113a:	74 03                	je     0x113f
    113c:	4b                   	dec    %bx
    113d:	75 ed                	jne    0x112c
    113f:	b8 d3 03             	mov    $0x3d3,%ax
    1142:	b9 40 00             	mov    $0x40,%cx
    1145:	8e d8                	mov    %ax,%ds
    1147:	8a 46 fa             	mov    -0x6(%bp),%al
    114a:	8b 16 f2 31          	mov    0x31f2,%dx
    114e:	bb e8 fd             	mov    $0xfde8,%bx
    1151:	ee                   	out    %al,(%dx)
    1152:	b8 d3 03             	mov    $0x3d3,%ax
    1155:	8e d8                	mov    %ax,%ds
    1157:	8b 16 f2 31          	mov    0x31f2,%dx
    115b:	29 c0                	sub    %ax,%ax
    115d:	ec                   	in     (%dx),%al
    115e:	a8 80                	test   $0x80,%al
    1160:	74 03                	je     0x1165
    1162:	4b                   	dec    %bx
    1163:	75 ed                	jne    0x1152
    1165:	b8 d3 03             	mov    $0x3d3,%ax
    1168:	8e d8                	mov    %ax,%ds
    116a:	88 c8                	mov    %cl,%al
    116c:	8b 16 f2 31          	mov    0x31f2,%dx
    1170:	bb e8 fd             	mov    $0xfde8,%bx
    1173:	ee                   	out    %al,(%dx)
    1174:	89 f1                	mov    %si,%cx
    1176:	b8 d3 03             	mov    $0x3d3,%ax
    1179:	8e d8                	mov    %ax,%ds
    117b:	8b 16 f2 31          	mov    0x31f2,%dx
    117f:	29 c0                	sub    %ax,%ax
    1181:	ec                   	in     (%dx),%al
    1182:	a8 80                	test   $0x80,%al
    1184:	74 03                	je     0x1189
    1186:	4b                   	dec    %bx
    1187:	75 ed                	jne    0x1176
    1189:	b8 d3 03             	mov    $0x3d3,%ax
    118c:	8e d8                	mov    %ax,%ds
    118e:	88 c8                	mov    %cl,%al
    1190:	8b 16 f2 31          	mov    0x31f2,%dx
    1194:	ee                   	out    %al,(%dx)
    1195:	a0 c6 31             	mov    0x31c6,%al
    1198:	30 e4                	xor    %ah,%ah
    119a:	3d 01 00             	cmp    $0x1,%ax
    119d:	75 1e                	jne    0x11bd
    119f:	8b 16 f4 31          	mov    0x31f4,%dx
    11a3:	b0 0e                	mov    $0xe,%al
    11a5:	83 c2 04             	add    $0x4,%dx
    11a8:	ee                   	out    %al,(%dx)
    11a9:	8b 16 f4 31          	mov    0x31f4,%dx
    11ad:	83 c2 05             	add    $0x5,%dx
    11b0:	29 c0                	sub    %ax,%ax
    11b2:	ec                   	in     (%dx),%al
    11b3:	8b 16 f4 31          	mov    0x31f4,%dx
    11b7:	0c 22                	or     $0x22,%al
    11b9:	83 c2 05             	add    $0x5,%dx
    11bc:	ee                   	out    %al,(%dx)
    11bd:	6a 00                	push   $0x0
    11bf:	ff 76 f8             	push   -0x8(%bp)
    11c2:	68 00 00             	push   $0x0
    11c5:	b8 d3 03             	mov    $0x3d3,%ax
    11c8:	68 bc 06             	push   $0x6bc
    11cb:	8e d8                	mov    %ax,%ds
    11cd:	ff 1e b8 31          	lcall  *0x31b8
    11d1:	a3 50 31             	mov    %ax,0x3150
    11d4:	89 16 52 31          	mov    %dx,0x3152
    11d8:	83 3e f0 31 07       	cmpw   $0x7,0x31f0
    11dd:	7e 6a                	jle    0x1249
    11df:	8b 0e f0 31          	mov    0x31f0,%cx
    11e3:	bb 01 00             	mov    $0x1,%bx
    11e6:	80 e1 07             	and    $0x7,%cl
    11e9:	ba a1 00             	mov    $0xa1,%dx
    11ec:	d3 e3                	shl    %cl,%bx
    11ee:	29 c0                	sub    %ax,%ax
    11f0:	ec                   	in     (%dx),%al
    11f1:	f7 d3                	not    %bx
    11f3:	ba a1 00             	mov    $0xa1,%dx
    11f6:	e9 5b 01             	jmp    0x1354
    11f9:	83 3e 5e 31 00       	cmpw   $0x0,0x315e
    11fe:	75 5a                	jne    0x125a
    1200:	83 3e 5c 31 06       	cmpw   $0x6,0x315c
    1205:	75 53                	jne    0x125a
    1207:	a1 a2 31             	mov    0x31a2,%ax
    120a:	0b 06 a0 31          	or     0x31a0,%ax
    120e:	75 04                	jne    0x1214
    1210:	b0 01                	mov    $0x1,%al
    1212:	eb 02                	jmp    0x1216
    1214:	30 c0                	xor    %al,%al
    1216:	ba d3 03             	mov    $0x3d3,%dx
    1219:	8e da                	mov    %dx,%ds
    121b:	c6 06 c7 31 02       	movb   $0x2,0x31c7
    1220:	c7 06 bc 31 00 00    	movw   $0x0,0x31bc
    1226:	8b 16 a6 31          	mov    0x31a6,%dx
    122a:	a2 c6 31             	mov    %al,0x31c6
    122d:	a1 a4 31             	mov    0x31a4,%ax
    1230:	85 d2                	test   %dx,%dx
    1232:	75 33                	jne    0x1267
    1234:	3d 03 00             	cmp    $0x3,%ax
    1237:	77 2e                	ja     0x1267
    1239:	89 c3                	mov    %ax,%bx
    123b:	01 c3                	add    %ax,%bx
    123d:	2e ff a7 d8 08       	jmp    *%cs:0x8d8(%bx)
    1242:	c7 46 ee 44 ac       	movw   $0xac44,-0x12(%bp)
    1247:	eb 19                	jmp    0x1262
    1249:	e9 f4 00             	jmp    0x1340
    124c:	c7 46 ee 00 7d       	movw   $0x7d00,-0x12(%bp)
    1251:	eb 0f                	jmp    0x1262
    1253:	c7 46 ee 22 56       	movw   $0x5622,-0x12(%bp)
    1258:	eb 08                	jmp    0x1262
    125a:	e9 fa 00             	jmp    0x1357
    125d:	c7 46 ee 80 3e       	movw   $0x3e80,-0x12(%bp)
    1262:	c7 46 f0 00 00       	movw   $0x0,-0x10(%bp)
    1267:	b8 d3 03             	mov    $0x3d3,%ax
    126a:	8e d8                	mov    %ax,%ds
    126c:	8b 46 ee             	mov    -0x12(%bp),%ax
    126f:	b9 41 00             	mov    $0x41,%cx
    1272:	a3 8a 08             	mov    %ax,0x88a
    1275:	8b 46 f0             	mov    -0x10(%bp),%ax
    1278:	bb e8 fd             	mov    $0xfde8,%bx
    127b:	a3 8c 08             	mov    %ax,0x88c
    127e:	b8 d3 03             	mov    $0x3d3,%ax
    1281:	8e d8                	mov    %ax,%ds
    1283:	8b 16 f2 31          	mov    0x31f2,%dx
    1287:	29 c0                	sub    %ax,%ax
    1289:	ec                   	in     (%dx),%al
    128a:	a8 80                	test   $0x80,%al
    128c:	74 03                	je     0x1291
    128e:	4b                   	dec    %bx
    128f:	75 ed                	jne    0x127e
    1291:	b8 d3 03             	mov    $0x3d3,%ax
    1294:	8e d8                	mov    %ax,%ds
    1296:	88 c8                	mov    %cl,%al
    1298:	8b 16 f2 31          	mov    0x31f2,%dx
    129c:	ee                   	out    %al,(%dx)
    129d:	8b 46 ee             	mov    -0x12(%bp),%ax
    12a0:	8b 56 f0             	mov    -0x10(%bp),%dx
    12a3:	b9 08 00             	mov    $0x8,%cx
    12a6:	d1 fa                	sar    $1,%dx
    12a8:	d1 d8                	rcr    $1,%ax
    12aa:	e2 fa                	loop   0x12a6
    12ac:	bb e8 fd             	mov    $0xfde8,%bx
    12af:	89 c1                	mov    %ax,%cx
    12b1:	b8 d3 03             	mov    $0x3d3,%ax
    12b4:	8e d8                	mov    %ax,%ds
    12b6:	8b 16 f2 31          	mov    0x31f2,%dx
    12ba:	29 c0                	sub    %ax,%ax
    12bc:	ec                   	in     (%dx),%al
    12bd:	a8 80                	test   $0x80,%al
    12bf:	74 03                	je     0x12c4
    12c1:	4b                   	dec    %bx
    12c2:	75 ed                	jne    0x12b1
    12c4:	b8 d3 03             	mov    $0x3d3,%ax
    12c7:	bb e8 fd             	mov    $0xfde8,%bx
    12ca:	8e d8                	mov    %ax,%ds
    12cc:	88 c8                	mov    %cl,%al
    12ce:	8b 16 f2 31          	mov    0x31f2,%dx
    12d2:	8b 4e ee             	mov    -0x12(%bp),%cx
    12d5:	ee                   	out    %al,(%dx)
    12d6:	30 ed                	xor    %ch,%ch
    12d8:	b8 d3 03             	mov    $0x3d3,%ax
    12db:	8e d8                	mov    %ax,%ds
    12dd:	8b 16 f2 31          	mov    0x31f2,%dx
    12e1:	29 c0                	sub    %ax,%ax
    12e3:	ec                   	in     (%dx),%al
    12e4:	a8 80                	test   $0x80,%al
    12e6:	74 03                	je     0x12eb
    12e8:	4b                   	dec    %bx
    12e9:	75 ed                	jne    0x12d8
    12eb:	b8 d3 03             	mov    $0x3d3,%ax
    12ee:	8e d8                	mov    %ax,%ds
    12f0:	88 c8                	mov    %cl,%al
    12f2:	8b 16 f2 31          	mov    0x31f2,%dx
    12f6:	ee                   	out    %al,(%dx)
    12f7:	a1 f0 31             	mov    0x31f0,%ax
    12fa:	3d 08 00             	cmp    $0x8,%ax
    12fd:	7d 05                	jge    0x1304
    12ff:	05 08 00             	add    $0x8,%ax
    1302:	eb 03                	jmp    0x1307
    1304:	05 68 00             	add    $0x68,%ax
    1307:	6a 00                	push   $0x0
    1309:	50                   	push   %ax
    130a:	68 00 00             	push   $0x0
    130d:	b8 d3 03             	mov    $0x3d3,%ax
    1310:	68 98 08             	push   $0x898
    1313:	8e d8                	mov    %ax,%ds
    1315:	ff 1e b8 31          	lcall  *0x31b8
    1319:	a3 50 31             	mov    %ax,0x3150
    131c:	89 16 52 31          	mov    %dx,0x3152
    1320:	83 3e f0 31 07       	cmpw   $0x7,0x31f0
    1325:	7e 19                	jle    0x1340
    1327:	8b 0e f0 31          	mov    0x31f0,%cx
    132b:	bb 01 00             	mov    $0x1,%bx
    132e:	80 e1 07             	and    $0x7,%cl
    1331:	ba a1 00             	mov    $0xa1,%dx
    1334:	d3 e3                	shl    %cl,%bx
    1336:	29 c0                	sub    %ax,%ax
    1338:	ec                   	in     (%dx),%al
    1339:	f7 d3                	not    %bx
    133b:	ba a1 00             	mov    $0xa1,%dx
    133e:	eb 14                	jmp    0x1354
    1340:	bb 01 00             	mov    $0x1,%bx
    1343:	8a 0e f0 31          	mov    0x31f0,%cl
    1347:	ba 21 00             	mov    $0x21,%dx
    134a:	d3 e3                	shl    %cl,%bx
    134c:	29 c0                	sub    %ax,%ax
    134e:	ec                   	in     (%dx),%al
    134f:	f7 d3                	not    %bx
    1351:	ba 21 00             	mov    $0x21,%dx
    1354:	21 d8                	and    %bx,%ax
    1356:	ee                   	out    %al,(%dx)
    1357:	b8 d3 03             	mov    $0x3d3,%ax
    135a:	8e d8                	mov    %ax,%ds
    135c:	8b 16 9e 31          	mov    0x319e,%dx
    1360:	a1 9c 31             	mov    0x319c,%ax
    1363:	85 d2                	test   %dx,%dx
    1365:	75 28                	jne    0x138f
    1367:	3d 04 00             	cmp    $0x4,%ax
    136a:	77 23                	ja     0x138f
    136c:	89 c3                	mov    %ax,%bx
    136e:	01 c3                	add    %ax,%bx
    1370:	2e ff a7 e0 08       	jmp    *%cs:0x8e0(%bx)
    1375:	80 0e bc 31 41       	orb    $0x41,0x31bc
    137a:	eb 13                	jmp    0x138f
    137c:	80 0e bc 31 10       	orb    $0x10,0x31bc
    1381:	eb 0c                	jmp    0x138f
    1383:	80 0e bc 31 21       	orb    $0x21,0x31bc
    1388:	eb 05                	jmp    0x138f
    138a:	80 0e bc 31 31       	orb    $0x31,0x31bc
    138f:	b8 d3 03             	mov    $0x3d3,%ax
    1392:	8e d8                	mov    %ax,%ds
    1394:	a1 b6 31             	mov    0x31b6,%ax
    1397:	8b 16 b4 31          	mov    0x31b4,%dx
    139b:	85 c0                	test   %ax,%ax
    139d:	75 04                	jne    0x13a3
    139f:	85 d2                	test   %dx,%dx
    13a1:	74 2d                	je     0x13d0
    13a3:	89 d3                	mov    %dx,%bx
    13a5:	89 c2                	mov    %ax,%dx
    13a7:	8e d8                	mov    %ax,%ds
    13a9:	f6 07 01             	testb  $0x1,(%bx)
    13ac:	74 16                	je     0x13c4
    13ae:	b9 12 00             	mov    $0x12,%cx
    13b1:	bf 7c 08             	mov    $0x87c,%di
    13b4:	b8 d3 03             	mov    $0x3d3,%ax
    13b7:	8d 77 04             	lea    0x4(%bx),%si
    13ba:	8e c0                	mov    %ax,%es
    13bc:	c7 46 f6 00 00       	movw   $0x0,-0xa(%bp)
    13c1:	fc                   	cld
    13c2:	f3 a4                	rep movsb %ds:(%si),%es:(%di)
    13c4:	8e da                	mov    %dx,%ds
    13c6:	f6 07 02             	testb  $0x2,(%bx)
    13c9:	74 05                	je     0x13d0
    13cb:	c7 46 fe 01 00       	movw   $0x1,-0x2(%bp)
    13d0:	83 7e f6 00          	cmpw   $0x0,-0xa(%bp)
    13d4:	74 5f                	je     0x1435
    13d6:	b8 d3 03             	mov    $0x3d3,%ax
    13d9:	8e d8                	mov    %ax,%ds
    13db:	8a 16 c7 31          	mov    0x31c7,%dl
    13df:	30 f6                	xor    %dh,%dh
    13e1:	89 d0                	mov    %dx,%ax
    13e3:	c1 e0 05             	shl    $0x5,%ax
    13e6:	29 d0                	sub    %dx,%ax
    13e8:	c1 e0 02             	shl    $0x2,%ax
    13eb:	01 d0                	add    %dx,%ax
    13ed:	8a 0e c6 31          	mov    0x31c6,%cl
    13f1:	c1 e0 04             	shl    $0x4,%ax
    13f4:	d3 e0                	shl    %cl,%ax
    13f6:	8b 1e 8a 08          	mov    0x88a,%bx
    13fa:	99                   	cwtd
    13fb:	8b 0e 8c 08          	mov    0x88c,%cx
    13ff:	0e                   	push   %cs
    1400:	3e e8 2c 2d          	ds call 0x4130
    1404:	bb f0 55             	mov    $0x55f0,%bx
    1407:	31 c9                	xor    %cx,%cx
    1409:	0e                   	push   %cs
    140a:	3e e8 97 2d          	ds call 0x41a5
    140e:	24 f0                	and    $0xf0,%al
    1410:	a3 88 08             	mov    %ax,0x888
    1413:	a3 86 08             	mov    %ax,0x886
    1416:	05 20 00             	add    $0x20,%ax
    1419:	83 d2 00             	adc    $0x0,%dx
    141c:	52                   	push   %dx
    141d:	50                   	push   %ax
    141e:	16                   	push   %ss
    141f:	8d 56 f2             	lea    -0xe(%bp),%dx
    1422:	52                   	push   %dx
    1423:	ff 1e dc 31          	lcall  *0x31dc
    1427:	85 c0                	test   %ax,%ax
    1429:	74 0c                	je     0x1437
    142b:	b8 ff ff             	mov    $0xffff,%ax
    142e:	c9                   	leave
    142f:	1f                   	pop    %ds
    1430:	5f                   	pop    %di
    1431:	5e                   	pop    %si
    1432:	ca 04 00             	lret   $0x4
    1435:	eb 3b                	jmp    0x1472
    1437:	8b 46 f4             	mov    -0xc(%bp),%ax
    143a:	a3 7c 08             	mov    %ax,0x87c
    143d:	8b 46 f2             	mov    -0xe(%bp),%ax
    1440:	31 d2                	xor    %dx,%dx
    1442:	a3 7e 08             	mov    %ax,0x87e
    1445:	a1 7c 08             	mov    0x87c,%ax
    1448:	c7 06 80 08 00 00    	movw   $0x0,0x880
    144e:	b1 04                	mov    $0x4,%cl
    1450:	d3 e2                	shl    %cl,%dx
    1452:	d3 c0                	rol    %cl,%ax
    1454:	31 c2                	xor    %ax,%dx
    1456:	81 e0 f0 ff          	and    $0xfff0,%ax
    145a:	31 c2                	xor    %ax,%dx
    145c:	8b 1e 7e 08          	mov    0x87e,%bx
    1460:	89 d1                	mov    %dx,%cx
    1462:	8b 16 80 08          	mov    0x880,%dx
    1466:	01 c3                	add    %ax,%bx
    1468:	11 ca                	adc    %cx,%dx
    146a:	89 1e 82 08          	mov    %bx,0x882
    146e:	89 16 84 08          	mov    %dx,0x884
    1472:	ba 20 40             	mov    $0x4020,%dx
    1475:	bb d3 03             	mov    $0x3d3,%bx
    1478:	31 c0                	xor    %ax,%ax
    147a:	31 ff                	xor    %di,%di
    147c:	8e db                	mov    %bx,%ds
    147e:	89 d6                	mov    %dx,%si
    1480:	f6 06 bc 31 01       	testb  $0x1,0x31bc
    1485:	74 06                	je     0x148d
    1487:	ba 20 a0             	mov    $0xa020,%dx
    148a:	be 20 80             	mov    $0x8020,%si
    148d:	83 c2 10             	add    $0x10,%dx
    1490:	15 00 00             	adc    $0x0,%ax
    1493:	50                   	push   %ax
    1494:	52                   	push   %dx
    1495:	8d 56 f2             	lea    -0xe(%bp),%dx
    1498:	16                   	push   %ss
    1499:	b8 d3 03             	mov    $0x3d3,%ax
    149c:	52                   	push   %dx
    149d:	8e d8                	mov    %ax,%ds
    149f:	ff 1e dc 31          	lcall  *0x31dc
    14a3:	85 c0                	test   %ax,%ax
    14a5:	74 0a                	je     0x14b1
    14a7:	b8 ff ff             	mov    $0xffff,%ax
    14aa:	c9                   	leave
    14ab:	1f                   	pop    %ds
    14ac:	5f                   	pop    %di
    14ad:	5e                   	pop    %si
    14ae:	ca 04 00             	lret   $0x4
    14b1:	8b 46 f2             	mov    -0xe(%bp),%ax
    14b4:	31 d2                	xor    %dx,%dx
    14b6:	b1 04                	mov    $0x4,%cl
    14b8:	d3 e8                	shr    %cl,%ax
    14ba:	d3 ca                	ror    %cl,%dx
    14bc:	31 d0                	xor    %dx,%ax
    14be:	81 e2 ff 0f          	and    $0xfff,%dx
    14c2:	31 d0                	xor    %dx,%ax
    14c4:	8b 5e f4             	mov    -0xc(%bp),%bx
    14c7:	89 d1                	mov    %dx,%cx
    14c9:	31 d2                	xor    %dx,%dx
    14cb:	01 c3                	add    %ax,%bx
    14cd:	89 d0                	mov    %dx,%ax
    14cf:	11 c8                	adc    %cx,%ax
    14d1:	83 c3 01             	add    $0x1,%bx
    14d4:	11 d0                	adc    %dx,%ax
    14d6:	89 1e be 31          	mov    %bx,0x31be
    14da:	a3 c0 31             	mov    %ax,0x31c0
    14dd:	83 7e fe 00          	cmpw   $0x0,-0x2(%bp)
    14e1:	74 4c                	je     0x152f
    14e3:	80 0e bc 31 08       	orb    $0x8,0x31bc
    14e8:	83 c6 10             	add    $0x10,%si
    14eb:	11 d7                	adc    %dx,%di
    14ed:	57                   	push   %di
    14ee:	56                   	push   %si
    14ef:	16                   	push   %ss
    14f0:	8d 56 f2             	lea    -0xe(%bp),%dx
    14f3:	52                   	push   %dx
    14f4:	ff 1e dc 31          	lcall  *0x31dc
    14f8:	85 c0                	test   %ax,%ax
    14fa:	74 0a                	je     0x1506
    14fc:	b8 ff ff             	mov    $0xffff,%ax
    14ff:	c9                   	leave
    1500:	1f                   	pop    %ds
    1501:	5f                   	pop    %di
    1502:	5e                   	pop    %si
    1503:	ca 04 00             	lret   $0x4
    1506:	8b 46 f2             	mov    -0xe(%bp),%ax
    1509:	31 d2                	xor    %dx,%dx
    150b:	b1 04                	mov    $0x4,%cl
    150d:	d3 e8                	shr    %cl,%ax
    150f:	d3 ca                	ror    %cl,%dx
    1511:	31 d0                	xor    %dx,%ax
    1513:	81 e2 ff 0f          	and    $0xfff,%dx
    1517:	31 d0                	xor    %dx,%ax
    1519:	89 d3                	mov    %dx,%bx
    151b:	31 d2                	xor    %dx,%dx
    151d:	03 46 f4             	add    -0xc(%bp),%ax
    1520:	11 da                	adc    %bx,%dx
    1522:	05 01 00             	add    $0x1,%ax
    1525:	83 d2 00             	adc    $0x0,%dx
    1528:	a3 c2 31             	mov    %ax,0x31c2
    152b:	89 16 c4 31          	mov    %dx,0x31c4
    152f:	b8 d3 03             	mov    $0x3d3,%ax
    1532:	8e d8                	mov    %ax,%ds
    1534:	a1 fc 31             	mov    0x31fc,%ax
    1537:	99                   	cwtd
    1538:	52                   	push   %dx
    1539:	50                   	push   %ax
    153a:	1e                   	push   %ds
    153b:	68 7c 08             	push   $0x87c
    153e:	0e                   	push   %cs
    153f:	e8 c6 26             	call   0x3c08
    1542:	90                   	nop
    1543:	1e                   	push   %ds
    1544:	68 bc 31             	push   $0x31bc
    1547:	0e                   	push   %cs
    1548:	3e e8 f2 19          	ds call 0x2f3e
    154c:	1e                   	push   %ds
    154d:	68 8f 08             	push   $0x88f
    1550:	ff 1e 54 31          	lcall  *0x3154
    1554:	a3 f6 31             	mov    %ax,0x31f6
    1557:	31 c0                	xor    %ax,%ax
    1559:	c9                   	leave
    155a:	1f                   	pop    %ds
    155b:	5f                   	pop    %di
    155c:	5e                   	pop    %si
    155d:	ca 04 00             	lret   $0x4
    1560:	73 74                	jae    0x15d6
    1562:	61                   	popa
    1563:	72 74                	jb     0x15d9
    1565:	4f                   	dec    %di
    1566:	75 74                	jne    0x15dc
    1568:	70 75                	jo     0x15df
    156a:	74 0b                	je     0x1577
    156c:	1e                   	push   %ds
    156d:	b8 d3 03             	mov    $0x3d3,%ax
    1570:	8e d8                	mov    %ax,%ds
    1572:	83 3e f8 31 01       	cmpw   $0x1,0x31f8
    1577:	74 03                	je     0x157c
    1579:	e9 89 01             	jmp    0x1705
    157c:	81 3e fa 31 00 02    	cmpw   $0x200,0x31fa
    1582:	7d 66                	jge    0x15ea
    1584:	b9 14 00             	mov    $0x14,%cx
    1587:	bb e8 fd             	mov    $0xfde8,%bx
    158a:	b8 d3 03             	mov    $0x3d3,%ax
    158d:	8e d8                	mov    %ax,%ds
    158f:	8b 16 f2 31          	mov    0x31f2,%dx
    1593:	29 c0                	sub    %ax,%ax
    1595:	ec                   	in     (%dx),%al
    1596:	a8 80                	test   $0x80,%al
    1598:	74 03                	je     0x159d
    159a:	4b                   	dec    %bx
    159b:	75 ed                	jne    0x158a
    159d:	b8 d3 03             	mov    $0x3d3,%ax
    15a0:	8e d8                	mov    %ax,%ds
    15a2:	88 c8                	mov    %cl,%al
    15a4:	8b 16 f2 31          	mov    0x31f2,%dx
    15a8:	bb e8 fd             	mov    $0xfde8,%bx
    15ab:	ee                   	out    %al,(%dx)
    15ac:	b9 ff 00             	mov    $0xff,%cx
    15af:	b8 d3 03             	mov    $0x3d3,%ax
    15b2:	8e d8                	mov    %ax,%ds
    15b4:	8b 16 f2 31          	mov    0x31f2,%dx
    15b8:	29 c0                	sub    %ax,%ax
    15ba:	ec                   	in     (%dx),%al
    15bb:	a8 80                	test   $0x80,%al
    15bd:	74 03                	je     0x15c2
    15bf:	4b                   	dec    %bx
    15c0:	75 ed                	jne    0x15af
    15c2:	b8 d3 03             	mov    $0x3d3,%ax
    15c5:	8e d8                	mov    %ax,%ds
    15c7:	88 c8                	mov    %cl,%al
    15c9:	8b 16 f2 31          	mov    0x31f2,%dx
    15cd:	bb e8 fd             	mov    $0xfde8,%bx
    15d0:	ee                   	out    %al,(%dx)
    15d1:	b9 ff 00             	mov    $0xff,%cx
    15d4:	b8 d3 03             	mov    $0x3d3,%ax
    15d7:	8e d8                	mov    %ax,%ds
    15d9:	8b 16 f2 31          	mov    0x31f2,%dx
    15dd:	29 c0                	sub    %ax,%ax
    15df:	ec                   	in     (%dx),%al
    15e0:	a8 80                	test   $0x80,%al
    15e2:	74 03                	je     0x15e7
    15e4:	4b                   	dec    %bx
    15e5:	75 ed                	jne    0x15d4
    15e7:	e9 67 02             	jmp    0x1851
    15ea:	74 03                	je     0x15ef
    15ec:	e9 8b 00             	jmp    0x167a
    15ef:	b9 48 00             	mov    $0x48,%cx
    15f2:	bb e8 fd             	mov    $0xfde8,%bx
    15f5:	b8 d3 03             	mov    $0x3d3,%ax
    15f8:	8e d8                	mov    %ax,%ds
    15fa:	8b 16 f2 31          	mov    0x31f2,%dx
    15fe:	29 c0                	sub    %ax,%ax
    1600:	ec                   	in     (%dx),%al
    1601:	a8 80                	test   $0x80,%al
    1603:	74 03                	je     0x1608
    1605:	4b                   	dec    %bx
    1606:	75 ed                	jne    0x15f5
    1608:	b8 d3 03             	mov    $0x3d3,%ax
    160b:	8e d8                	mov    %ax,%ds
    160d:	88 c8                	mov    %cl,%al
    160f:	8b 16 f2 31          	mov    0x31f2,%dx
    1613:	bb e8 fd             	mov    $0xfde8,%bx
    1616:	ee                   	out    %al,(%dx)
    1617:	b9 ff 00             	mov    $0xff,%cx
    161a:	b8 d3 03             	mov    $0x3d3,%ax
    161d:	8e d8                	mov    %ax,%ds
    161f:	8b 16 f2 31          	mov    0x31f2,%dx
    1623:	29 c0                	sub    %ax,%ax
    1625:	ec                   	in     (%dx),%al
    1626:	a8 80                	test   $0x80,%al
    1628:	74 03                	je     0x162d
    162a:	4b                   	dec    %bx
    162b:	75 ed                	jne    0x161a
    162d:	b8 d3 03             	mov    $0x3d3,%ax
    1630:	8e d8                	mov    %ax,%ds
    1632:	88 c8                	mov    %cl,%al
    1634:	8b 16 f2 31          	mov    0x31f2,%dx
    1638:	bb e8 fd             	mov    $0xfde8,%bx
    163b:	ee                   	out    %al,(%dx)
    163c:	b9 ef 00             	mov    $0xef,%cx
    163f:	b8 d3 03             	mov    $0x3d3,%ax
    1642:	8e d8                	mov    %ax,%ds
    1644:	8b 16 f2 31          	mov    0x31f2,%dx
    1648:	29 c0                	sub    %ax,%ax
    164a:	ec                   	in     (%dx),%al
    164b:	a8 80                	test   $0x80,%al
    164d:	74 03                	je     0x1652
    164f:	4b                   	dec    %bx
    1650:	75 ed                	jne    0x163f
    1652:	b8 d3 03             	mov    $0x3d3,%ax
    1655:	8e d8                	mov    %ax,%ds
    1657:	88 c8                	mov    %cl,%al
    1659:	8b 16 f2 31          	mov    0x31f2,%dx
    165d:	bb e8 fd             	mov    $0xfde8,%bx
    1660:	ee                   	out    %al,(%dx)
    1661:	b9 1c 00             	mov    $0x1c,%cx
    1664:	b8 d3 03             	mov    $0x3d3,%ax
    1667:	8e d8                	mov    %ax,%ds
    1669:	8b 16 f2 31          	mov    0x31f2,%dx
    166d:	29 c0                	sub    %ax,%ax
    166f:	ec                   	in     (%dx),%al
    1670:	a8 80                	test   $0x80,%al
    1672:	74 03                	je     0x1677
    1674:	4b                   	dec    %bx
    1675:	75 ed                	jne    0x1664
    1677:	e9 d7 01             	jmp    0x1851
    167a:	b9 48 00             	mov    $0x48,%cx
    167d:	bb e8 fd             	mov    $0xfde8,%bx
    1680:	b8 d3 03             	mov    $0x3d3,%ax
    1683:	8e d8                	mov    %ax,%ds
    1685:	8b 16 f2 31          	mov    0x31f2,%dx
    1689:	29 c0                	sub    %ax,%ax
    168b:	ec                   	in     (%dx),%al
    168c:	a8 80                	test   $0x80,%al
    168e:	74 03                	je     0x1693
    1690:	4b                   	dec    %bx
    1691:	75 ed                	jne    0x1680
    1693:	b8 d3 03             	mov    $0x3d3,%ax
    1696:	8e d8                	mov    %ax,%ds
    1698:	88 c8                	mov    %cl,%al
    169a:	8b 16 f2 31          	mov    0x31f2,%dx
    169e:	bb e8 fd             	mov    $0xfde8,%bx
    16a1:	ee                   	out    %al,(%dx)
    16a2:	b9 ff 00             	mov    $0xff,%cx
    16a5:	b8 d3 03             	mov    $0x3d3,%ax
    16a8:	8e d8                	mov    %ax,%ds
    16aa:	8b 16 f2 31          	mov    0x31f2,%dx
    16ae:	29 c0                	sub    %ax,%ax
    16b0:	ec                   	in     (%dx),%al
    16b1:	a8 80                	test   $0x80,%al
    16b3:	74 03                	je     0x16b8
    16b5:	4b                   	dec    %bx
    16b6:	75 ed                	jne    0x16a5
    16b8:	b8 d3 03             	mov    $0x3d3,%ax
    16bb:	8e d8                	mov    %ax,%ds
    16bd:	88 c8                	mov    %cl,%al
    16bf:	8b 16 f2 31          	mov    0x31f2,%dx
    16c3:	bb e8 fd             	mov    $0xfde8,%bx
    16c6:	ee                   	out    %al,(%dx)
    16c7:	b9 ef 00             	mov    $0xef,%cx
    16ca:	b8 d3 03             	mov    $0x3d3,%ax
    16cd:	8e d8                	mov    %ax,%ds
    16cf:	8b 16 f2 31          	mov    0x31f2,%dx
    16d3:	29 c0                	sub    %ax,%ax
    16d5:	ec                   	in     (%dx),%al
    16d6:	a8 80                	test   $0x80,%al
    16d8:	74 03                	je     0x16dd
    16da:	4b                   	dec    %bx
    16db:	75 ed                	jne    0x16ca
    16dd:	b8 d3 03             	mov    $0x3d3,%ax
    16e0:	8e d8                	mov    %ax,%ds
    16e2:	88 c8                	mov    %cl,%al
    16e4:	8b 16 f2 31          	mov    0x31f2,%dx
    16e8:	bb e8 fd             	mov    $0xfde8,%bx
    16eb:	ee                   	out    %al,(%dx)
    16ec:	b9 90 00             	mov    $0x90,%cx
    16ef:	b8 d3 03             	mov    $0x3d3,%ax
    16f2:	8e d8                	mov    %ax,%ds
    16f4:	8b 16 f2 31          	mov    0x31f2,%dx
    16f8:	29 c0                	sub    %ax,%ax
    16fa:	ec                   	in     (%dx),%al
    16fb:	a8 80                	test   $0x80,%al
    16fd:	74 03                	je     0x1702
    16ff:	4b                   	dec    %bx
    1700:	75 ed                	jne    0x16ef
    1702:	e9 4c 01             	jmp    0x1851
    1705:	83 3e f8 31 02       	cmpw   $0x2,0x31f8
    170a:	74 03                	je     0x170f
    170c:	e9 8b 00             	jmp    0x179a
    170f:	b9 48 00             	mov    $0x48,%cx
    1712:	bb e8 fd             	mov    $0xfde8,%bx
    1715:	b8 d3 03             	mov    $0x3d3,%ax
    1718:	8e d8                	mov    %ax,%ds
    171a:	8b 16 f2 31          	mov    0x31f2,%dx
    171e:	29 c0                	sub    %ax,%ax
    1720:	ec                   	in     (%dx),%al
    1721:	a8 80                	test   $0x80,%al
    1723:	74 03                	je     0x1728
    1725:	4b                   	dec    %bx
    1726:	75 ed                	jne    0x1715
    1728:	b8 d3 03             	mov    $0x3d3,%ax
    172b:	8e d8                	mov    %ax,%ds
    172d:	88 c8                	mov    %cl,%al
    172f:	8b 16 f2 31          	mov    0x31f2,%dx
    1733:	bb e8 fd             	mov    $0xfde8,%bx
    1736:	ee                   	out    %al,(%dx)
    1737:	b9 ff 00             	mov    $0xff,%cx
    173a:	b8 d3 03             	mov    $0x3d3,%ax
    173d:	8e d8                	mov    %ax,%ds
    173f:	8b 16 f2 31          	mov    0x31f2,%dx
    1743:	29 c0                	sub    %ax,%ax
    1745:	ec                   	in     (%dx),%al
    1746:	a8 80                	test   $0x80,%al
    1748:	74 03                	je     0x174d
    174a:	4b                   	dec    %bx
    174b:	75 ed                	jne    0x173a
    174d:	b8 d3 03             	mov    $0x3d3,%ax
    1750:	8e d8                	mov    %ax,%ds
    1752:	88 c8                	mov    %cl,%al
    1754:	8b 16 f2 31          	mov    0x31f2,%dx
    1758:	bb e8 fd             	mov    $0xfde8,%bx
    175b:	ee                   	out    %al,(%dx)
    175c:	b9 ef 00             	mov    $0xef,%cx
    175f:	b8 d3 03             	mov    $0x3d3,%ax
    1762:	8e d8                	mov    %ax,%ds
    1764:	8b 16 f2 31          	mov    0x31f2,%dx
    1768:	29 c0                	sub    %ax,%ax
    176a:	ec                   	in     (%dx),%al
    176b:	a8 80                	test   $0x80,%al
    176d:	74 03                	je     0x1772
    176f:	4b                   	dec    %bx
    1770:	75 ed                	jne    0x175f
    1772:	b8 d3 03             	mov    $0x3d3,%ax
    1775:	8e d8                	mov    %ax,%ds
    1777:	88 c8                	mov    %cl,%al
    1779:	8b 16 f2 31          	mov    0x31f2,%dx
    177d:	bb e8 fd             	mov    $0xfde8,%bx
    1780:	ee                   	out    %al,(%dx)
    1781:	b9 90 00             	mov    $0x90,%cx
    1784:	b8 d3 03             	mov    $0x3d3,%ax
    1787:	8e d8                	mov    %ax,%ds
    1789:	8b 16 f2 31          	mov    0x31f2,%dx
    178d:	29 c0                	sub    %ax,%ax
    178f:	ec                   	in     (%dx),%al
    1790:	a8 80                	test   $0x80,%al
    1792:	74 03                	je     0x1797
    1794:	4b                   	dec    %bx
    1795:	75 ed                	jne    0x1784
    1797:	e9 b7 00             	jmp    0x1851
    179a:	83 3e f8 31 06       	cmpw   $0x6,0x31f8
    179f:	75 4a                	jne    0x17eb
    17a1:	b9 b6 00             	mov    $0xb6,%cx
    17a4:	bb e8 fd             	mov    $0xfde8,%bx
    17a7:	b8 d3 03             	mov    $0x3d3,%ax
    17aa:	8e d8                	mov    %ax,%ds
    17ac:	8b 16 f2 31          	mov    0x31f2,%dx
    17b0:	29 c0                	sub    %ax,%ax
    17b2:	ec                   	in     (%dx),%al
    17b3:	a8 80                	test   $0x80,%al
    17b5:	74 03                	je     0x17ba
    17b7:	4b                   	dec    %bx
    17b8:	75 ed                	jne    0x17a7
    17ba:	b8 d3 03             	mov    $0x3d3,%ax
    17bd:	8e d8                	mov    %ax,%ds
    17bf:	88 c8                	mov    %cl,%al
    17c1:	8b 16 f2 31          	mov    0x31f2,%dx
    17c5:	ee                   	out    %al,(%dx)
    17c6:	a0 c6 31             	mov    0x31c6,%al
    17c9:	30 e4                	xor    %ah,%ah
    17cb:	3d 01 00             	cmp    $0x1,%ax
    17ce:	75 1e                	jne    0x17ee
    17d0:	b9 30 00             	mov    $0x30,%cx
    17d3:	bb e8 fd             	mov    $0xfde8,%bx
    17d6:	b8 d3 03             	mov    $0x3d3,%ax
    17d9:	8e d8                	mov    %ax,%ds
    17db:	8b 16 f2 31          	mov    0x31f2,%dx
    17df:	29 c0                	sub    %ax,%ax
    17e1:	ec                   	in     (%dx),%al
    17e2:	a8 80                	test   $0x80,%al
    17e4:	74 21                	je     0x1807
    17e6:	4b                   	dec    %bx
    17e7:	75 ed                	jne    0x17d6
    17e9:	eb 1c                	jmp    0x1807
    17eb:	e9 6f 00             	jmp    0x185d
    17ee:	b9 10 00             	mov    $0x10,%cx
    17f1:	bb e8 fd             	mov    $0xfde8,%bx
    17f4:	b8 d3 03             	mov    $0x3d3,%ax
    17f7:	8e d8                	mov    %ax,%ds
    17f9:	8b 16 f2 31          	mov    0x31f2,%dx
    17fd:	29 c0                	sub    %ax,%ax
    17ff:	ec                   	in     (%dx),%al
    1800:	a8 80                	test   $0x80,%al
    1802:	74 03                	je     0x1807
    1804:	4b                   	dec    %bx
    1805:	75 ed                	jne    0x17f4
    1807:	b8 d3 03             	mov    $0x3d3,%ax
    180a:	8e d8                	mov    %ax,%ds
    180c:	88 c8                	mov    %cl,%al
    180e:	8b 16 f2 31          	mov    0x31f2,%dx
    1812:	ee                   	out    %al,(%dx)
    1813:	b9 ff 00             	mov    $0xff,%cx
    1816:	bb e8 fd             	mov    $0xfde8,%bx
    1819:	b8 d3 03             	mov    $0x3d3,%ax
    181c:	8e d8                	mov    %ax,%ds
    181e:	8b 16 f2 31          	mov    0x31f2,%dx
    1822:	29 c0                	sub    %ax,%ax
    1824:	ec                   	in     (%dx),%al
    1825:	a8 80                	test   $0x80,%al
    1827:	74 03                	je     0x182c
    1829:	4b                   	dec    %bx
    182a:	75 ed                	jne    0x1819
    182c:	b8 d3 03             	mov    $0x3d3,%ax
    182f:	8e d8                	mov    %ax,%ds
    1831:	88 c8                	mov    %cl,%al
    1833:	8b 16 f2 31          	mov    0x31f2,%dx
    1837:	bb e8 fd             	mov    $0xfde8,%bx
    183a:	ee                   	out    %al,(%dx)
    183b:	b9 ef 00             	mov    $0xef,%cx
    183e:	b8 d3 03             	mov    $0x3d3,%ax
    1841:	8e d8                	mov    %ax,%ds
    1843:	8b 16 f2 31          	mov    0x31f2,%dx
    1847:	29 c0                	sub    %ax,%ax
    1849:	ec                   	in     (%dx),%al
    184a:	a8 80                	test   $0x80,%al
    184c:	74 03                	je     0x1851
    184e:	4b                   	dec    %bx
    184f:	75 ed                	jne    0x183e
    1851:	b8 d3 03             	mov    $0x3d3,%ax
    1854:	8e d8                	mov    %ax,%ds
    1856:	88 c8                	mov    %cl,%al
    1858:	8b 16 f2 31          	mov    0x31f2,%dx
    185c:	ee                   	out    %al,(%dx)
    185d:	b8 d3 03             	mov    $0x3d3,%ax
    1860:	8e d8                	mov    %ax,%ds
    1862:	a1 fc 31             	mov    0x31fc,%ax
    1865:	99                   	cwtd
    1866:	52                   	push   %dx
    1867:	50                   	push   %ax
    1868:	83 3e 00 00 00       	cmpw   $0x0,0x0
    186d:	75 05                	jne    0x1874
    186f:	b8 01 00             	mov    $0x1,%ax
    1872:	eb 02                	jmp    0x1876
    1874:	31 c0                	xor    %ax,%ax
    1876:	99                   	cwtd
    1877:	52                   	push   %dx
    1878:	50                   	push   %ax
    1879:	0e                   	push   %cs
    187a:	3e e8 e0 24          	ds call 0x3d5e
    187e:	0e                   	push   %cs
    187f:	e8 78 1a             	call   0x32fa
    1882:	90                   	nop
    1883:	31 c0                	xor    %ax,%ax
    1885:	1f                   	pop    %ds
    1886:	cb                   	lret
    1887:	fc                   	cld
    1888:	67 65 74 42          	addr32 gs je 0x18ce
    188c:	75 66                	jne    0x18f4
    188e:	50                   	push   %ax
    188f:	6f                   	outsw  %ds:(%si),(%dx)
    1890:	73 09                	jae    0x189b
    1892:	1e                   	push   %ds
    1893:	b8 d3 03             	mov    $0x3d3,%ax
    1896:	8e d8                	mov    %ax,%ds
    1898:	a1 fc 31             	mov    0x31fc,%ax
    189b:	99                   	cwtd
    189c:	52                   	push   %dx
    189d:	50                   	push   %ax
    189e:	0e                   	push   %cs
    189f:	e8 48 26             	call   0x3eea
    18a2:	90                   	nop
    18a3:	1f                   	pop    %ds
    18a4:	cb                   	lret
    18a5:	73 74                	jae    0x191b
    18a7:	6f                   	outsw  %ds:(%si),(%dx)
    18a8:	70 4f                	jo     0x18f9
    18aa:	75 74                	jne    0x1920
    18ac:	70 75                	jo     0x1923
    18ae:	74 0a                	je     0x18ba
    18b0:	1e                   	push   %ds
    18b1:	b8 d3 03             	mov    $0x3d3,%ax
    18b4:	8e d8                	mov    %ax,%ds
    18b6:	a1 fc 31             	mov    0x31fc,%ax
    18b9:	99                   	cwtd
    18ba:	52                   	push   %dx
    18bb:	50                   	push   %ax
    18bc:	0e                   	push   %cs
    18bd:	e8 e6 25             	call   0x3ea6
    18c0:	90                   	nop
    18c1:	83 3e f8 31 06       	cmpw   $0x6,0x31f8
    18c6:	75 39                	jne    0x1901
    18c8:	b9 d9 00             	mov    $0xd9,%cx
    18cb:	bb e8 fd             	mov    $0xfde8,%bx
    18ce:	b8 d3 03             	mov    $0x3d3,%ax
    18d1:	8e d8                	mov    %ax,%ds
    18d3:	8b 16 f2 31          	mov    0x31f2,%dx
    18d7:	29 c0                	sub    %ax,%ax
    18d9:	ec                   	in     (%dx),%al
    18da:	a8 80                	test   $0x80,%al
    18dc:	74 03                	je     0x18e1
    18de:	4b                   	dec    %bx
    18df:	75 ed                	jne    0x18ce
    18e1:	b8 d3 03             	mov    $0x3d3,%ax
    18e4:	8e d8                	mov    %ax,%ds
    18e6:	88 c8                	mov    %cl,%al
    18e8:	8b 16 f2 31          	mov    0x31f2,%dx
    18ec:	ee                   	out    %al,(%dx)
    18ed:	8b 16 f4 31          	mov    0x31f4,%dx
    18f1:	83 c2 0e             	add    $0xe,%dx
    18f4:	29 c0                	sub    %ax,%ax
    18f6:	ec                   	in     (%dx),%al
    18f7:	8b 16 f4 31          	mov    0x31f4,%dx
    18fb:	83 c2 0f             	add    $0xf,%dx
    18fe:	29 c0                	sub    %ax,%ax
    1900:	ec                   	in     (%dx),%al
    1901:	e8 ec f0             	call   0x9f0
    1904:	0e                   	push   %cs
    1905:	e8 46 1a             	call   0x334e
    1908:	90                   	nop
    1909:	31 c0                	xor    %ax,%ax
    190b:	1f                   	pop    %ds
    190c:	cb                   	lret
    190d:	fc                   	cld
    190e:	63 6c 6f             	arpl   %bp,0x6f(%si)
    1911:	73 65                	jae    0x1978
    1913:	44                   	inc    %sp
    1914:	65 76 69             	gs jbe 0x1980
    1917:	63 65 0b             	arpl   %sp,0xb(%di)
    191a:	1e                   	push   %ds
    191b:	0e                   	push   %cs
    191c:	e8 91 ff             	call   0x18b0
    191f:	b8 d3 03             	mov    $0x3d3,%ax
    1922:	8e d8                	mov    %ax,%ds
    1924:	a1 f0 31             	mov    0x31f0,%ax
    1927:	3d 08 00             	cmp    $0x8,%ax
    192a:	7d 05                	jge    0x1931
    192c:	05 08 00             	add    $0x8,%ax
    192f:	eb 03                	jmp    0x1934
    1931:	05 68 00             	add    $0x68,%ax
    1934:	99                   	cwtd
    1935:	52                   	push   %dx
    1936:	50                   	push   %ax
    1937:	b8 d3 03             	mov    $0x3d3,%ax
    193a:	8e d8                	mov    %ax,%ds
    193c:	ff 36 52 31          	push   0x3152
    1940:	ff 36 50 31          	push   0x3150
    1944:	ff 1e b8 31          	lcall  *0x31b8
    1948:	83 3e f0 31 07       	cmpw   $0x7,0x31f0
    194d:	7e 19                	jle    0x1968
    194f:	8b 0e f0 31          	mov    0x31f0,%cx
    1953:	b8 01 00             	mov    $0x1,%ax
    1956:	80 e1 07             	and    $0x7,%cl
    1959:	d3 e0                	shl    %cl,%ax
    195b:	ba a1 00             	mov    $0xa1,%dx
    195e:	89 c1                	mov    %ax,%cx
    1960:	29 c0                	sub    %ax,%ax
    1962:	ec                   	in     (%dx),%al
    1963:	ba a1 00             	mov    $0xa1,%dx
    1966:	eb 14                	jmp    0x197c
    1968:	b8 01 00             	mov    $0x1,%ax
    196b:	8a 0e f0 31          	mov    0x31f0,%cl
    196f:	d3 e0                	shl    %cl,%ax
    1971:	ba 21 00             	mov    $0x21,%dx
    1974:	89 c1                	mov    %ax,%cx
    1976:	29 c0                	sub    %ax,%ax
    1978:	ec                   	in     (%dx),%al
    1979:	ba 21 00             	mov    $0x21,%dx
    197c:	09 c8                	or     %cx,%ax
    197e:	ee                   	out    %al,(%dx)
    197f:	31 c0                	xor    %ax,%ax
    1981:	1f                   	pop    %ds
    1982:	cb                   	lret
    1983:	64 73 64             	fs jae 0x19ea
    1986:	5f                   	pop    %di
    1987:	6d                   	insw   (%dx),%es:(%di)
    1988:	61                   	popa
    1989:	69 6e 08 1e 55       	imul   $0x551e,0x8(%bp),%bp
    198e:	89 e5                	mov    %sp,%bp
    1990:	8b 56 10             	mov    0x10(%bp),%dx
    1993:	8b 46 12             	mov    0x12(%bp),%ax
    1996:	85 c0                	test   %ax,%ax
    1998:	74 03                	je     0x199d
    199a:	e9 83 01             	jmp    0x1b20
    199d:	83 fa 01             	cmp    $0x1,%dx
    19a0:	75 f8                	jne    0x199a
    19a2:	b8 d3 03             	mov    $0x3d3,%ax
    19a5:	8e d8                	mov    %ax,%ds
    19a7:	1e                   	push   %ds
    19a8:	8b 46 0c             	mov    0xc(%bp),%ax
    19ab:	68 32 30             	push   $0x3032
    19ae:	a3 e4 31             	mov    %ax,0x31e4
    19b1:	1e                   	push   %ds
    19b2:	8b 46 0e             	mov    0xe(%bp),%ax
    19b5:	68 d0 31             	push   $0x31d0
    19b8:	a3 e6 31             	mov    %ax,0x31e6
    19bb:	ff 1e e4 31          	lcall  *0x31e4
    19bf:	1e                   	push   %ds
    19c0:	68 44 30             	push   $0x3044
    19c3:	1e                   	push   %ds
    19c4:	68 e0 31             	push   $0x31e0
    19c7:	ff 1e e4 31          	lcall  *0x31e4
    19cb:	1e                   	push   %ds
    19cc:	68 58 30             	push   $0x3058
    19cf:	1e                   	push   %ds
    19d0:	68 c8 31             	push   $0x31c8
    19d3:	ff 1e e4 31          	lcall  *0x31e4
    19d7:	1e                   	push   %ds
    19d8:	68 6c 30             	push   $0x306c
    19db:	1e                   	push   %ds
    19dc:	68 d8 31             	push   $0x31d8
    19df:	ff 1e e4 31          	lcall  *0x31e4
    19e3:	1e                   	push   %ds
    19e4:	68 7e 30             	push   $0x307e
    19e7:	1e                   	push   %ds
    19e8:	68 cc 31             	push   $0x31cc
    19eb:	ff 1e e4 31          	lcall  *0x31e4
    19ef:	1e                   	push   %ds
    19f0:	68 90 30             	push   $0x3090
    19f3:	1e                   	push   %ds
    19f4:	68 dc 31             	push   $0x31dc
    19f7:	ff 1e e4 31          	lcall  *0x31e4
    19fb:	1e                   	push   %ds
    19fc:	68 9a 30             	push   $0x309a
    19ff:	1e                   	push   %ds
    1a00:	68 e8 31             	push   $0x31e8
    1a03:	ff 1e e4 31          	lcall  *0x31e4
    1a07:	1e                   	push   %ds
    1a08:	68 a4 30             	push   $0x30a4
    1a0b:	1e                   	push   %ds
    1a0c:	68 d4 31             	push   $0x31d4
    1a0f:	ff 1e e4 31          	lcall  *0x31e4
    1a13:	1e                   	push   %ds
    1a14:	68 b0 30             	push   $0x30b0
    1a17:	1e                   	push   %ds
    1a18:	68 ec 31             	push   $0x31ec
    1a1b:	ff 1e e4 31          	lcall  *0x31e4
    1a1f:	1e                   	push   %ds
    1a20:	68 b8 30             	push   $0x30b8
    1a23:	1e                   	push   %ds
    1a24:	68 54 31             	push   $0x3154
    1a27:	ff 1e e4 31          	lcall  *0x31e4
    1a2b:	1e                   	push   %ds
    1a2c:	68 c4 30             	push   $0x30c4
    1a2f:	1e                   	push   %ds
    1a30:	68 b8 31             	push   $0x31b8
    1a33:	ff 1e e4 31          	lcall  *0x31e4
    1a37:	1e                   	push   %ds
    1a38:	68 ce 30             	push   $0x30ce
    1a3b:	1e                   	push   %ds
    1a3c:	68 58 31             	push   $0x3158
    1a3f:	ff 1e e4 31          	lcall  *0x31e4
    1a43:	85 c0                	test   %ax,%ax
    1a45:	75 08                	jne    0x1a4f
    1a47:	c7 06 fe 31 01 00    	movw   $0x1,0x31fe
    1a4d:	eb 06                	jmp    0x1a55
    1a4f:	c7 06 fe 31 00 00    	movw   $0x0,0x31fe
    1a55:	68 d3 03             	push   $0x3d3
    1a58:	68 dc 30             	push   $0x30dc
    1a5b:	68 00 00             	push   $0x0
    1a5e:	b8 d3 03             	mov    $0x3d3,%ax
    1a61:	68 de 01             	push   $0x1de
    1a64:	8e d8                	mov    %ax,%ds
    1a66:	ff 1e c8 31          	lcall  *0x31c8
    1a6a:	1e                   	push   %ds
    1a6b:	68 ee 30             	push   $0x30ee
    1a6e:	68 00 00             	push   $0x0
    1a71:	68 f6 03             	push   $0x3f6
    1a74:	ff 1e c8 31          	lcall  *0x31c8
    1a78:	1e                   	push   %ds
    1a79:	68 02 31             	push   $0x3102
    1a7c:	68 00 00             	push   $0x0
    1a7f:	68 06 04             	push   $0x406
    1a82:	ff 1e c8 31          	lcall  *0x31c8
    1a86:	1e                   	push   %ds
    1a87:	68 12 31             	push   $0x3112
    1a8a:	68 00 00             	push   $0x0
    1a8d:	68 f6 08             	push   $0x8f6
    1a90:	ff 1e c8 31          	lcall  *0x31c8
    1a94:	1e                   	push   %ds
    1a95:	68 20 31             	push   $0x3120
    1a98:	68 00 00             	push   $0x0
    1a9b:	68 5c 10             	push   $0x105c
    1a9e:	ff 1e c8 31          	lcall  *0x31c8
    1aa2:	1e                   	push   %ds
    1aa3:	68 14 30             	push   $0x3014
    1aa6:	68 00 00             	push   $0x0
    1aa9:	68 82 13             	push   $0x1382
    1aac:	ff 1e c8 31          	lcall  *0x31c8
    1ab0:	1e                   	push   %ds
    1ab1:	68 30 31             	push   $0x3130
    1ab4:	68 00 00             	push   $0x0
    1ab7:	68 a0 13             	push   $0x13a0
    1aba:	ff 1e c8 31          	lcall  *0x31c8
    1abe:	1e                   	push   %ds
    1abf:	68 3e 31             	push   $0x313e
    1ac2:	68 00 00             	push   $0x0
    1ac5:	68 0a 14             	push   $0x140a
    1ac8:	ff 1e c8 31          	lcall  *0x31c8
    1acc:	e8 5d ea             	call   0x52c
    1acf:	85 c0                	test   %ax,%ax
    1ad1:	74 48                	je     0x1b1b
    1ad3:	e8 d2 ea             	call   0x5a8
    1ad6:	1e                   	push   %ds
    1ad7:	68 dc 30             	push   $0x30dc
    1ada:	ff 1e d8 31          	lcall  *0x31d8
    1ade:	1e                   	push   %ds
    1adf:	68 ee 30             	push   $0x30ee
    1ae2:	ff 1e d8 31          	lcall  *0x31d8
    1ae6:	1e                   	push   %ds
    1ae7:	68 02 31             	push   $0x3102
    1aea:	ff 1e d8 31          	lcall  *0x31d8
    1aee:	1e                   	push   %ds
    1aef:	68 12 31             	push   $0x3112
    1af2:	ff 1e d8 31          	lcall  *0x31d8
    1af6:	1e                   	push   %ds
    1af7:	68 20 31             	push   $0x3120
    1afa:	ff 1e d8 31          	lcall  *0x31d8
    1afe:	1e                   	push   %ds
    1aff:	68 14 30             	push   $0x3014
    1b02:	ff 1e d8 31          	lcall  *0x31d8
    1b06:	1e                   	push   %ds
    1b07:	68 30 31             	push   $0x3130
    1b0a:	ff 1e d8 31          	lcall  *0x31d8
    1b0e:	1e                   	push   %ds
    1b0f:	68 3e 31             	push   $0x313e
    1b12:	ff 1e d8 31          	lcall  *0x31d8
    1b16:	b8 05 00             	mov    $0x5,%ax
    1b19:	eb 63                	jmp    0x1b7e
    1b1b:	ba 64 00             	mov    $0x64,%dx
    1b1e:	eb 60                	jmp    0x1b80
    1b20:	85 c0                	test   %ax,%ax
    1b22:	75 57                	jne    0x1b7b
    1b24:	83 fa 02             	cmp    $0x2,%dx
    1b27:	75 52                	jne    0x1b7b
    1b29:	e8 7c ea             	call   0x5a8
    1b2c:	68 d3 03             	push   $0x3d3
    1b2f:	b8 d3 03             	mov    $0x3d3,%ax
    1b32:	68 dc 30             	push   $0x30dc
    1b35:	8e d8                	mov    %ax,%ds
    1b37:	ff 1e d8 31          	lcall  *0x31d8
    1b3b:	1e                   	push   %ds
    1b3c:	68 ee 30             	push   $0x30ee
    1b3f:	ff 1e d8 31          	lcall  *0x31d8
    1b43:	1e                   	push   %ds
    1b44:	68 02 31             	push   $0x3102
    1b47:	ff 1e d8 31          	lcall  *0x31d8
    1b4b:	1e                   	push   %ds
    1b4c:	68 12 31             	push   $0x3112
    1b4f:	ff 1e d8 31          	lcall  *0x31d8
    1b53:	1e                   	push   %ds
    1b54:	68 20 31             	push   $0x3120
    1b57:	ff 1e d8 31          	lcall  *0x31d8
    1b5b:	1e                   	push   %ds
    1b5c:	68 14 30             	push   $0x3014
    1b5f:	ff 1e d8 31          	lcall  *0x31d8
    1b63:	1e                   	push   %ds
    1b64:	68 30 31             	push   $0x3130
    1b67:	ff 1e d8 31          	lcall  *0x31d8
    1b6b:	1e                   	push   %ds
    1b6c:	68 3e 31             	push   $0x313e
    1b6f:	ff 1e d8 31          	lcall  *0x31d8
    1b73:	8b 46 08             	mov    0x8(%bp),%ax
    1b76:	8b 56 0a             	mov    0xa(%bp),%dx
    1b79:	eb 05                	jmp    0x1b80
    1b7b:	b8 01 00             	mov    $0x1,%ax
    1b7e:	31 d2                	xor    %dx,%dx
    1b80:	5d                   	pop    %bp
    1b81:	1f                   	pop    %ds
    1b82:	ca 0c 00             	lret   $0xc
    1b85:	00 4d 43             	add    %cl,0x43(%di)
    1b88:	50                   	push   %ax
    1b89:	20 76 33             	and    %dh,0x33(%bp)
    1b8c:	2e 35 20 2d          	cs xor $0x2d20,%ax
    1b90:	20 28                	and    %ch,(%bx,%si)
    1b92:	43                   	inc    %bx
    1b93:	29 20                	sub    %sp,(%bx,%si)
    1b95:	31 39                	xor    %di,(%bx,%di)
    1b97:	39 32                	cmp    %si,(%bp,%si)
    1b99:	2c 31                	sub    $0x31,%al
    1b9b:	39 39                	cmp    %di,(%bx,%di)
    1b9d:	35 20 4f             	xor    $0x4f20,%ax
    1ba0:	74 74                	je     0x1c16
    1ba2:	6f                   	outsw  %ds:(%si),(%dx)
    1ba3:	20 43 68             	and    %al,0x68(%bp,%di)
    1ba6:	72 6f                	jb     0x1c17
    1ba8:	6e                   	outsb  %ds:(%si),(%dx)
    1ba9:	73 00                	jae    0x1bab
    1bab:	1a cb                	sbb    %bl,%cl
    1bad:	c8 00 00 00          	enter  $0x0,$0x0
    1bb1:	c9                   	leave
    1bb2:	ca 08 00             	lret   $0x8
    1bb5:	00 00                	add    %al,(%bx,%si)
    1bb7:	28 00                	sub    %al,(%bx,%si)
    1bb9:	50                   	push   %ax
    1bba:	00 78 00             	add    %bh,0x0(%bx,%si)
    1bbd:	a0 00 c8             	mov    0xc800,%al
    1bc0:	00 f0                	add    %dh,%al
    1bc2:	00 18                	add    %bl,(%bx,%si)
    1bc4:	01 40 01             	add    %ax,0x1(%bx,%si)
    1bc7:	68 01 90             	push   $0x9001
    1bca:	01 b8 01 e0          	add    %di,-0x1fff(%bx,%si)
    1bce:	01 08                	add    %cx,(%bx,%si)
    1bd0:	02 30                	add    (%bx,%si),%dh
    1bd2:	02 58 02             	add    0x2(%bx,%si),%bl
    1bd5:	80 02 a8             	addb   $0xa8,(%bp,%si)
    1bd8:	02 d0                	add    %al,%dl
    1bda:	02 f8                	add    %al,%bh
    1bdc:	02 20                	add    (%bx,%si),%ah
    1bde:	03 48 03             	add    0x3(%bx,%si),%cx
    1be1:	70 03                	jo     0x1be6
    1be3:	98                   	cbtw
    1be4:	03 c0                	add    %ax,%ax
    1be6:	03 e8                	add    %ax,%bp
    1be8:	03 10                	add    (%bx,%si),%dx
    1bea:	04 38                	add    $0x38,%al
    1bec:	04 60                	add    $0x60,%al
    1bee:	04 88                	add    $0x88,%al
    1bf0:	04 b0                	add    $0xb0,%al
    1bf2:	04 d8                	add    $0xd8,%al
    1bf4:	04 01                	add    $0x1,%al
    1bf6:	00 02                	add    %al,(%bp,%si)
    1bf8:	00 03                	add    %al,(%bp,%di)
    1bfa:	00 04                	add    %al,(%si)
    1bfc:	00 05                	add    %al,(%di)
    1bfe:	00 06 00 07          	add    %al,0x700
    1c02:	00 08                	add    %cl,(%bx,%si)
    1c04:	00 09                	add    %cl,(%bx,%di)
    1c06:	00 0a                	add    %cl,(%bp,%si)
    1c08:	00 0b                	add    %cl,(%bp,%di)
    1c0a:	00 0c                	add    %cl,(%si)
    1c0c:	00 0d                	add    %cl,(%di)
    1c0e:	00 0e 00 0f          	add    %cl,0xf00
    1c12:	00 10                	add    %dl,(%bx,%si)
    1c14:	00 11                	add    %dl,(%bx,%di)
    1c16:	00 12                	add    %dl,(%bp,%si)
    1c18:	00 13                	add    %dl,(%bp,%di)
    1c1a:	00 14                	add    %dl,(%si)
    1c1c:	00 15                	add    %dl,(%di)
    1c1e:	00 16 00 17          	add    %dl,0x1700
    1c22:	00 18                	add    %bl,(%bx,%si)
    1c24:	00 19                	add    %bl,(%bx,%di)
    1c26:	00 1a                	add    %bl,(%bp,%si)
    1c28:	00 1b                	add    %bl,(%bp,%di)
    1c2a:	00 1c                	add    %bl,(%si)
    1c2c:	00 1d                	add    %bl,(%di)
    1c2e:	00 1e 00 1f          	add    %bl,0x1f00
    1c32:	00 1f                	add    %bl,(%bx)
    1c34:	00 64 00             	add    %ah,0x0(%si)
    1c37:	c8 00 5e 01          	enter  $0x5e00,$0x1
    1c3b:	f4                   	hlt
    1c3c:	01 46 00             	add    %ax,0x0(%bp)
    1c3f:	50                   	push   %ax
    1c40:	00 5a 00             	add    %bl,0x0(%bp,%si)
    1c43:	64 00 64 00          	add    %ah,%fs:0x0(%si)
    1c47:	78 00                	js     0x1c49
    1c49:	8c 00                	mov    %es,(%bx,%si)
    1c4b:	a0 00 b4             	mov    0xb400,%al
    1c4e:	00 c8                	add    %cl,%al
    1c50:	00 dc                	add    %bl,%ah
    1c52:	00 f0                	add    %dh,%al
    1c54:	00 04                	add    %al,(%si)
    1c56:	01 18                	add    %bx,(%bx,%si)
    1c58:	01 2c                	add    %bp,(%si)
    1c5a:	01 40 01             	add    %ax,0x1(%bx,%si)
    1c5d:	54                   	push   %sp
    1c5e:	01 68 01             	add    %bp,0x1(%bx,%si)
    1c61:	7c 01                	jl     0x1c64
    1c63:	90                   	nop
    1c64:	01 a4 01 b8          	add    %sp,-0x47ff(%si)
    1c68:	01 cc                	add    %cx,%sp
    1c6a:	01 e0                	add    %sp,%ax
    1c6c:	01 f4                	add    %si,%sp
    1c6e:	01 f4                	add    %si,%sp
    1c70:	01 f4                	add    %si,%sp
    1c72:	01 f4                	add    %si,%sp
    1c74:	01 f4                	add    %si,%sp
    1c76:	01 f4                	add    %si,%sp
    1c78:	01 f4                	add    %si,%sp
    1c7a:	01 f4                	add    %si,%sp
    1c7c:	01 90 ce 18          	add    %dx,0x18ce(%bx,%si)
    1c80:	bf 18 b0             	mov    $0xb018,%di
    1c83:	18 a1 18 92          	sbb    %ah,-0x6de8(%bx,%di)
    1c87:	18 83 18 74          	sbb    %al,0x7418(%bp,%di)
    1c8b:	18 65 18             	sbb    %ah,0x18(%di)
    1c8e:	ae                   	scas   %es:(%di),%al
    1c8f:	19 9f 19 90          	sbb    %bx,-0x6fe7(%bx)
    1c93:	19 81 19 72          	sbb    %ax,0x7219(%bx,%di)
    1c97:	19 63 19             	sbb    %sp,0x19(%bp,%di)
    1c9a:	54                   	push   %sp
    1c9b:	19 45 19             	sbb    %ax,0x19(%di)
    1c9e:	7e 1b                	jle    0x1cbb
    1ca0:	6b 1b 58             	imul   $0x58,(%bp,%di),%bx
    1ca3:	1b 45 1b             	sbb    0x1b(%di),%ax
    1ca6:	32 1b                	xor    (%bp,%di),%bl
    1ca8:	1f                   	pop    %ds
    1ca9:	1b 0c                	sbb    (%si),%cx
    1cab:	1b f9                	sbb    %cx,%di
    1cad:	1a 3e 1c 2b          	sbb    0x2b1c,%bh
    1cb1:	1c 18                	sbb    $0x18,%al
    1cb3:	1c 05                	sbb    $0x5,%al
    1cb5:	1c f2                	sbb    $0xf2,%al
    1cb7:	1b df                	sbb    %di,%bx
    1cb9:	1b cc                	sbb    %sp,%cx
    1cbb:	1b b9 1b ae          	sbb    -0x51e5(%bx,%di),%di
    1cbf:	1a 95 1a 7c          	sbb    0x7c1a(%di),%dl
    1cc3:	1a 63 1a             	sbb    0x1a(%bp,%di),%ah
    1cc6:	4a                   	dec    %dx
    1cc7:	1a 31                	sbb    (%bx,%di),%dh
    1cc9:	1a 18                	sbb    (%bx,%si),%bl
    1ccb:	1a ff                	sbb    %bh,%bh
    1ccd:	19 c0                	sbb    %ax,%ax
    1ccf:	25 b5 25             	and    $0x25b5,%ax
    1cd2:	aa                   	stos   %al,%es:(%di)
    1cd3:	25 9f 25             	and    $0x259f,%ax
    1cd6:	94                   	xchg   %ax,%sp
    1cd7:	25 89 25             	and    $0x2589,%ax
    1cda:	7e 25                	jle    0x1d01
    1cdc:	73 25                	jae    0x1d03
    1cde:	3e 1d 29 1d          	ds sbb $0x1d29,%ax
    1ce2:	14 1d                	adc    $0x1d,%al
    1ce4:	ff 1c                	lcall  *(%si)
    1ce6:	ea 1c d5 1c c0       	ljmp   $0xc01c,$0xd51c
    1ceb:	1c ab                	sbb    $0xab,%al
    1ced:	1c 4e                	sbb    $0x4e,%al
    1cef:	1e                   	push   %ds
    1cf0:	39 1e 24 1e          	cmp    %bx,0x1e24
    1cf4:	0f 1e fa             	nop    %dx
    1cf7:	1d e5 1d             	sbb    $0x1de5,%ax
    1cfa:	d0 1d                	rcrb   $1,(%di)
    1cfc:	bb 1d c6             	mov    $0xc61d,%bx
    1cff:	20 ac 20 92          	and    %ch,-0x6de0(%si)
    1d03:	20 78 20             	and    %bh,0x20(%bx,%si)
    1d06:	5e                   	pop    %si
    1d07:	20 44 20             	and    %al,0x20(%si)
    1d0a:	2a 20                	sub    (%bx,%si),%ah
    1d0c:	10 20                	adc    %ah,(%bx,%si)
    1d0e:	c6                   	(bad)
    1d0f:	21 ac 21 92          	and    %bp,-0x6ddf(%si)
    1d13:	21 78 21             	and    %di,0x21(%bx,%si)
    1d16:	5e                   	pop    %si
    1d17:	21 44 21             	and    %ax,0x21(%si)
    1d1a:	2a 21                	sub    (%bx,%di),%ah
    1d1c:	10 21                	adc    %ah,(%bx,%di)
    1d1e:	be 1f 99             	mov    $0x991f,%si
    1d21:	1f                   	pop    %ds
    1d22:	74 1f                	je     0x1d43
    1d24:	4f                   	dec    %di
    1d25:	1f                   	pop    %ds
    1d26:	2a 1f                	sub    (%bx),%bl
    1d28:	05 1f e0             	add    $0xe01f,%ax
    1d2b:	1e                   	push   %ds
    1d2c:	bb 1e 1e             	mov    $0x1e1e,%bx
    1d2f:	66 81 e3 ff ff 00 00 	and    $0xffff,%ebx
    1d36:	66 81 e7 ff ff 00 00 	and    $0xffff,%edi
    1d3d:	66 c1 e0 10          	shl    $0x10,%eax
    1d41:	66 0b f8             	or     %eax,%edi
    1d44:	66 c1 c2 10          	rol    $0x10,%edx
    1d48:	ba 02 00             	mov    $0x2,%dx
    1d4b:	8e 1e 0e 0a          	mov    0xa0e,%ds
    1d4f:	83 ef 02             	sub    $0x2,%di
    1d52:	53                   	push   %bx
    1d53:	8b d9                	mov    %cx,%bx
    1d55:	c1 e9 03             	shr    $0x3,%cx
    1d58:	41                   	inc    %cx
    1d59:	83 e3 07             	and    $0x7,%bx
    1d5c:	03 db                	add    %bx,%bx
    1d5e:	2e 8b 87 6e 17       	mov    %cs:0x176e(%bx),%ax
    1d63:	5b                   	pop    %bx
    1d64:	ff e0                	jmp    *%ax
    1d66:	26 8a 1c             	mov    %es:(%si),%bl
    1d69:	66 03 fa             	add    %edx,%edi
    1d6c:	67 8b 04 1b          	mov    (%ebx,%ebx,1),%ax
    1d70:	13 f5                	adc    %bp,%si
    1d72:	65 01 05             	add    %ax,%gs:(%di)
    1d75:	26 8a 1c             	mov    %es:(%si),%bl
    1d78:	66 03 fa             	add    %edx,%edi
    1d7b:	67 8b 04 1b          	mov    (%ebx,%ebx,1),%ax
    1d7f:	13 f5                	adc    %bp,%si
    1d81:	65 01 05             	add    %ax,%gs:(%di)
    1d84:	26 8a 1c             	mov    %es:(%si),%bl
    1d87:	66 03 fa             	add    %edx,%edi
    1d8a:	67 8b 04 1b          	mov    (%ebx,%ebx,1),%ax
    1d8e:	13 f5                	adc    %bp,%si
    1d90:	65 01 05             	add    %ax,%gs:(%di)
    1d93:	26 8a 1c             	mov    %es:(%si),%bl
    1d96:	66 03 fa             	add    %edx,%edi
    1d99:	67 8b 04 1b          	mov    (%ebx,%ebx,1),%ax
    1d9d:	13 f5                	adc    %bp,%si
    1d9f:	65 01 05             	add    %ax,%gs:(%di)
    1da2:	26 8a 1c             	mov    %es:(%si),%bl
    1da5:	66 03 fa             	add    %edx,%edi
    1da8:	67 8b 04 1b          	mov    (%ebx,%ebx,1),%ax
    1dac:	13 f5                	adc    %bp,%si
    1dae:	65 01 05             	add    %ax,%gs:(%di)
    1db1:	26 8a 1c             	mov    %es:(%si),%bl
    1db4:	66 03 fa             	add    %edx,%edi
    1db7:	67 8b 04 1b          	mov    (%ebx,%ebx,1),%ax
    1dbb:	13 f5                	adc    %bp,%si
    1dbd:	65 01 05             	add    %ax,%gs:(%di)
    1dc0:	26 8a 1c             	mov    %es:(%si),%bl
    1dc3:	66 03 fa             	add    %edx,%edi
    1dc6:	67 8b 04 1b          	mov    (%ebx,%ebx,1),%ax
    1dca:	13 f5                	adc    %bp,%si
    1dcc:	65 01 05             	add    %ax,%gs:(%di)
    1dcf:	26 8a 1c             	mov    %es:(%si),%bl
    1dd2:	66 03 fa             	add    %edx,%edi
    1dd5:	67 8b 04 1b          	mov    (%ebx,%ebx,1),%ax
    1dd9:	13 f5                	adc    %bp,%si
    1ddb:	65 01 05             	add    %ax,%gs:(%di)
    1dde:	49                   	dec    %cx
    1ddf:	75 85                	jne    0x1d66
    1de1:	83 c7 02             	add    $0x2,%di
    1de4:	eb 00                	jmp    0x1de6
    1de6:	66 8b c7             	mov    %edi,%eax
    1de9:	66 c1 e8 10          	shr    $0x10,%eax
    1ded:	1f                   	pop    %ds
    1dee:	c3                   	ret
    1def:	1e                   	push   %ds
    1df0:	66 81 e7 ff ff 00 00 	and    $0xffff,%edi
    1df7:	66 81 e3 ff ff 00 00 	and    $0xffff,%ebx
    1dfe:	66 c1 e0 10          	shl    $0x10,%eax
    1e02:	66 0b f8             	or     %eax,%edi
    1e05:	66 c1 c2 10          	rol    $0x10,%edx
    1e09:	ba 04 00             	mov    $0x4,%dx
    1e0c:	80 3e 3d 0a 64       	cmpb   $0x64,0xa3d
    1e11:	0f 84 84 02          	je     0x2099
    1e15:	80 3e 3d 0a 00       	cmpb   $0x0,0xa3d
    1e1a:	0f 84 a9 00          	je     0x1ec7
    1e1e:	83 ef 04             	sub    $0x4,%di
    1e21:	8e 1e 0e 0a          	mov    0xa0e,%ds
    1e25:	53                   	push   %bx
    1e26:	8b d9                	mov    %cx,%bx
    1e28:	c1 e9 03             	shr    $0x3,%cx
    1e2b:	41                   	inc    %cx
    1e2c:	83 e3 07             	and    $0x7,%bx
    1e2f:	03 db                	add    %bx,%bx
    1e31:	2e 8b 87 7e 17       	mov    %cs:0x177e(%bx),%ax
    1e36:	5b                   	pop    %bx
    1e37:	ff e0                	jmp    *%ax
    1e39:	87 db                	xchg   %bx,%bx
    1e3b:	87 db                	xchg   %bx,%bx
    1e3d:	87 db                	xchg   %bx,%bx
    1e3f:	87 db                	xchg   %bx,%bx
    1e41:	87 db                	xchg   %bx,%bx
    1e43:	87 db                	xchg   %bx,%bx
    1e45:	90                   	nop
    1e46:	26 8a 1c             	mov    %es:(%si),%bl
    1e49:	66 03 fa             	add    %edx,%edi
    1e4c:	67 8b 04 1b          	mov    (%ebx,%ebx,1),%ax
    1e50:	13 f5                	adc    %bp,%si
    1e52:	65 01 05             	add    %ax,%gs:(%di)
    1e55:	26 8a 1c             	mov    %es:(%si),%bl
    1e58:	66 03 fa             	add    %edx,%edi
    1e5b:	67 8b 04 1b          	mov    (%ebx,%ebx,1),%ax
    1e5f:	13 f5                	adc    %bp,%si
    1e61:	65 01 05             	add    %ax,%gs:(%di)
    1e64:	26 8a 1c             	mov    %es:(%si),%bl
    1e67:	66 03 fa             	add    %edx,%edi
    1e6a:	67 8b 04 1b          	mov    (%ebx,%ebx,1),%ax
    1e6e:	13 f5                	adc    %bp,%si
    1e70:	65 01 05             	add    %ax,%gs:(%di)
    1e73:	26 8a 1c             	mov    %es:(%si),%bl
    1e76:	66 03 fa             	add    %edx,%edi
    1e79:	67 8b 04 1b          	mov    (%ebx,%ebx,1),%ax
    1e7d:	13 f5                	adc    %bp,%si
    1e7f:	65 01 05             	add    %ax,%gs:(%di)
    1e82:	26 8a 1c             	mov    %es:(%si),%bl
    1e85:	66 03 fa             	add    %edx,%edi
    1e88:	67 8b 04 1b          	mov    (%ebx,%ebx,1),%ax
    1e8c:	13 f5                	adc    %bp,%si
    1e8e:	65 01 05             	add    %ax,%gs:(%di)
    1e91:	26 8a 1c             	mov    %es:(%si),%bl
    1e94:	66 03 fa             	add    %edx,%edi
    1e97:	67 8b 04 1b          	mov    (%ebx,%ebx,1),%ax
    1e9b:	13 f5                	adc    %bp,%si
    1e9d:	65 01 05             	add    %ax,%gs:(%di)
    1ea0:	26 8a 1c             	mov    %es:(%si),%bl
    1ea3:	66 03 fa             	add    %edx,%edi
    1ea6:	67 8b 04 1b          	mov    (%ebx,%ebx,1),%ax
    1eaa:	13 f5                	adc    %bp,%si
    1eac:	65 01 05             	add    %ax,%gs:(%di)
    1eaf:	26 8a 1c             	mov    %es:(%si),%bl
    1eb2:	66 03 fa             	add    %edx,%edi
    1eb5:	67 8b 04 1b          	mov    (%ebx,%ebx,1),%ax
    1eb9:	13 f5                	adc    %bp,%si
    1ebb:	65 01 05             	add    %ax,%gs:(%di)
    1ebe:	49                   	dec    %cx
    1ebf:	75 85                	jne    0x1e46
    1ec1:	83 c7 04             	add    $0x4,%di
    1ec4:	e9 91 02             	jmp    0x2158
    1ec7:	80 3e 3e 0a 00       	cmpb   $0x0,0xa3e
    1ecc:	0f 84 fd 00          	je     0x1fcd
    1ed0:	83 ef 04             	sub    $0x4,%di
    1ed3:	8e 1e 0e 0a          	mov    0xa0e,%ds
    1ed7:	53                   	push   %bx
    1ed8:	8b d9                	mov    %cx,%bx
    1eda:	c1 e9 03             	shr    $0x3,%cx
    1edd:	41                   	inc    %cx
    1ede:	83 e3 07             	and    $0x7,%bx
    1ee1:	03 db                	add    %bx,%bx
    1ee3:	2e 8b 87 ae 17       	mov    %cs:0x17ae(%bx),%ax
    1ee8:	5b                   	pop    %bx
    1ee9:	51                   	push   %cx
    1eea:	8a eb                	mov    %bl,%ch
    1eec:	66 81 e1 ff ff 00 00 	and    $0xffff,%ecx
    1ef3:	ff e0                	jmp    *%ax
    1ef5:	90                   	nop
    1ef6:	66 03 fa             	add    %edx,%edi
    1ef9:	26 8a 1c             	mov    %es:(%si),%bl
    1efc:	13 f5                	adc    %bp,%si
    1efe:	8a cb                	mov    %bl,%cl
    1f00:	67 8b 04 1b          	mov    (%ebx,%ebx,1),%ax
    1f04:	65 01 05             	add    %ax,%gs:(%di)
    1f07:	67 8b 04 09          	mov    (%ecx,%ecx,1),%ax
    1f0b:	65 01 45 02          	add    %ax,%gs:0x2(%di)
    1f0f:	66 03 fa             	add    %edx,%edi
    1f12:	26 8a 1c             	mov    %es:(%si),%bl
    1f15:	13 f5                	adc    %bp,%si
    1f17:	8a cb                	mov    %bl,%cl
    1f19:	67 8b 04 1b          	mov    (%ebx,%ebx,1),%ax
    1f1d:	65 01 05             	add    %ax,%gs:(%di)
    1f20:	67 8b 04 09          	mov    (%ecx,%ecx,1),%ax
    1f24:	65 01 45 02          	add    %ax,%gs:0x2(%di)
    1f28:	66 03 fa             	add    %edx,%edi
    1f2b:	26 8a 1c             	mov    %es:(%si),%bl
    1f2e:	13 f5                	adc    %bp,%si
    1f30:	8a cb                	mov    %bl,%cl
    1f32:	67 8b 04 1b          	mov    (%ebx,%ebx,1),%ax
    1f36:	65 01 05             	add    %ax,%gs:(%di)
    1f39:	67 8b 04 09          	mov    (%ecx,%ecx,1),%ax
    1f3d:	65 01 45 02          	add    %ax,%gs:0x2(%di)
    1f41:	66 03 fa             	add    %edx,%edi
    1f44:	26 8a 1c             	mov    %es:(%si),%bl
    1f47:	13 f5                	adc    %bp,%si
    1f49:	8a cb                	mov    %bl,%cl
    1f4b:	67 8b 04 1b          	mov    (%ebx,%ebx,1),%ax
    1f4f:	65 01 05             	add    %ax,%gs:(%di)
    1f52:	67 8b 04 09          	mov    (%ecx,%ecx,1),%ax
    1f56:	65 01 45 02          	add    %ax,%gs:0x2(%di)
    1f5a:	66 03 fa             	add    %edx,%edi
    1f5d:	26 8a 1c             	mov    %es:(%si),%bl
    1f60:	13 f5                	adc    %bp,%si
    1f62:	8a cb                	mov    %bl,%cl
    1f64:	67 8b 04 1b          	mov    (%ebx,%ebx,1),%ax
    1f68:	65 01 05             	add    %ax,%gs:(%di)
    1f6b:	67 8b 04 09          	mov    (%ecx,%ecx,1),%ax
    1f6f:	65 01 45 02          	add    %ax,%gs:0x2(%di)
    1f73:	66 03 fa             	add    %edx,%edi
    1f76:	26 8a 1c             	mov    %es:(%si),%bl
    1f79:	13 f5                	adc    %bp,%si
    1f7b:	8a cb                	mov    %bl,%cl
    1f7d:	67 8b 04 1b          	mov    (%ebx,%ebx,1),%ax
    1f81:	65 01 05             	add    %ax,%gs:(%di)
    1f84:	67 8b 04 09          	mov    (%ecx,%ecx,1),%ax
    1f88:	65 01 45 02          	add    %ax,%gs:0x2(%di)
    1f8c:	66 03 fa             	add    %edx,%edi
    1f8f:	26 8a 1c             	mov    %es:(%si),%bl
    1f92:	13 f5                	adc    %bp,%si
    1f94:	8a cb                	mov    %bl,%cl
    1f96:	67 8b 04 1b          	mov    (%ebx,%ebx,1),%ax
    1f9a:	65 01 05             	add    %ax,%gs:(%di)
    1f9d:	67 8b 04 09          	mov    (%ecx,%ecx,1),%ax
    1fa1:	65 01 45 02          	add    %ax,%gs:0x2(%di)
    1fa5:	66 03 fa             	add    %edx,%edi
    1fa8:	26 8a 1c             	mov    %es:(%si),%bl
    1fab:	13 f5                	adc    %bp,%si
    1fad:	8a cb                	mov    %bl,%cl
    1faf:	67 8b 04 1b          	mov    (%ebx,%ebx,1),%ax
    1fb3:	65 01 05             	add    %ax,%gs:(%di)
    1fb6:	67 8b 04 09          	mov    (%ecx,%ecx,1),%ax
    1fba:	65 01 45 02          	add    %ax,%gs:0x2(%di)
    1fbe:	67 ff 0c 24          	decw   (%esp)
    1fc2:	0f 85 30 ff          	jne    0x1ef6
    1fc6:	59                   	pop    %cx
    1fc7:	83 c7 04             	add    $0x4,%di
    1fca:	e9 8b 01             	jmp    0x2158
    1fcd:	83 ef 04             	sub    $0x4,%di
    1fd0:	8e 1e 0e 0a          	mov    0xa0e,%ds
    1fd4:	53                   	push   %bx
    1fd5:	8b d9                	mov    %cx,%bx
    1fd7:	c1 e9 03             	shr    $0x3,%cx
    1fda:	41                   	inc    %cx
    1fdb:	83 e3 07             	and    $0x7,%bx
    1fde:	03 db                	add    %bx,%bx
    1fe0:	2e 8b 87 8e 17       	mov    %cs:0x178e(%bx),%ax
    1fe5:	5b                   	pop    %bx
    1fe6:	ff e0                	jmp    *%ax
    1fe8:	87 db                	xchg   %bx,%bx
    1fea:	87 db                	xchg   %bx,%bx
    1fec:	87 db                	xchg   %bx,%bx
    1fee:	87 db                	xchg   %bx,%bx
    1ff0:	87 db                	xchg   %bx,%bx
    1ff2:	87 db                	xchg   %bx,%bx
    1ff4:	87 db                	xchg   %bx,%bx
    1ff6:	66 03 fa             	add    %edx,%edi
    1ff9:	26 8a 1c             	mov    %es:(%si),%bl
    1ffc:	13 f5                	adc    %bp,%si
    1ffe:	67 8b 04 1b          	mov    (%ebx,%ebx,1),%ax
    2002:	65 01 05             	add    %ax,%gs:(%di)
    2005:	65 01 45 02          	add    %ax,%gs:0x2(%di)
    2009:	66 03 fa             	add    %edx,%edi
    200c:	26 8a 1c             	mov    %es:(%si),%bl
    200f:	13 f5                	adc    %bp,%si
    2011:	67 8b 04 1b          	mov    (%ebx,%ebx,1),%ax
    2015:	65 01 05             	add    %ax,%gs:(%di)
    2018:	65 01 45 02          	add    %ax,%gs:0x2(%di)
    201c:	66 03 fa             	add    %edx,%edi
    201f:	26 8a 1c             	mov    %es:(%si),%bl
    2022:	13 f5                	adc    %bp,%si
    2024:	67 8b 04 1b          	mov    (%ebx,%ebx,1),%ax
    2028:	65 01 05             	add    %ax,%gs:(%di)
    202b:	65 01 45 02          	add    %ax,%gs:0x2(%di)
    202f:	66 03 fa             	add    %edx,%edi
    2032:	26 8a 1c             	mov    %es:(%si),%bl
    2035:	13 f5                	adc    %bp,%si
    2037:	67 8b 04 1b          	mov    (%ebx,%ebx,1),%ax
    203b:	65 01 05             	add    %ax,%gs:(%di)
    203e:	65 01 45 02          	add    %ax,%gs:0x2(%di)
    2042:	66 03 fa             	add    %edx,%edi
    2045:	26 8a 1c             	mov    %es:(%si),%bl
    2048:	13 f5                	adc    %bp,%si
    204a:	67 8b 04 1b          	mov    (%ebx,%ebx,1),%ax
    204e:	65 01 05             	add    %ax,%gs:(%di)
    2051:	65 01 45 02          	add    %ax,%gs:0x2(%di)
    2055:	66 03 fa             	add    %edx,%edi
    2058:	26 8a 1c             	mov    %es:(%si),%bl
    205b:	13 f5                	adc    %bp,%si
    205d:	67 8b 04 1b          	mov    (%ebx,%ebx,1),%ax
    2061:	65 01 05             	add    %ax,%gs:(%di)
    2064:	65 01 45 02          	add    %ax,%gs:0x2(%di)
    2068:	66 03 fa             	add    %edx,%edi
    206b:	26 8a 1c             	mov    %es:(%si),%bl
    206e:	13 f5                	adc    %bp,%si
    2070:	67 8b 04 1b          	mov    (%ebx,%ebx,1),%ax
    2074:	65 01 05             	add    %ax,%gs:(%di)
    2077:	65 01 45 02          	add    %ax,%gs:0x2(%di)
    207b:	66 03 fa             	add    %edx,%edi
    207e:	26 8a 1c             	mov    %es:(%si),%bl
    2081:	13 f5                	adc    %bp,%si
    2083:	67 8b 04 1b          	mov    (%ebx,%ebx,1),%ax
    2087:	65 01 05             	add    %ax,%gs:(%di)
    208a:	65 01 45 02          	add    %ax,%gs:0x2(%di)
    208e:	49                   	dec    %cx
    208f:	0f 85 63 ff          	jne    0x1ff6
    2093:	83 c7 04             	add    $0x4,%di
    2096:	e9 bf 00             	jmp    0x2158
    2099:	83 ef 04             	sub    $0x4,%di
    209c:	8e 1e 0e 0a          	mov    0xa0e,%ds
    20a0:	53                   	push   %bx
    20a1:	8b d9                	mov    %cx,%bx
    20a3:	c1 e9 03             	shr    $0x3,%cx
    20a6:	41                   	inc    %cx
    20a7:	83 e3 07             	and    $0x7,%bx
    20aa:	03 db                	add    %bx,%bx
    20ac:	2e 8b 87 9e 17       	mov    %cs:0x179e(%bx),%ax
    20b1:	5b                   	pop    %bx
    20b2:	ff e0                	jmp    *%ax
    20b4:	87 db                	xchg   %bx,%bx
    20b6:	66 03 fa             	add    %edx,%edi
    20b9:	26 8a 1c             	mov    %es:(%si),%bl
    20bc:	13 f5                	adc    %bp,%si
    20be:	67 8b 04 1b          	mov    (%ebx,%ebx,1),%ax
    20c2:	65 01 05             	add    %ax,%gs:(%di)
    20c5:	65 29 45 02          	sub    %ax,%gs:0x2(%di)
    20c9:	66 03 fa             	add    %edx,%edi
    20cc:	26 8a 1c             	mov    %es:(%si),%bl
    20cf:	13 f5                	adc    %bp,%si
    20d1:	67 8b 04 1b          	mov    (%ebx,%ebx,1),%ax
    20d5:	65 01 05             	add    %ax,%gs:(%di)
    20d8:	65 29 45 02          	sub    %ax,%gs:0x2(%di)
    20dc:	66 03 fa             	add    %edx,%edi
    20df:	26 8a 1c             	mov    %es:(%si),%bl
    20e2:	13 f5                	adc    %bp,%si
    20e4:	67 8b 04 1b          	mov    (%ebx,%ebx,1),%ax
    20e8:	65 01 05             	add    %ax,%gs:(%di)
    20eb:	65 29 45 02          	sub    %ax,%gs:0x2(%di)
    20ef:	66 03 fa             	add    %edx,%edi
    20f2:	26 8a 1c             	mov    %es:(%si),%bl
    20f5:	13 f5                	adc    %bp,%si
    20f7:	67 8b 04 1b          	mov    (%ebx,%ebx,1),%ax
    20fb:	65 01 05             	add    %ax,%gs:(%di)
    20fe:	65 29 45 02          	sub    %ax,%gs:0x2(%di)
    2102:	66 03 fa             	add    %edx,%edi
    2105:	26 8a 1c             	mov    %es:(%si),%bl
    2108:	13 f5                	adc    %bp,%si
    210a:	67 8b 04 1b          	mov    (%ebx,%ebx,1),%ax
    210e:	65 01 05             	add    %ax,%gs:(%di)
    2111:	65 29 45 02          	sub    %ax,%gs:0x2(%di)
    2115:	66 03 fa             	add    %edx,%edi
    2118:	26 8a 1c             	mov    %es:(%si),%bl
    211b:	13 f5                	adc    %bp,%si
    211d:	67 8b 04 1b          	mov    (%ebx,%ebx,1),%ax
    2121:	65 01 05             	add    %ax,%gs:(%di)
    2124:	65 29 45 02          	sub    %ax,%gs:0x2(%di)
    2128:	66 03 fa             	add    %edx,%edi
    212b:	26 8a 1c             	mov    %es:(%si),%bl
    212e:	13 f5                	adc    %bp,%si
    2130:	67 8b 04 1b          	mov    (%ebx,%ebx,1),%ax
    2134:	65 01 05             	add    %ax,%gs:(%di)
    2137:	65 29 45 02          	sub    %ax,%gs:0x2(%di)
    213b:	66 03 fa             	add    %edx,%edi
    213e:	26 8a 1c             	mov    %es:(%si),%bl
    2141:	13 f5                	adc    %bp,%si
    2143:	67 8b 04 1b          	mov    (%ebx,%ebx,1),%ax
    2147:	65 01 05             	add    %ax,%gs:(%di)
    214a:	65 29 45 02          	sub    %ax,%gs:0x2(%di)
    214e:	49                   	dec    %cx
    214f:	0f 85 63 ff          	jne    0x20b6
    2153:	83 c7 04             	add    $0x4,%di
    2156:	eb 00                	jmp    0x2158
    2158:	66 8b c7             	mov    %edi,%eax
    215b:	66 c1 e8 10          	shr    $0x10,%eax
    215f:	1f                   	pop    %ds
    2160:	c3                   	ret
    2161:	1e                   	push   %ds
    2162:	66 81 e3 ff ff 00 00 	and    $0xffff,%ebx
    2169:	66 81 e7 ff ff 00 00 	and    $0xffff,%edi
    2170:	66 c1 e0 10          	shl    $0x10,%eax
    2174:	66 0b f8             	or     %eax,%edi
    2177:	66 c1 c2 10          	rol    $0x10,%edx
    217b:	ba 04 00             	mov    $0x4,%dx
    217e:	8e 1e 0e 0a          	mov    0xa0e,%ds
    2182:	83 ef 04             	sub    $0x4,%di
    2185:	53                   	push   %bx
    2186:	8b d9                	mov    %cx,%bx
    2188:	c1 e9 03             	shr    $0x3,%cx
    218b:	41                   	inc    %cx
    218c:	83 e3 07             	and    $0x7,%bx
    218f:	03 db                	add    %bx,%bx
    2191:	2e 8b 87 ce 17       	mov    %cs:0x17ce(%bx),%ax
    2196:	5b                   	pop    %bx
    2197:	ff e0                	jmp    *%ax
    2199:	87 db                	xchg   %bx,%bx
    219b:	87 db                	xchg   %bx,%bx
    219d:	87 db                	xchg   %bx,%bx
    219f:	87 db                	xchg   %bx,%bx
    21a1:	87 db                	xchg   %bx,%bx
    21a3:	87 db                	xchg   %bx,%bx
    21a5:	90                   	nop
    21a6:	26 8a 1c             	mov    %es:(%si),%bl
    21a9:	66 03 fa             	add    %edx,%edi
    21ac:	66 67 8b 04 9d 00 00 	mov    0x0(,%ebx,4),%eax
    21b3:	00 00 
    21b5:	13 f5                	adc    %bp,%si
    21b7:	66 65 01 05          	add    %eax,%gs:(%di)
    21bb:	26 8a 1c             	mov    %es:(%si),%bl
    21be:	66 03 fa             	add    %edx,%edi
    21c1:	66 67 8b 04 9d 00 00 	mov    0x0(,%ebx,4),%eax
    21c8:	00 00 
    21ca:	13 f5                	adc    %bp,%si
    21cc:	66 65 01 05          	add    %eax,%gs:(%di)
    21d0:	26 8a 1c             	mov    %es:(%si),%bl
    21d3:	66 03 fa             	add    %edx,%edi
    21d6:	66 67 8b 04 9d 00 00 	mov    0x0(,%ebx,4),%eax
    21dd:	00 00 
    21df:	13 f5                	adc    %bp,%si
    21e1:	66 65 01 05          	add    %eax,%gs:(%di)
    21e5:	26 8a 1c             	mov    %es:(%si),%bl
    21e8:	66 03 fa             	add    %edx,%edi
    21eb:	66 67 8b 04 9d 00 00 	mov    0x0(,%ebx,4),%eax
    21f2:	00 00 
    21f4:	13 f5                	adc    %bp,%si
    21f6:	66 65 01 05          	add    %eax,%gs:(%di)
    21fa:	26 8a 1c             	mov    %es:(%si),%bl
    21fd:	66 03 fa             	add    %edx,%edi
    2200:	66 67 8b 04 9d 00 00 	mov    0x0(,%ebx,4),%eax
    2207:	00 00 
    2209:	13 f5                	adc    %bp,%si
    220b:	66 65 01 05          	add    %eax,%gs:(%di)
    220f:	26 8a 1c             	mov    %es:(%si),%bl
    2212:	66 03 fa             	add    %edx,%edi
    2215:	66 67 8b 04 9d 00 00 	mov    0x0(,%ebx,4),%eax
    221c:	00 00 
    221e:	13 f5                	adc    %bp,%si
    2220:	66 65 01 05          	add    %eax,%gs:(%di)
    2224:	26 8a 1c             	mov    %es:(%si),%bl
    2227:	66 03 fa             	add    %edx,%edi
    222a:	66 67 8b 04 9d 00 00 	mov    0x0(,%ebx,4),%eax
    2231:	00 00 
    2233:	13 f5                	adc    %bp,%si
    2235:	66 65 01 05          	add    %eax,%gs:(%di)
    2239:	26 8a 1c             	mov    %es:(%si),%bl
    223c:	66 03 fa             	add    %edx,%edi
    223f:	66 67 8b 04 9d 00 00 	mov    0x0(,%ebx,4),%eax
    2246:	00 00 
    2248:	13 f5                	adc    %bp,%si
    224a:	66 65 01 05          	add    %eax,%gs:(%di)
    224e:	49                   	dec    %cx
    224f:	0f 85 53 ff          	jne    0x21a6
    2253:	83 c7 04             	add    $0x4,%di
    2256:	eb 00                	jmp    0x2258
    2258:	66 8b c7             	mov    %edi,%eax
    225b:	66 c1 e8 10          	shr    $0x10,%eax
    225f:	1f                   	pop    %ds
    2260:	c3                   	ret
    2261:	1e                   	push   %ds
    2262:	66 81 e7 ff ff 00 00 	and    $0xffff,%edi
    2269:	66 81 e3 ff ff 00 00 	and    $0xffff,%ebx
    2270:	66 c1 e0 10          	shl    $0x10,%eax
    2274:	66 0b f8             	or     %eax,%edi
    2277:	66 c1 c2 10          	rol    $0x10,%edx
    227b:	ba 08 00             	mov    $0x8,%dx
    227e:	80 3e 3d 0a 64       	cmpb   $0x64,0xa3d
    2283:	0f 84 5a 03          	je     0x25e1
    2287:	80 3e 3d 0a 00       	cmpb   $0x0,0xa3d
    228c:	0f 84 d9 00          	je     0x2369
    2290:	83 ef 08             	sub    $0x8,%di
    2293:	8e 1e 0e 0a          	mov    0xa0e,%ds
    2297:	53                   	push   %bx
    2298:	8b d9                	mov    %cx,%bx
    229a:	c1 e9 03             	shr    $0x3,%cx
    229d:	41                   	inc    %cx
    229e:	83 e3 07             	and    $0x7,%bx
    22a1:	03 db                	add    %bx,%bx
    22a3:	2e 8b 87 de 17       	mov    %cs:0x17de(%bx),%ax
    22a8:	5b                   	pop    %bx
    22a9:	ff e0                	jmp    *%ax
    22ab:	87 db                	xchg   %bx,%bx
    22ad:	87 db                	xchg   %bx,%bx
    22af:	87 db                	xchg   %bx,%bx
    22b1:	87 db                	xchg   %bx,%bx
    22b3:	87 db                	xchg   %bx,%bx
    22b5:	90                   	nop
    22b6:	26 8a 1c             	mov    %es:(%si),%bl
    22b9:	66 03 fa             	add    %edx,%edi
    22bc:	66 67 8b 04 9d 00 00 	mov    0x0(,%ebx,4),%eax
    22c3:	00 00 
    22c5:	13 f5                	adc    %bp,%si
    22c7:	66 65 01 05          	add    %eax,%gs:(%di)
    22cb:	26 8a 1c             	mov    %es:(%si),%bl
    22ce:	66 03 fa             	add    %edx,%edi
    22d1:	66 67 8b 04 9d 00 00 	mov    0x0(,%ebx,4),%eax
    22d8:	00 00 
    22da:	13 f5                	adc    %bp,%si
    22dc:	66 65 01 05          	add    %eax,%gs:(%di)
    22e0:	26 8a 1c             	mov    %es:(%si),%bl
    22e3:	66 03 fa             	add    %edx,%edi
    22e6:	66 67 8b 04 9d 00 00 	mov    0x0(,%ebx,4),%eax
    22ed:	00 00 
    22ef:	13 f5                	adc    %bp,%si
    22f1:	66 65 01 05          	add    %eax,%gs:(%di)
    22f5:	26 8a 1c             	mov    %es:(%si),%bl
    22f8:	66 03 fa             	add    %edx,%edi
    22fb:	66 67 8b 04 9d 00 00 	mov    0x0(,%ebx,4),%eax
    2302:	00 00 
    2304:	13 f5                	adc    %bp,%si
    2306:	66 65 01 05          	add    %eax,%gs:(%di)
    230a:	26 8a 1c             	mov    %es:(%si),%bl
    230d:	66 03 fa             	add    %edx,%edi
    2310:	66 67 8b 04 9d 00 00 	mov    0x0(,%ebx,4),%eax
    2317:	00 00 
    2319:	13 f5                	adc    %bp,%si
    231b:	66 65 01 05          	add    %eax,%gs:(%di)
    231f:	26 8a 1c             	mov    %es:(%si),%bl
    2322:	66 03 fa             	add    %edx,%edi
    2325:	66 67 8b 04 9d 00 00 	mov    0x0(,%ebx,4),%eax
    232c:	00 00 
    232e:	13 f5                	adc    %bp,%si
    2330:	66 65 01 05          	add    %eax,%gs:(%di)
    2334:	26 8a 1c             	mov    %es:(%si),%bl
    2337:	66 03 fa             	add    %edx,%edi
    233a:	66 67 8b 04 9d 00 00 	mov    0x0(,%ebx,4),%eax
    2341:	00 00 
    2343:	13 f5                	adc    %bp,%si
    2345:	66 65 01 05          	add    %eax,%gs:(%di)
    2349:	26 8a 1c             	mov    %es:(%si),%bl
    234c:	66 03 fa             	add    %edx,%edi
    234f:	66 67 8b 04 9d 00 00 	mov    0x0(,%ebx,4),%eax
    2356:	00 00 
    2358:	13 f5                	adc    %bp,%si
    235a:	66 65 01 05          	add    %eax,%gs:(%di)
    235e:	49                   	dec    %cx
    235f:	0f 85 53 ff          	jne    0x22b6
    2363:	83 c7 08             	add    $0x8,%di
    2366:	e9 77 03             	jmp    0x26e0
    2369:	80 3e 3e 0a 00       	cmpb   $0x0,0xa3e
    236e:	0f 84 6b 01          	je     0x24dd
    2372:	83 ef 08             	sub    $0x8,%di
    2375:	8e 1e 0e 0a          	mov    0xa0e,%ds
    2379:	53                   	push   %bx
    237a:	8b d9                	mov    %cx,%bx
    237c:	c1 e9 03             	shr    $0x3,%cx
    237f:	41                   	inc    %cx
    2380:	83 e3 07             	and    $0x7,%bx
    2383:	03 db                	add    %bx,%bx
    2385:	2e 8b 87 0e 18       	mov    %cs:0x180e(%bx),%ax
    238a:	5b                   	pop    %bx
    238b:	66 81 e4 ff ff 00 00 	and    $0xffff,%esp
    2392:	51                   	push   %cx
    2393:	8a eb                	mov    %bl,%ch
    2395:	66 81 e1 ff ff 00 00 	and    $0xffff,%ecx
    239c:	ff e0                	jmp    *%ax
    239e:	87 db                	xchg   %bx,%bx
    23a0:	87 db                	xchg   %bx,%bx
    23a2:	87 db                	xchg   %bx,%bx
    23a4:	87 db                	xchg   %bx,%bx
    23a6:	66 03 fa             	add    %edx,%edi
    23a9:	26 8a 1c             	mov    %es:(%si),%bl
    23ac:	13 f5                	adc    %bp,%si
    23ae:	66 67 8b 04 9d 00 00 	mov    0x0(,%ebx,4),%eax
    23b5:	00 00 
    23b7:	8a cb                	mov    %bl,%cl
    23b9:	66 65 01 05          	add    %eax,%gs:(%di)
    23bd:	66 67 8b 04 8d 00 00 	mov    0x0(,%ecx,4),%eax
    23c4:	00 00 
    23c6:	66 65 01 45 04       	add    %eax,%gs:0x4(%di)
    23cb:	66 03 fa             	add    %edx,%edi
    23ce:	26 8a 1c             	mov    %es:(%si),%bl
    23d1:	13 f5                	adc    %bp,%si
    23d3:	66 67 8b 04 9d 00 00 	mov    0x0(,%ebx,4),%eax
    23da:	00 00 
    23dc:	8a cb                	mov    %bl,%cl
    23de:	66 65 01 05          	add    %eax,%gs:(%di)
    23e2:	66 67 8b 04 8d 00 00 	mov    0x0(,%ecx,4),%eax
    23e9:	00 00 
    23eb:	66 65 01 45 04       	add    %eax,%gs:0x4(%di)
    23f0:	66 03 fa             	add    %edx,%edi
    23f3:	26 8a 1c             	mov    %es:(%si),%bl
    23f6:	13 f5                	adc    %bp,%si
    23f8:	66 67 8b 04 9d 00 00 	mov    0x0(,%ebx,4),%eax
    23ff:	00 00 
    2401:	8a cb                	mov    %bl,%cl
    2403:	66 65 01 05          	add    %eax,%gs:(%di)
    2407:	66 67 8b 04 8d 00 00 	mov    0x0(,%ecx,4),%eax
    240e:	00 00 
    2410:	66 65 01 45 04       	add    %eax,%gs:0x4(%di)
    2415:	66 03 fa             	add    %edx,%edi
    2418:	26 8a 1c             	mov    %es:(%si),%bl
    241b:	13 f5                	adc    %bp,%si
    241d:	66 67 8b 04 9d 00 00 	mov    0x0(,%ebx,4),%eax
    2424:	00 00 
    2426:	8a cb                	mov    %bl,%cl
    2428:	66 65 01 05          	add    %eax,%gs:(%di)
    242c:	66 67 8b 04 8d 00 00 	mov    0x0(,%ecx,4),%eax
    2433:	00 00 
    2435:	66 65 01 45 04       	add    %eax,%gs:0x4(%di)
    243a:	66 03 fa             	add    %edx,%edi
    243d:	26 8a 1c             	mov    %es:(%si),%bl
    2440:	13 f5                	adc    %bp,%si
    2442:	66 67 8b 04 9d 00 00 	mov    0x0(,%ebx,4),%eax
    2449:	00 00 
    244b:	8a cb                	mov    %bl,%cl
    244d:	66 65 01 05          	add    %eax,%gs:(%di)
    2451:	66 67 8b 04 8d 00 00 	mov    0x0(,%ecx,4),%eax
    2458:	00 00 
    245a:	66 65 01 45 04       	add    %eax,%gs:0x4(%di)
    245f:	66 03 fa             	add    %edx,%edi
    2462:	26 8a 1c             	mov    %es:(%si),%bl
    2465:	13 f5                	adc    %bp,%si
    2467:	66 67 8b 04 9d 00 00 	mov    0x0(,%ebx,4),%eax
    246e:	00 00 
    2470:	8a cb                	mov    %bl,%cl
    2472:	66 65 01 05          	add    %eax,%gs:(%di)
    2476:	66 67 8b 04 8d 00 00 	mov    0x0(,%ecx,4),%eax
    247d:	00 00 
    247f:	66 65 01 45 04       	add    %eax,%gs:0x4(%di)
    2484:	66 03 fa             	add    %edx,%edi
    2487:	26 8a 1c             	mov    %es:(%si),%bl
    248a:	13 f5                	adc    %bp,%si
    248c:	66 67 8b 04 9d 00 00 	mov    0x0(,%ebx,4),%eax
    2493:	00 00 
    2495:	8a cb                	mov    %bl,%cl
    2497:	66 65 01 05          	add    %eax,%gs:(%di)
    249b:	66 67 8b 04 8d 00 00 	mov    0x0(,%ecx,4),%eax
    24a2:	00 00 
    24a4:	66 65 01 45 04       	add    %eax,%gs:0x4(%di)
    24a9:	66 03 fa             	add    %edx,%edi
    24ac:	26 8a 1c             	mov    %es:(%si),%bl
    24af:	13 f5                	adc    %bp,%si
    24b1:	66 67 8b 04 9d 00 00 	mov    0x0(,%ebx,4),%eax
    24b8:	00 00 
    24ba:	8a cb                	mov    %bl,%cl
    24bc:	66 65 01 05          	add    %eax,%gs:(%di)
    24c0:	66 67 8b 04 8d 00 00 	mov    0x0(,%ecx,4),%eax
    24c7:	00 00 
    24c9:	66 65 01 45 04       	add    %eax,%gs:0x4(%di)
    24ce:	67 ff 0c 24          	decw   (%esp)
    24d2:	0f 85 d0 fe          	jne    0x23a6
    24d6:	59                   	pop    %cx
    24d7:	83 c7 08             	add    $0x8,%di
    24da:	e9 03 02             	jmp    0x26e0
    24dd:	83 ef 08             	sub    $0x8,%di
    24e0:	8e 1e 0e 0a          	mov    0xa0e,%ds
    24e4:	53                   	push   %bx
    24e5:	8b d9                	mov    %cx,%bx
    24e7:	c1 e9 03             	shr    $0x3,%cx
    24ea:	41                   	inc    %cx
    24eb:	83 e3 07             	and    $0x7,%bx
    24ee:	03 db                	add    %bx,%bx
    24f0:	2e 8b 87 ee 17       	mov    %cs:0x17ee(%bx),%ax
    24f5:	5b                   	pop    %bx
    24f6:	ff e0                	jmp    *%ax
    24f8:	87 db                	xchg   %bx,%bx
    24fa:	87 db                	xchg   %bx,%bx
    24fc:	87 db                	xchg   %bx,%bx
    24fe:	87 db                	xchg   %bx,%bx
    2500:	87 db                	xchg   %bx,%bx
    2502:	87 db                	xchg   %bx,%bx
    2504:	87 db                	xchg   %bx,%bx
    2506:	66 03 fa             	add    %edx,%edi
    2509:	26 8a 1c             	mov    %es:(%si),%bl
    250c:	13 f5                	adc    %bp,%si
    250e:	66 67 8b 04 9d 00 00 	mov    0x0(,%ebx,4),%eax
    2515:	00 00 
    2517:	66 65 01 05          	add    %eax,%gs:(%di)
    251b:	66 65 01 45 04       	add    %eax,%gs:0x4(%di)
    2520:	66 03 fa             	add    %edx,%edi
    2523:	26 8a 1c             	mov    %es:(%si),%bl
    2526:	13 f5                	adc    %bp,%si
    2528:	66 67 8b 04 9d 00 00 	mov    0x0(,%ebx,4),%eax
    252f:	00 00 
    2531:	66 65 01 05          	add    %eax,%gs:(%di)
    2535:	66 65 01 45 04       	add    %eax,%gs:0x4(%di)
    253a:	66 03 fa             	add    %edx,%edi
    253d:	26 8a 1c             	mov    %es:(%si),%bl
    2540:	13 f5                	adc    %bp,%si
    2542:	66 67 8b 04 9d 00 00 	mov    0x0(,%ebx,4),%eax
    2549:	00 00 
    254b:	66 65 01 05          	add    %eax,%gs:(%di)
    254f:	66 65 01 45 04       	add    %eax,%gs:0x4(%di)
    2554:	66 03 fa             	add    %edx,%edi
    2557:	26 8a 1c             	mov    %es:(%si),%bl
    255a:	13 f5                	adc    %bp,%si
    255c:	66 67 8b 04 9d 00 00 	mov    0x0(,%ebx,4),%eax
    2563:	00 00 
    2565:	66 65 01 05          	add    %eax,%gs:(%di)
    2569:	66 65 01 45 04       	add    %eax,%gs:0x4(%di)
    256e:	66 03 fa             	add    %edx,%edi
    2571:	26 8a 1c             	mov    %es:(%si),%bl
    2574:	13 f5                	adc    %bp,%si
    2576:	66 67 8b 04 9d 00 00 	mov    0x0(,%ebx,4),%eax
    257d:	00 00 
    257f:	66 65 01 05          	add    %eax,%gs:(%di)
    2583:	66 65 01 45 04       	add    %eax,%gs:0x4(%di)
    2588:	66 03 fa             	add    %edx,%edi
    258b:	26 8a 1c             	mov    %es:(%si),%bl
    258e:	13 f5                	adc    %bp,%si
    2590:	66 67 8b 04 9d 00 00 	mov    0x0(,%ebx,4),%eax
    2597:	00 00 
    2599:	66 65 01 05          	add    %eax,%gs:(%di)
    259d:	66 65 01 45 04       	add    %eax,%gs:0x4(%di)
    25a2:	66 03 fa             	add    %edx,%edi
    25a5:	26 8a 1c             	mov    %es:(%si),%bl
    25a8:	13 f5                	adc    %bp,%si
    25aa:	66 67 8b 04 9d 00 00 	mov    0x0(,%ebx,4),%eax
    25b1:	00 00 
    25b3:	66 65 01 05          	add    %eax,%gs:(%di)
    25b7:	66 65 01 45 04       	add    %eax,%gs:0x4(%di)
    25bc:	66 03 fa             	add    %edx,%edi
    25bf:	26 8a 1c             	mov    %es:(%si),%bl
    25c2:	13 f5                	adc    %bp,%si
    25c4:	66 67 8b 04 9d 00 00 	mov    0x0(,%ebx,4),%eax
    25cb:	00 00 
    25cd:	66 65 01 05          	add    %eax,%gs:(%di)
    25d1:	66 65 01 45 04       	add    %eax,%gs:0x4(%di)
    25d6:	49                   	dec    %cx
    25d7:	0f 85 2b ff          	jne    0x2506
    25db:	83 c7 08             	add    $0x8,%di
    25de:	e9 ff 00             	jmp    0x26e0
    25e1:	83 ef 08             	sub    $0x8,%di
    25e4:	8e 1e 0e 0a          	mov    0xa0e,%ds
    25e8:	53                   	push   %bx
    25e9:	8b d9                	mov    %cx,%bx
    25eb:	c1 e9 03             	shr    $0x3,%cx
    25ee:	41                   	inc    %cx
    25ef:	83 e3 07             	and    $0x7,%bx
    25f2:	03 db                	add    %bx,%bx
    25f4:	2e 8b 87 fe 17       	mov    %cs:0x17fe(%bx),%ax
    25f9:	5b                   	pop    %bx
    25fa:	ff e0                	jmp    *%ax
    25fc:	87 db                	xchg   %bx,%bx
    25fe:	87 db                	xchg   %bx,%bx
    2600:	87 db                	xchg   %bx,%bx
    2602:	87 db                	xchg   %bx,%bx
    2604:	87 db                	xchg   %bx,%bx
    2606:	66 03 fa             	add    %edx,%edi
    2609:	26 8a 1c             	mov    %es:(%si),%bl
    260c:	13 f5                	adc    %bp,%si
    260e:	66 67 8b 04 9d 00 00 	mov    0x0(,%ebx,4),%eax
    2615:	00 00 
    2617:	66 65 01 05          	add    %eax,%gs:(%di)
    261b:	66 65 29 45 04       	sub    %eax,%gs:0x4(%di)
    2620:	66 03 fa             	add    %edx,%edi
    2623:	26 8a 1c             	mov    %es:(%si),%bl
    2626:	13 f5                	adc    %bp,%si
    2628:	66 67 8b 04 9d 00 00 	mov    0x0(,%ebx,4),%eax
    262f:	00 00 
    2631:	66 65 01 05          	add    %eax,%gs:(%di)
    2635:	66 65 29 45 04       	sub    %eax,%gs:0x4(%di)
    263a:	66 03 fa             	add    %edx,%edi
    263d:	26 8a 1c             	mov    %es:(%si),%bl
    2640:	13 f5                	adc    %bp,%si
    2642:	66 67 8b 04 9d 00 00 	mov    0x0(,%ebx,4),%eax
    2649:	00 00 
    264b:	66 65 01 05          	add    %eax,%gs:(%di)
    264f:	66 65 29 45 04       	sub    %eax,%gs:0x4(%di)
    2654:	66 03 fa             	add    %edx,%edi
    2657:	26 8a 1c             	mov    %es:(%si),%bl
    265a:	13 f5                	adc    %bp,%si
    265c:	66 67 8b 04 9d 00 00 	mov    0x0(,%ebx,4),%eax
    2663:	00 00 
    2665:	66 65 01 05          	add    %eax,%gs:(%di)
    2669:	66 65 29 45 04       	sub    %eax,%gs:0x4(%di)
    266e:	66 03 fa             	add    %edx,%edi
    2671:	26 8a 1c             	mov    %es:(%si),%bl
    2674:	13 f5                	adc    %bp,%si
    2676:	66 67 8b 04 9d 00 00 	mov    0x0(,%ebx,4),%eax
    267d:	00 00 
    267f:	66 65 01 05          	add    %eax,%gs:(%di)
    2683:	66 65 29 45 04       	sub    %eax,%gs:0x4(%di)
    2688:	66 03 fa             	add    %edx,%edi
    268b:	26 8a 1c             	mov    %es:(%si),%bl
    268e:	13 f5                	adc    %bp,%si
    2690:	66 67 8b 04 9d 00 00 	mov    0x0(,%ebx,4),%eax
    2697:	00 00 
    2699:	66 65 01 05          	add    %eax,%gs:(%di)
    269d:	66 65 29 45 04       	sub    %eax,%gs:0x4(%di)
    26a2:	66 03 fa             	add    %edx,%edi
    26a5:	26 8a 1c             	mov    %es:(%si),%bl
    26a8:	13 f5                	adc    %bp,%si
    26aa:	66 67 8b 04 9d 00 00 	mov    0x0(,%ebx,4),%eax
    26b1:	00 00 
    26b3:	66 65 01 05          	add    %eax,%gs:(%di)
    26b7:	66 65 29 45 04       	sub    %eax,%gs:0x4(%di)
    26bc:	66 03 fa             	add    %edx,%edi
    26bf:	26 8a 1c             	mov    %es:(%si),%bl
    26c2:	13 f5                	adc    %bp,%si
    26c4:	66 67 8b 04 9d 00 00 	mov    0x0(,%ebx,4),%eax
    26cb:	00 00 
    26cd:	66 65 01 05          	add    %eax,%gs:(%di)
    26d1:	66 65 29 45 04       	sub    %eax,%gs:0x4(%di)
    26d6:	49                   	dec    %cx
    26d7:	0f 85 2b ff          	jne    0x2606
    26db:	83 c7 08             	add    $0x8,%di
    26de:	eb 00                	jmp    0x26e0
    26e0:	66 8b c7             	mov    %edi,%eax
    26e3:	66 c1 e8 10          	shr    $0x10,%eax
    26e7:	1f                   	pop    %ds
    26e8:	c3                   	ret
    26e9:	66 51                	push   %ecx
    26eb:	66 57                	push   %edi
    26ed:	06                   	push   %es
    26ee:	0f a8                	push   %gs
    26f0:	07                   	pop    %es
    26f1:	66 2b c0             	sub    %eax,%eax
    26f4:	a1 1d 0a             	mov    0xa1d,%ax
    26f7:	f7 26 1b 0a          	mulw   0xa1b
    26fb:	80 3e 7a 08 01       	cmpb   $0x1,0x87a
    2700:	75 02                	jne    0x2704
    2702:	d1 e0                	shl    $1,%ax
    2704:	8b c8                	mov    %ax,%cx
    2706:	66 a1 35 0a          	mov    0xa35,%eax
    270a:	8b d1                	mov    %cx,%dx
    270c:	c1 e9 02             	shr    $0x2,%cx
    270f:	fc                   	cld
    2710:	f3 66 ab             	rep stos %eax,%es:(%di)
    2713:	8a ca                	mov    %dl,%cl
    2715:	80 e1 03             	and    $0x3,%cl
    2718:	f3 aa                	rep stos %al,%es:(%di)
    271a:	07                   	pop    %es
    271b:	66 5f                	pop    %edi
    271d:	66 59                	pop    %ecx
    271f:	c3                   	ret
    2720:	ff 1e ec 1f          	lcall  *0x1fec
    2724:	ff 36 1d 0a          	push   0xa1d
    2728:	ff 36 23 0a          	push   0xa23
    272c:	f7 06 00 0a 01 00    	testw  $0x1,0xa00
    2732:	74 42                	je     0x2776
    2734:	bf d0 07             	mov    $0x7d0,%di
    2737:	80 3e 7a 08 01       	cmpb   $0x1,0x87a
    273c:	75 02                	jne    0x2740
    273e:	d1 ef                	shr    $1,%di
    2740:	39 3e 1d 0a          	cmp    %di,0xa1d
    2744:	7e 30                	jle    0x2776
    2746:	a1 1d 0a             	mov    0xa1d,%ax
    2749:	a3 5f 0a             	mov    %ax,0xa5f
    274c:	29 3e 5f 0a          	sub    %di,0xa5f
    2750:	89 3e 1d 0a          	mov    %di,0xa1d
    2754:	57                   	push   %di
    2755:	e8 2e 00             	call   0x2786
    2758:	5f                   	pop    %di
    2759:	8b c7                	mov    %di,%ax
    275b:	f7 26 21 0a          	mulw   0xa21
    275f:	01 06 23 0a          	add    %ax,0xa23
    2763:	29 3e 5f 0a          	sub    %di,0xa5f
    2767:	79 e7                	jns    0x2750
    2769:	01 3e 5f 0a          	add    %di,0xa5f
    276d:	66 0f b7 06 5f 0a    	movzwl 0xa5f,%eax
    2773:	a3 1d 0a             	mov    %ax,0xa1d
    2776:	e8 0d 00             	call   0x2786
    2779:	8f 06 23 0a          	pop    0xa23
    277d:	8f 06 1d 0a          	pop    0xa1d
    2781:	ff 1e f0 1f          	lcall  *0x1ff0
    2785:	c3                   	ret
    2786:	06                   	push   %es
    2787:	1e                   	push   %ds
    2788:	0f a8                	push   %gs
    278a:	fc                   	cld
    278b:	f7 06 00 0a 01 00    	testw  $0x1,0xa00
    2791:	75 0e                	jne    0x27a1
    2793:	66 8b 3e 06 0a       	mov    0xa06,%edi
    2798:	03 3e 23 0a          	add    0xa23,%di
    279c:	a1 04 0a             	mov    0xa04,%ax
    279f:	eb 10                	jmp    0x27b1
    27a1:	a1 0a 0a             	mov    0xa0a,%ax
    27a4:	bf 00 40             	mov    $0x4000,%di
    27a7:	83 3e 1b 0a 04       	cmpw   $0x4,0xa1b
    27ac:	75 03                	jne    0x27b1
    27ae:	bf 00 80             	mov    $0x8000,%di
    27b1:	8e e8                	mov    %ax,%gs
    27b3:	a1 0a 0a             	mov    0xa0a,%ax
    27b6:	a3 0e 0a             	mov    %ax,0xa0e
    27b9:	2b c0                	sub    %ax,%ax
    27bb:	e8 2b ff             	call   0x26e9
    27be:	2b db                	sub    %bx,%bx
    27c0:	8b 0e 27 0a          	mov    0xa27,%cx
    27c4:	e3 02                	jcxz   0x27c8
    27c6:	eb 03                	jmp    0x27cb
    27c8:	e9 74 05             	jmp    0x2d3f
    27cb:	53                   	push   %bx
    27cc:	89 1e 13 0a          	mov    %bx,0xa13
    27d0:	57                   	push   %di
    27d1:	d1 e3                	shl    $1,%bx
    27d3:	2e 8b 9f a5 16       	mov    %cs:0x16a5(%bx),%bx
    27d8:	80 3e 7a 08 00       	cmpb   $0x0,0x87a
    27dd:	75 0c                	jne    0x27eb
    27df:	c6 06 3d 0a 00       	movb   $0x0,0xa3d
    27e4:	c6 06 3e 0a 00       	movb   $0x0,0xa3e
    27e9:	eb 34                	jmp    0x281f
    27eb:	8a 87 8c 0a          	mov    0xa8c(%bx),%al
    27ef:	8a e0                	mov    %al,%ah
    27f1:	3c 64                	cmp    $0x64,%al
    27f3:	74 18                	je     0x280d
    27f5:	b4 3f                	mov    $0x3f,%ah
    27f7:	3c 3f                	cmp    $0x3f,%al
    27f9:	7d 12                	jge    0x280d
    27fb:	b4 c1                	mov    $0xc1,%ah
    27fd:	3c c1                	cmp    $0xc1,%al
    27ff:	7e 0c                	jle    0x280d
    2801:	b4 00                	mov    $0x0,%ah
    2803:	3c 03                	cmp    $0x3,%al
    2805:	7d 06                	jge    0x280d
    2807:	3c fd                	cmp    $0xfd,%al
    2809:	7e 02                	jle    0x280d
    280b:	b0 00                	mov    $0x0,%al
    280d:	88 26 3d 0a          	mov    %ah,0xa3d
    2811:	a2 3e 0a             	mov    %al,0xa3e
    2814:	80 3e 3d 0a 3f       	cmpb   $0x3f,0xa3d
    2819:	75 04                	jne    0x281f
    281b:	03 3e 1b 0a          	add    0xa1b,%di
    281f:	f7 87 65 0a 01 00    	testw  $0x1,0xa65(%bx)
    2825:	0f 84 ef 01          	je     0x2a18
    2829:	f7 87 65 0a 04 00    	testw  $0x4,0xa65(%bx)
    282f:	0f 85 e5 01          	jne    0x2a18
    2833:	83 bf 8a 0a 00       	cmpw   $0x0,0xa8a(%bx)
    2838:	74 2b                	je     0x2865
    283a:	51                   	push   %cx
    283b:	53                   	push   %bx
    283c:	57                   	push   %di
    283d:	56                   	push   %si
    283e:	66 0f b7 87 8a 0a    	movzwl 0xa8a(%bx),%eax
    2844:	66 50                	push   %eax
    2846:	66 ff b7 73 0a       	pushl  0xa73(%bx)
    284b:	ff 1e e8 1f          	lcall  *0x1fe8
    284f:	5e                   	pop    %si
    2850:	5f                   	pop    %di
    2851:	5b                   	pop    %bx
    2852:	59                   	pop    %cx
    2853:	85 c0                	test   %ax,%ax
    2855:	75 06                	jne    0x285d
    2857:	85 d2                	test   %dx,%dx
    2859:	0f 84 bb 01          	je     0x2a18
    285d:	89 97 69 0a          	mov    %dx,0xa69(%bx)
    2861:	89 87 67 0a          	mov    %ax,0xa67(%bx)
    2865:	51                   	push   %cx
    2866:	66 2b c9             	sub    %ecx,%ecx
    2869:	8b 0e 1d 0a          	mov    0xa1d,%cx
    286d:	89 0e 1f 0a          	mov    %cx,0xa1f
    2871:	66 2b f6             	sub    %esi,%esi
    2874:	c4 b7 67 0a          	les    0xa67(%bx),%si
    2878:	66 03 b7 73 0a       	add    0xa73(%bx),%esi
    287d:	66 8b 87 6f 0a       	mov    0xa6f(%bx),%eax
    2882:	66 f7 e1             	mul    %ecx
    2885:	66 0f a4 c2 09       	shld   $0x9,%eax,%edx
    288a:	66 8b 87 6b 0a       	mov    0xa6b(%bx),%eax
    288f:	66 83 bf 7b 0a 00    	cmpl   $0x0,0xa7b(%bx)
    2895:	74 05                	je     0x289c
    2897:	66 8b 87 7b 0a       	mov    0xa7b(%bx),%eax
    289c:	c6 06 12 0a 00       	movb   $0x0,0xa12
    28a1:	66 48                	dec    %eax
    28a3:	66 2b 87 73 0a       	sub    0xa73(%bx),%eax
    28a8:	7f 12                	jg     0x28bc
    28aa:	66 83 bf 7b 0a 00    	cmpl   $0x0,0xa7b(%bx)
    28b0:	74 05                	je     0x28b7
    28b2:	c6 06 12 0a 01       	movb   $0x1,0xa12
    28b7:	2b c9                	sub    %cx,%cx
    28b9:	e9 23 01             	jmp    0x29df
    28bc:	66 3b c2             	cmp    %edx,%eax
    28bf:	77 2d                	ja     0x28ee
    28c1:	83 a7 65 0a fe       	andw   $0xfffe,0xa65(%bx)
    28c6:	66 83 bf 7b 0a 00    	cmpl   $0x0,0xa7b(%bx)
    28cc:	74 0a                	je     0x28d8
    28ce:	c6 06 12 0a 01       	movb   $0x1,0xa12
    28d3:	83 8f 65 0a 03       	orw    $0x3,0xa65(%bx)
    28d8:	66 8b d0             	mov    %eax,%edx
    28db:	66 2b c0             	sub    %eax,%eax
    28de:	66 0f ac d0 09       	shrd   $0x9,%edx,%eax
    28e3:	66 c1 ea 09          	shr    $0x9,%edx
    28e7:	66 f7 b7 6f 0a       	divl   0xa6f(%bx)
    28ec:	8b c8                	mov    %ax,%cx
    28ee:	e3 02                	jcxz   0x28f2
    28f0:	eb 03                	jmp    0x28f5
    28f2:	e9 ea 00             	jmp    0x29df
    28f5:	66 56                	push   %esi
    28f7:	53                   	push   %bx
    28f8:	51                   	push   %cx
    28f9:	66 81 fe ff ff 00 00 	cmp    $0xffff,%esi
    2900:	76 1a                	jbe    0x291c
    2902:	8c c0                	mov    %es,%ax
    2904:	66 0f b7 c0          	movzwl %ax,%eax
    2908:	66 c1 e0 04          	shl    $0x4,%eax
    290c:	66 03 c6             	add    %esi,%eax
    290f:	66 8b f0             	mov    %eax,%esi
    2912:	66 83 e6 0f          	and    $0xf,%esi
    2916:	66 c1 e8 04          	shr    $0x4,%eax
    291a:	8e c0                	mov    %ax,%es
    291c:	56                   	push   %si
    291d:	8b 97 86 0a          	mov    0xa86(%bx),%dx
    2921:	8b af 84 0a          	mov    0xa84(%bx),%bp
    2925:	ff b7 88 0a          	push   0xa88(%bx)
    2929:	80 3e 3d 0a 64       	cmpb   $0x64,0xa3d
    292e:	74 52                	je     0x2982
    2930:	80 3e 3d 0a 00       	cmpb   $0x0,0xa3d
    2935:	75 4b                	jne    0x2982
    2937:	80 3e 3e 0a 00       	cmpb   $0x0,0xa3e
    293c:	74 44                	je     0x2982
    293e:	8a 87 7f 0a          	mov    0xa7f(%bx),%al
    2942:	f6 2e 18 0a          	imulb  0xa18
    2946:	c1 e8 06             	shr    $0x6,%ax
    2949:	2c 01                	sub    $0x1,%al
    294b:	78 55                	js     0x29a2
    294d:	8a d8                	mov    %al,%bl
    294f:	8a f8                	mov    %al,%bh
    2951:	80 3e 3e 0a 00       	cmpb   $0x0,0xa3e
    2956:	7f 0e                	jg     0x2966
    2958:	a0 3e 0a             	mov    0xa3e,%al
    295b:	2c c1                	sub    $0xc1,%al
    295d:	f6 eb                	imul   %bl
    295f:	c1 f8 06             	sar    $0x6,%ax
    2962:	8a d8                	mov    %al,%bl
    2964:	eb 0e                	jmp    0x2974
    2966:	a0 3e 0a             	mov    0xa3e,%al
    2969:	2c 3f                	sub    $0x3f,%al
    296b:	f6 d8                	neg    %al
    296d:	f6 ef                	imul   %bh
    296f:	c1 f8 06             	sar    $0x6,%ax
    2972:	8a f8                	mov    %al,%bh
    2974:	58                   	pop    %ax
    2975:	80 3e 18 0a 00       	cmpb   $0x0,0xa18
    297a:	74 27                	je     0x29a3
    297c:	ff 16 25 0a          	call   *0xa25
    2980:	eb 4a                	jmp    0x29cc
    2982:	8a 87 7f 0a          	mov    0xa7f(%bx),%al
    2986:	f6 2e 18 0a          	imulb  0xa18
    298a:	c1 f8 06             	sar    $0x6,%ax
    298d:	8a f8                	mov    %al,%bh
    298f:	58                   	pop    %ax
    2990:	80 ef 01             	sub    $0x1,%bh
    2993:	78 0e                	js     0x29a3
    2995:	80 3e 18 0a 00       	cmpb   $0x0,0xa18
    299a:	74 07                	je     0x29a3
    299c:	ff 16 25 0a          	call   *0xa25
    29a0:	eb 2a                	jmp    0x29cc
    29a2:	58                   	pop    %ax
    29a3:	66 8b c5             	mov    %ebp,%eax
    29a6:	66 c1 e0 10          	shl    $0x10,%eax
    29aa:	8b c2                	mov    %dx,%ax
    29ac:	66 f7 e9             	imul   %ecx
    29af:	66 c1 e8 10          	shr    $0x10,%eax
    29b3:	66 03 f0             	add    %eax,%esi
    29b6:	66 2b c0             	sub    %eax,%eax
    29b9:	a1 1b 0a             	mov    0xa1b,%ax
    29bc:	80 3e 7a 08 01       	cmpb   $0x1,0x87a
    29c1:	75 03                	jne    0x29c6
    29c3:	66 d1 e0             	shl    $1,%eax
    29c6:	66 f7 e9             	imul   %ecx
    29c9:	66 03 f8             	add    %eax,%edi
    29cc:	66 2b d2             	sub    %edx,%edx
    29cf:	5a                   	pop    %dx
    29d0:	59                   	pop    %cx
    29d1:	5b                   	pop    %bx
    29d2:	2b d6                	sub    %si,%dx
    29d4:	f7 da                	neg    %dx
    29d6:	66 5e                	pop    %esi
    29d8:	66 03 f2             	add    %edx,%esi
    29db:	89 87 88 0a          	mov    %ax,0xa88(%bx)
    29df:	80 3e 12 0a 01       	cmpb   $0x1,0xa12
    29e4:	75 0b                	jne    0x29f1
    29e6:	66 0f b7 b7 67 0a    	movzwl 0xa67(%bx),%esi
    29ec:	66 03 b7 77 0a       	add    0xa77(%bx),%esi
    29f1:	2b 0e 1f 0a          	sub    0xa1f,%cx
    29f5:	f7 d9                	neg    %cx
    29f7:	89 0e 1f 0a          	mov    %cx,0xa1f
    29fb:	66 0f b7 87 67 0a    	movzwl 0xa67(%bx),%eax
    2a01:	66 2b f0             	sub    %eax,%esi
    2a04:	66 89 b7 73 0a       	mov    %esi,0xa73(%bx)
    2a09:	0b c9                	or     %cx,%cx
    2a0b:	7e 0a                	jle    0x2a17
    2a0d:	80 3e 12 0a 01       	cmpb   $0x1,0xa12
    2a12:	75 03                	jne    0x2a17
    2a14:	e9 5a fe             	jmp    0x2871
    2a17:	59                   	pop    %cx
    2a18:	5f                   	pop    %di
    2a19:	5b                   	pop    %bx
    2a1a:	43                   	inc    %bx
    2a1b:	e2 02                	loop   0x2a1f
    2a1d:	eb 03                	jmp    0x2a22
    2a1f:	e9 a9 fd             	jmp    0x27cb
    2a22:	f7 06 00 0a 01 00    	testw  $0x1,0xa00
    2a28:	0f 84 13 03          	je     0x2d3f
    2a2c:	80 3e 7b 08 02       	cmpb   $0x2,0x87b
    2a31:	0f 84 a9 00          	je     0x2ade
    2a35:	fc                   	cld
    2a36:	be 00 40             	mov    $0x4000,%si
    2a39:	66 8b 3e 06 0a       	mov    0xa06,%edi
    2a3e:	03 3e 23 0a          	add    0xa23,%di
    2a42:	a1 1d 0a             	mov    0xa1d,%ax
    2a45:	80 3e 7a 08 01       	cmpb   $0x1,0x87a
    2a4a:	75 02                	jne    0x2a4e
    2a4c:	d1 e0                	shl    $1,%ax
    2a4e:	8b c8                	mov    %ax,%cx
    2a50:	1e                   	push   %ds
    2a51:	06                   	push   %es
    2a52:	8e 06 04 0a          	mov    0xa04,%es
    2a56:	8e 1e 0a 0a          	mov    0xa0a,%ds
    2a5a:	8b d9                	mov    %cx,%bx
    2a5c:	c1 e9 03             	shr    $0x3,%cx
    2a5f:	41                   	inc    %cx
    2a60:	83 e3 07             	and    $0x7,%bx
    2a63:	d1 e3                	shl    $1,%bx
    2a65:	2e 8b 87 be 17       	mov    %cs:0x17be(%bx),%ax
    2a6a:	d1 eb                	shr    $1,%bx
    2a6c:	83 eb 08             	sub    $0x8,%bx
    2a6f:	f7 db                	neg    %bx
    2a71:	2b fb                	sub    %bx,%di
    2a73:	03 db                	add    %bx,%bx
    2a75:	2b f3                	sub    %bx,%si
    2a77:	ff e0                	jmp    *%ax
    2a79:	90                   	nop
    2a7a:	8b 1c                	mov    (%si),%bx
    2a7c:	8a 87 00 60          	mov    0x6000(%bx),%al
    2a80:	26 88 05             	mov    %al,%es:(%di)
    2a83:	8b 5c 02             	mov    0x2(%si),%bx
    2a86:	8a 87 00 60          	mov    0x6000(%bx),%al
    2a8a:	26 88 45 01          	mov    %al,%es:0x1(%di)
    2a8e:	8b 5c 04             	mov    0x4(%si),%bx
    2a91:	8a 87 00 60          	mov    0x6000(%bx),%al
    2a95:	26 88 45 02          	mov    %al,%es:0x2(%di)
    2a99:	8b 5c 06             	mov    0x6(%si),%bx
    2a9c:	8a 87 00 60          	mov    0x6000(%bx),%al
    2aa0:	26 88 45 03          	mov    %al,%es:0x3(%di)
    2aa4:	8b 5c 08             	mov    0x8(%si),%bx
    2aa7:	8a 87 00 60          	mov    0x6000(%bx),%al
    2aab:	26 88 45 04          	mov    %al,%es:0x4(%di)
    2aaf:	8b 5c 0a             	mov    0xa(%si),%bx
    2ab2:	8a 87 00 60          	mov    0x6000(%bx),%al
    2ab6:	26 88 45 05          	mov    %al,%es:0x5(%di)
    2aba:	8b 5c 0c             	mov    0xc(%si),%bx
    2abd:	8a 87 00 60          	mov    0x6000(%bx),%al
    2ac1:	26 88 45 06          	mov    %al,%es:0x6(%di)
    2ac5:	8b 5c 0e             	mov    0xe(%si),%bx
    2ac8:	8a 87 00 60          	mov    0x6000(%bx),%al
    2acc:	26 88 45 07          	mov    %al,%es:0x7(%di)
    2ad0:	83 c7 08             	add    $0x8,%di
    2ad3:	83 c6 10             	add    $0x10,%si
    2ad6:	49                   	dec    %cx
    2ad7:	75 a0                	jne    0x2a79
    2ad9:	07                   	pop    %es
    2ada:	1f                   	pop    %ds
    2adb:	e9 61 02             	jmp    0x2d3f
    2ade:	fc                   	cld
    2adf:	be 00 80             	mov    $0x8000,%si
    2ae2:	66 8b 3e 06 0a       	mov    0xa06,%edi
    2ae7:	03 3e 23 0a          	add    0xa23,%di
    2aeb:	8b 0e 1d 0a          	mov    0xa1d,%cx
    2aef:	80 3e 7a 08 01       	cmpb   $0x1,0x87a
    2af4:	75 02                	jne    0x2af8
    2af6:	d1 e1                	shl    $1,%cx
    2af8:	06                   	push   %es
    2af9:	8e 06 04 0a          	mov    0xa04,%es
    2afd:	1e                   	push   %ds
    2afe:	8e 1e 0a 0a          	mov    0xa0a,%ds
    2b02:	66 bb 00 80 ff ff    	mov    $0xffff8000,%ebx
    2b08:	66 ba ff 7f 00 00    	mov    $0x7fff,%edx
    2b0e:	51                   	push   %cx
    2b0f:	83 e1 03             	and    $0x3,%cx
    2b12:	74 37                	je     0x2b4b
    2b14:	66 8b 04             	mov    (%si),%eax
    2b17:	66 3b c3             	cmp    %ebx,%eax
    2b1a:	7c 12                	jl     0x2b2e
    2b1c:	66 3b c2             	cmp    %edx,%eax
    2b1f:	7f 1d                	jg     0x2b3e
    2b21:	26 89 05             	mov    %ax,%es:(%di)
    2b24:	83 c6 04             	add    $0x4,%si
    2b27:	83 c7 02             	add    $0x2,%di
    2b2a:	e2 e8                	loop   0x2b14
    2b2c:	eb 1d                	jmp    0x2b4b
    2b2e:	26 89 1d             	mov    %bx,%es:(%di)
    2b31:	83 c6 04             	add    $0x4,%si
    2b34:	83 c7 02             	add    $0x2,%di
    2b37:	e2 db                	loop   0x2b14
    2b39:	eb 10                	jmp    0x2b4b
    2b3b:	87 db                	xchg   %bx,%bx
    2b3d:	90                   	nop
    2b3e:	26 89 15             	mov    %dx,%es:(%di)
    2b41:	83 c6 04             	add    $0x4,%si
    2b44:	83 c7 02             	add    $0x2,%di
    2b47:	e2 cb                	loop   0x2b14
    2b49:	eb 00                	jmp    0x2b4b
    2b4b:	59                   	pop    %cx
    2b4c:	c1 e9 02             	shr    $0x2,%cx
    2b4f:	e3 02                	jcxz   0x2b53
    2b51:	eb 03                	jmp    0x2b56
    2b53:	e9 e5 01             	jmp    0x2d3b
    2b56:	66 8b 04             	mov    (%si),%eax
    2b59:	66 3b c3             	cmp    %ebx,%eax
    2b5c:	7c 58                	jl     0x2bb6
    2b5e:	66 3b c2             	cmp    %edx,%eax
    2b61:	0f 8f a5 00          	jg     0x2c0a
    2b65:	26 89 05             	mov    %ax,%es:(%di)
    2b68:	66 8b 44 04          	mov    0x4(%si),%eax
    2b6c:	66 3b c3             	cmp    %ebx,%eax
    2b6f:	0f 8c e7 00          	jl     0x2c5a
    2b73:	66 3b c2             	cmp    %edx,%eax
    2b76:	0f 8f 1c 01          	jg     0x2c96
    2b7a:	26 89 45 02          	mov    %ax,%es:0x2(%di)
    2b7e:	66 8b 44 08          	mov    0x8(%si),%eax
    2b82:	66 3b c3             	cmp    %ebx,%eax
    2b85:	0f 8c 45 01          	jl     0x2cce
    2b89:	66 3b c2             	cmp    %edx,%eax
    2b8c:	0f 8f 62 01          	jg     0x2cf2
    2b90:	26 89 45 04          	mov    %ax,%es:0x4(%di)
    2b94:	66 8b 44 0c          	mov    0xc(%si),%eax
    2b98:	66 3b c3             	cmp    %ebx,%eax
    2b9b:	0f 8c 77 01          	jl     0x2d16
    2b9f:	66 3b c2             	cmp    %edx,%eax
    2ba2:	0f 8f 84 01          	jg     0x2d2a
    2ba6:	26 89 45 06          	mov    %ax,%es:0x6(%di)
    2baa:	83 c6 10             	add    $0x10,%si
    2bad:	83 c7 08             	add    $0x8,%di
    2bb0:	49                   	dec    %cx
    2bb1:	75 a3                	jne    0x2b56
    2bb3:	e9 85 01             	jmp    0x2d3b
    2bb6:	26 89 1d             	mov    %bx,%es:(%di)
    2bb9:	66 8b 44 04          	mov    0x4(%si),%eax
    2bbd:	66 3b c3             	cmp    %ebx,%eax
    2bc0:	0f 8c 96 00          	jl     0x2c5a
    2bc4:	66 3b c2             	cmp    %edx,%eax
    2bc7:	0f 8f cb 00          	jg     0x2c96
    2bcb:	26 89 45 02          	mov    %ax,%es:0x2(%di)
    2bcf:	66 8b 44 08          	mov    0x8(%si),%eax
    2bd3:	66 3b c3             	cmp    %ebx,%eax
    2bd6:	0f 8c f4 00          	jl     0x2cce
    2bda:	66 3b c2             	cmp    %edx,%eax
    2bdd:	0f 8f 11 01          	jg     0x2cf2
    2be1:	26 89 45 04          	mov    %ax,%es:0x4(%di)
    2be5:	66 8b 44 0c          	mov    0xc(%si),%eax
    2be9:	66 3b c3             	cmp    %ebx,%eax
    2bec:	0f 8c 26 01          	jl     0x2d16
    2bf0:	66 3b c2             	cmp    %edx,%eax
    2bf3:	0f 8f 33 01          	jg     0x2d2a
    2bf7:	26 89 45 06          	mov    %ax,%es:0x6(%di)
    2bfb:	83 c6 10             	add    $0x10,%si
    2bfe:	83 c7 08             	add    $0x8,%di
    2c01:	49                   	dec    %cx
    2c02:	0f 85 50 ff          	jne    0x2b56
    2c06:	e9 32 01             	jmp    0x2d3b
    2c09:	90                   	nop
    2c0a:	26 89 15             	mov    %dx,%es:(%di)
    2c0d:	66 8b 44 04          	mov    0x4(%si),%eax
    2c11:	66 3b c3             	cmp    %ebx,%eax
    2c14:	7c 44                	jl     0x2c5a
    2c16:	66 3b c2             	cmp    %edx,%eax
    2c19:	7f 7b                	jg     0x2c96
    2c1b:	26 89 45 02          	mov    %ax,%es:0x2(%di)
    2c1f:	66 8b 44 08          	mov    0x8(%si),%eax
    2c23:	66 3b c3             	cmp    %ebx,%eax
    2c26:	0f 8c a4 00          	jl     0x2cce
    2c2a:	66 3b c2             	cmp    %edx,%eax
    2c2d:	0f 8f c1 00          	jg     0x2cf2
    2c31:	26 89 45 04          	mov    %ax,%es:0x4(%di)
    2c35:	66 8b 44 0c          	mov    0xc(%si),%eax
    2c39:	66 3b c3             	cmp    %ebx,%eax
    2c3c:	0f 8c d6 00          	jl     0x2d16
    2c40:	66 3b c2             	cmp    %edx,%eax
    2c43:	0f 8f e3 00          	jg     0x2d2a
    2c47:	26 89 45 06          	mov    %ax,%es:0x6(%di)
    2c4b:	83 c6 10             	add    $0x10,%si
    2c4e:	83 c7 08             	add    $0x8,%di
    2c51:	49                   	dec    %cx
    2c52:	0f 85 00 ff          	jne    0x2b56
    2c56:	e9 e2 00             	jmp    0x2d3b
    2c59:	90                   	nop
    2c5a:	26 89 5d 02          	mov    %bx,%es:0x2(%di)
    2c5e:	66 8b 44 08          	mov    0x8(%si),%eax
    2c62:	66 3b c3             	cmp    %ebx,%eax
    2c65:	7c 67                	jl     0x2cce
    2c67:	66 3b c2             	cmp    %edx,%eax
    2c6a:	0f 8f 84 00          	jg     0x2cf2
    2c6e:	26 89 45 04          	mov    %ax,%es:0x4(%di)
    2c72:	66 8b 44 0c          	mov    0xc(%si),%eax
    2c76:	66 3b c3             	cmp    %ebx,%eax
    2c79:	0f 8c 99 00          	jl     0x2d16
    2c7d:	66 3b c2             	cmp    %edx,%eax
    2c80:	0f 8f a6 00          	jg     0x2d2a
    2c84:	26 89 45 06          	mov    %ax,%es:0x6(%di)
    2c88:	83 c6 10             	add    $0x10,%si
    2c8b:	83 c7 08             	add    $0x8,%di
    2c8e:	49                   	dec    %cx
    2c8f:	0f 85 c3 fe          	jne    0x2b56
    2c93:	e9 a5 00             	jmp    0x2d3b
    2c96:	26 89 55 02          	mov    %dx,%es:0x2(%di)
    2c9a:	66 8b 44 08          	mov    0x8(%si),%eax
    2c9e:	66 3b c3             	cmp    %ebx,%eax
    2ca1:	7c 2b                	jl     0x2cce
    2ca3:	66 3b c2             	cmp    %edx,%eax
    2ca6:	7f 4a                	jg     0x2cf2
    2ca8:	26 89 45 04          	mov    %ax,%es:0x4(%di)
    2cac:	66 8b 44 0c          	mov    0xc(%si),%eax
    2cb0:	66 3b c3             	cmp    %ebx,%eax
    2cb3:	7c 61                	jl     0x2d16
    2cb5:	66 3b c2             	cmp    %edx,%eax
    2cb8:	7f 70                	jg     0x2d2a
    2cba:	26 89 45 06          	mov    %ax,%es:0x6(%di)
    2cbe:	83 c6 10             	add    $0x10,%si
    2cc1:	83 c7 08             	add    $0x8,%di
    2cc4:	49                   	dec    %cx
    2cc5:	0f 85 8d fe          	jne    0x2b56
    2cc9:	eb 70                	jmp    0x2d3b
    2ccb:	87 db                	xchg   %bx,%bx
    2ccd:	90                   	nop
    2cce:	26 89 5d 04          	mov    %bx,%es:0x4(%di)
    2cd2:	66 8b 44 0c          	mov    0xc(%si),%eax
    2cd6:	66 3b c3             	cmp    %ebx,%eax
    2cd9:	7c 3b                	jl     0x2d16
    2cdb:	66 3b c2             	cmp    %edx,%eax
    2cde:	7f 4a                	jg     0x2d2a
    2ce0:	26 89 45 06          	mov    %ax,%es:0x6(%di)
    2ce4:	83 c6 10             	add    $0x10,%si
    2ce7:	83 c7 08             	add    $0x8,%di
    2cea:	49                   	dec    %cx
    2ceb:	0f 85 67 fe          	jne    0x2b56
    2cef:	eb 4a                	jmp    0x2d3b
    2cf1:	90                   	nop
    2cf2:	26 89 55 04          	mov    %dx,%es:0x4(%di)
    2cf6:	66 8b 44 0c          	mov    0xc(%si),%eax
    2cfa:	66 3b c3             	cmp    %ebx,%eax
    2cfd:	7c 17                	jl     0x2d16
    2cff:	66 3b c2             	cmp    %edx,%eax
    2d02:	7f 26                	jg     0x2d2a
    2d04:	26 89 45 06          	mov    %ax,%es:0x6(%di)
    2d08:	83 c6 10             	add    $0x10,%si
    2d0b:	83 c7 08             	add    $0x8,%di
    2d0e:	49                   	dec    %cx
    2d0f:	0f 85 43 fe          	jne    0x2b56
    2d13:	eb 26                	jmp    0x2d3b
    2d15:	90                   	nop
    2d16:	26 89 5d 06          	mov    %bx,%es:0x6(%di)
    2d1a:	83 c6 10             	add    $0x10,%si
    2d1d:	83 c7 08             	add    $0x8,%di
    2d20:	49                   	dec    %cx
    2d21:	0f 85 31 fe          	jne    0x2b56
    2d25:	eb 14                	jmp    0x2d3b
    2d27:	87 db                	xchg   %bx,%bx
    2d29:	90                   	nop
    2d2a:	26 89 55 06          	mov    %dx,%es:0x6(%di)
    2d2e:	83 c6 10             	add    $0x10,%si
    2d31:	83 c7 08             	add    $0x8,%di
    2d34:	49                   	dec    %cx
    2d35:	0f 85 1d fe          	jne    0x2b56
    2d39:	eb 00                	jmp    0x2d3b
    2d3b:	1f                   	pop    %ds
    2d3c:	07                   	pop    %es
    2d3d:	eb 00                	jmp    0x2d3f
    2d3f:	0f a9                	pop    %gs
    2d41:	1f                   	pop    %ds
    2d42:	07                   	pop    %es
    2d43:	c3                   	ret
    2d44:	c8 00 00 00          	enter  $0x0,$0x0
    2d48:	66 57                	push   %edi
    2d4a:	66 56                	push   %esi
    2d4c:	66 55                	push   %ebp
    2d4e:	b8 ff ff             	mov    $0xffff,%ax
    2d51:	f6 06 8e 08 02       	testb  $0x2,0x88e
    2d56:	0f 84 0b 01          	je     0x2e65
    2d5a:	66 0f b7 06 19 0a    	movzwl 0xa19,%eax
    2d60:	66 2b d2             	sub    %edx,%edx
    2d63:	66 8b 5e 06          	mov    0x6(%bp),%ebx
    2d67:	66 f7 e3             	mul    %ebx
    2d6a:	66 bb 10 27 00 00    	mov    $0x2710,%ebx
    2d70:	66 f7 f3             	div    %ebx
    2d73:	66 0f b7 1e 21 0a    	movzwl 0xa21,%ebx
    2d79:	66 f7 e3             	mul    %ebx
    2d7c:	66 83 f8 10          	cmp    $0x10,%eax
    2d80:	0f 8c e1 00          	jl     0x2e65
    2d84:	66 0f b7 1e f7 08    	movzwl 0x8f7,%ebx
    2d8a:	66 3b c3             	cmp    %ebx,%eax
    2d8d:	72 05                	jb     0x2d94
    2d8f:	66 2b c3             	sub    %ebx,%eax
    2d92:	eb f6                	jmp    0x2d8a
    2d94:	c7 06 10 0a 00 00    	movw   $0x0,0xa10
    2d9a:	66 0f b7 16 23 0a    	movzwl 0xa23,%edx
    2da0:	66 03 d0             	add    %eax,%edx
    2da3:	66 3b d3             	cmp    %ebx,%edx
    2da6:	72 04                	jb     0x2dac
    2da8:	ff 06 10 0a          	incw   0xa10
    2dac:	48                   	dec    %ax
    2dad:	24 f0                	and    $0xf0,%al
    2daf:	2b d2                	sub    %dx,%dx
    2db1:	f7 36 21 0a          	divw   0xa21
    2db5:	a3 1d 0a             	mov    %ax,0xa1d
    2db8:	83 3e 10 0a 00       	cmpw   $0x0,0xa10
    2dbd:	74 5b                	je     0x2e1a
    2dbf:	a1 f7 08             	mov    0x8f7,%ax
    2dc2:	2b 06 23 0a          	sub    0xa23,%ax
    2dc6:	2b d2                	sub    %dx,%dx
    2dc8:	f7 36 21 0a          	divw   0xa21
    2dcc:	29 06 1d 0a          	sub    %ax,0xa1d
    2dd0:	ff 36 1d 0a          	push   0xa1d
    2dd4:	a3 1d 0a             	mov    %ax,0xa1d
    2dd7:	e8 46 f9             	call   0x2720
    2dda:	66 83 3e 61 0a 00    	cmpl   $0x0,0xa61
    2de0:	74 2e                	je     0x2e10
    2de2:	66 2b c0             	sub    %eax,%eax
    2de5:	a0 7b 08             	mov    0x87b,%al
    2de8:	d0 e8                	shr    $1,%al
    2dea:	8a 26 7a 08          	mov    0x87a,%ah
    2dee:	d0 e4                	shl    $1,%ah
    2df0:	0a c4                	or     %ah,%al
    2df2:	2a e4                	sub    %ah,%ah
    2df4:	8b 16 04 0a          	mov    0xa04,%dx
    2df8:	8b 0e 06 0a          	mov    0xa06,%cx
    2dfc:	03 0e 23 0a          	add    0xa23,%cx
    2e00:	66 0f b7 1e 1d 0a    	movzwl 0xa1d,%ebx
    2e06:	52                   	push   %dx
    2e07:	51                   	push   %cx
    2e08:	66 53                	push   %ebx
    2e0a:	66 50                	push   %eax
    2e0c:	ff 1e 61 0a          	lcall  *0xa61
    2e10:	8f 06 1d 0a          	pop    0xa1d
    2e14:	c7 06 23 0a 00 00    	movw   $0x0,0xa23
    2e1a:	83 3e 1d 0a 08       	cmpw   $0x8,0xa1d
    2e1f:	7c 44                	jl     0x2e65
    2e21:	e8 fc f8             	call   0x2720
    2e24:	66 83 3e 61 0a 00    	cmpl   $0x0,0xa61
    2e2a:	74 2e                	je     0x2e5a
    2e2c:	66 2b c0             	sub    %eax,%eax
    2e2f:	a0 7b 08             	mov    0x87b,%al
    2e32:	d0 e8                	shr    $1,%al
    2e34:	8a 26 7a 08          	mov    0x87a,%ah
    2e38:	d0 e4                	shl    $1,%ah
    2e3a:	0a c4                	or     %ah,%al
    2e3c:	2a e4                	sub    %ah,%ah
    2e3e:	8b 16 04 0a          	mov    0xa04,%dx
    2e42:	8b 0e 06 0a          	mov    0xa06,%cx
    2e46:	03 0e 23 0a          	add    0xa23,%cx
    2e4a:	66 0f b7 1e 1d 0a    	movzwl 0xa1d,%ebx
    2e50:	52                   	push   %dx
    2e51:	51                   	push   %cx
    2e52:	66 53                	push   %ebx
    2e54:	66 50                	push   %eax
    2e56:	ff 1e 61 0a          	lcall  *0xa61
    2e5a:	a1 1d 0a             	mov    0xa1d,%ax
    2e5d:	f7 26 21 0a          	mulw   0xa21
    2e61:	01 06 23 0a          	add    %ax,0xa23
    2e65:	66 5d                	pop    %ebp
    2e67:	66 5e                	pop    %esi
    2e69:	66 5f                	pop    %edi
    2e6b:	c9                   	leave
    2e6c:	ca 04 00             	lret   $0x4
    2e6f:	57                   	push   %di
    2e70:	06                   	push   %es
    2e71:	1e                   	push   %ds
    2e72:	b8 d3 03             	mov    $0x3d3,%ax
    2e75:	8e d8                	mov    %ax,%ds
    2e77:	b8 ff ff             	mov    $0xffff,%ax
    2e7a:	f6 06 8e 08 02       	testb  $0x2,0x88e
    2e7f:	74 3e                	je     0x2ebf
    2e81:	06                   	push   %es
    2e82:	8e 06 04 0a          	mov    0xa04,%es
    2e86:	66 8b 3e 06 0a       	mov    0xa06,%edi
    2e8b:	fc                   	cld
    2e8c:	8b 0e f7 08          	mov    0x8f7,%cx
    2e90:	a1 39 0a             	mov    0xa39,%ax
    2e93:	d1 e9                	shr    $1,%cx
    2e95:	f3 ab                	rep stos %ax,%es:(%di)
    2e97:	13 c9                	adc    %cx,%cx
    2e99:	f3 aa                	rep stos %al,%es:(%di)
    2e9b:	07                   	pop    %es
    2e9c:	f7 06 00 0a 01 00    	testw  $0x1,0xa00
    2ea2:	74 1b                	je     0x2ebf
    2ea4:	8e 06 0a 0a          	mov    0xa0a,%es
    2ea8:	bf 00 40             	mov    $0x4000,%di
    2eab:	b9 00 08             	mov    $0x800,%cx
    2eae:	80 3e 7b 08 02       	cmpb   $0x2,0x87b
    2eb3:	75 06                	jne    0x2ebb
    2eb5:	bf 00 80             	mov    $0x8000,%di
    2eb8:	b9 00 10             	mov    $0x1000,%cx
    2ebb:	2b c0                	sub    %ax,%ax
    2ebd:	f3 ab                	rep stos %ax,%es:(%di)
    2ebf:	1f                   	pop    %ds
    2ec0:	07                   	pop    %es
    2ec1:	5f                   	pop    %di
    2ec2:	cb                   	lret
    2ec3:	1e                   	push   %ds
    2ec4:	b8 d3 03             	mov    $0x3d3,%ax
    2ec7:	8e d8                	mov    %ax,%ds
    2ec9:	ff 1e e0 1f          	lcall  *0x1fe0
    2ecd:	66 0f b7 c0          	movzwl %ax,%eax
    2ed1:	66 a3 2f 0a          	mov    %eax,0xa2f
    2ed5:	2b 06 23 0a          	sub    0xa23,%ax
    2ed9:	7f 04                	jg     0x2edf
    2edb:	03 06 f7 08          	add    0x8f7,%ax
    2edf:	66 25 ff ff 00 00    	and    $0xffff,%eax
    2ee5:	66 2b d2             	sub    %edx,%edx
    2ee8:	f7 36 21 0a          	divw   0xa21
    2eec:	66 bb 10 27 00 00    	mov    $0x2710,%ebx
    2ef2:	66 f7 e3             	mul    %ebx
    2ef5:	66 0f b7 1e 19 0a    	movzwl 0xa19,%ebx
    2efb:	66 f7 f3             	div    %ebx
    2efe:	66 2b d2             	sub    %edx,%edx
    2f01:	66 0f a4 c2 10       	shld   $0x10,%eax,%edx
    2f06:	1f                   	pop    %ds
    2f07:	cb                   	lret
    2f08:	66 a1 2f 0a          	mov    0xa2f,%eax
    2f0c:	2b 06 23 0a          	sub    0xa23,%ax
    2f10:	7f 04                	jg     0x2f16
    2f12:	03 06 f7 08          	add    0x8f7,%ax
    2f16:	66 25 ff ff 00 00    	and    $0xffff,%eax
    2f1c:	66 2b d2             	sub    %edx,%edx
    2f1f:	f7 36 21 0a          	divw   0xa21
    2f23:	66 bb 10 27 00 00    	mov    $0x2710,%ebx
    2f29:	66 f7 e3             	mul    %ebx
    2f2c:	66 0f b7 1e 19 0a    	movzwl 0xa19,%ebx
    2f32:	66 f7 f3             	div    %ebx
    2f35:	66 2b d2             	sub    %edx,%edx
    2f38:	66 0f a4 c2 10       	shld   $0x10,%eax,%edx
    2f3d:	cb                   	lret
    2f3e:	c8 06 00 00          	enter  $0x6,$0x0
    2f42:	06                   	push   %es
    2f43:	1e                   	push   %ds
    2f44:	57                   	push   %di
    2f45:	56                   	push   %si
    2f46:	b8 d3 03             	mov    $0x3d3,%ax
    2f49:	8e d8                	mov    %ax,%ds
    2f4b:	1e                   	push   %ds
    2f4c:	1e                   	push   %ds
    2f4d:	07                   	pop    %es
    2f4e:	bf 70 08             	mov    $0x870,%di
    2f51:	c5 76 06             	lds    0x6(%bp),%si
    2f54:	b9 0c 00             	mov    $0xc,%cx
    2f57:	fc                   	cld
    2f58:	f3 a4                	rep movsb %ds:(%si),%es:(%di)
    2f5a:	1f                   	pop    %ds
    2f5b:	0f b6 06 7b 08       	movzbw 0x87b,%ax
    2f60:	8a 0e 7a 08          	mov    0x87a,%cl
    2f64:	80 e1 01             	and    $0x1,%cl
    2f67:	d3 e0                	shl    %cl,%ax
    2f69:	a3 21 0a             	mov    %ax,0xa21
    2f6c:	c4 76 06             	les    0x6(%bp),%si
    2f6f:	fc                   	cld
    2f70:	2b c0                	sub    %ax,%ax
    2f72:	a1 70 08             	mov    0x870,%ax
    2f75:	80 3e 7b 08 02       	cmpb   $0x2,0x87b
    2f7a:	74 03                	je     0x2f7f
    2f7c:	0d 01 00             	or     $0x1,%ax
    2f7f:	a3 00 0a             	mov    %ax,0xa00
    2f82:	8b d8                	mov    %ax,%bx
    2f84:	c1 eb 04             	shr    $0x4,%bx
    2f87:	83 e3 03             	and    $0x3,%bx
    2f8a:	d1 e3                	shl    $1,%bx
    2f8c:	2e 8b 9f 25 17       	mov    %cs:0x1725(%bx),%bx
    2f91:	89 1e 02 0a          	mov    %bx,0xa02
    2f95:	a1 7c 08             	mov    0x87c,%ax
    2f98:	a3 04 0a             	mov    %ax,0xa04
    2f9b:	66 a1 7e 08          	mov    0x87e,%eax
    2f9f:	66 a3 06 0a          	mov    %eax,0xa06
    2fa3:	a1 86 08             	mov    0x886,%ax
    2fa6:	a3 f7 08             	mov    %ax,0x8f7
    2fa9:	a1 72 08             	mov    0x872,%ax
    2fac:	a3 0a 0a             	mov    %ax,0xa0a
    2faf:	a1 76 08             	mov    0x876,%ax
    2fb2:	a3 0c 0a             	mov    %ax,0xa0c
    2fb5:	06                   	push   %es
    2fb6:	c7 06 27 0a 00 00    	movw   $0x0,0xa27
    2fbc:	8c d8                	mov    %ds,%ax
    2fbe:	8e c0                	mov    %ax,%es
    2fc0:	b9 00 05             	mov    $0x500,%cx
    2fc3:	bf 65 0a             	mov    $0xa65,%di
    2fc6:	2a c0                	sub    %al,%al
    2fc8:	f3 aa                	rep stos %al,%es:(%di)
    2fca:	07                   	pop    %es
    2fcb:	0f b6 0e 7b 08       	movzbw 0x87b,%cx
    2fd0:	89 0e 1b 0a          	mov    %cx,0xa1b
    2fd4:	f7 06 00 0a 01 00    	testw  $0x1,0xa00
    2fda:	75 26                	jne    0x3002
    2fdc:	c6 06 34 0a 00       	movb   $0x0,0xa34
    2fe1:	66 c7 06 35 0a 00 00 	movl   $0x0,0xa35
    2fe8:	00 00 
    2fea:	66 c7 06 39 0a 00 00 	movl   $0x0,0xa39
    2ff1:	00 00 
    2ff3:	b8 1e 18             	mov    $0x181e,%ax
    2ff6:	80 3e 7a 08 00       	cmpb   $0x0,0x87a
    2ffb:	74 64                	je     0x3061
    2ffd:	b8 df 18             	mov    $0x18df,%ax
    3000:	eb 5f                	jmp    0x3061
    3002:	80 3e 7b 08 02       	cmpb   $0x2,0x87b
    3007:	74 2c                	je     0x3035
    3009:	c6 06 34 0a 01       	movb   $0x1,0xa34
    300e:	c7 06 1b 0a 02 00    	movw   $0x2,0xa1b
    3014:	66 c7 06 35 0a 00 00 	movl   $0x0,0xa35
    301b:	00 00 
    301d:	66 c7 06 39 0a 80 80 	movl   $0x80808080,0xa39
    3024:	80 80 
    3026:	b8 1e 18             	mov    $0x181e,%ax
    3029:	80 3e 7a 08 00       	cmpb   $0x0,0x87a
    302e:	74 31                	je     0x3061
    3030:	b8 df 18             	mov    $0x18df,%ax
    3033:	eb 2c                	jmp    0x3061
    3035:	c6 06 34 0a 01       	movb   $0x1,0xa34
    303a:	c7 06 1b 0a 04 00    	movw   $0x4,0xa1b
    3040:	66 c7 06 35 0a 00 00 	movl   $0x0,0xa35
    3047:	00 00 
    3049:	66 c7 06 39 0a 00 00 	movl   $0x0,0xa39
    3050:	00 00 
    3052:	b8 51 1c             	mov    $0x1c51,%ax
    3055:	80 3e 7a 08 00       	cmpb   $0x0,0x87a
    305a:	74 05                	je     0x3061
    305c:	b8 51 1d             	mov    $0x1d51,%ax
    305f:	eb 00                	jmp    0x3061
    3061:	f7 06 00 0a 02 00    	testw  $0x2,0xa00
    3067:	74 00                	je     0x3069
    3069:	a3 25 0a             	mov    %ax,0xa25
    306c:	66 a1 8a 08          	mov    0x88a,%eax
    3070:	a3 19 0a             	mov    %ax,0xa19
    3073:	80 0e 8e 08 02       	orb    $0x2,0x88e
    3078:	0e                   	push   %cs
    3079:	e8 f3 fd             	call   0x2e6f
    307c:	c6 06 18 0a 40       	movb   $0x40,0xa18
    3081:	66 c7 06 61 0a 00 00 	movl   $0x0,0xa61
    3088:	00 00 
    308a:	c6 06 33 0a 00       	movb   $0x0,0xa33
    308f:	66 c7 46 fa 00 00 00 	movl   $0x0,-0x6(%bp)
    3096:	00 
    3097:	c7 06 2d 0a 00 00    	movw   $0x0,0xa2d
    309d:	66 8b 46 fa          	mov    -0x6(%bp),%eax
    30a1:	99                   	cwtd
    30a2:	5e                   	pop    %si
    30a3:	5f                   	pop    %di
    30a4:	1f                   	pop    %ds
    30a5:	07                   	pop    %es
    30a6:	c9                   	leave
    30a7:	ca 04 00             	lret   $0x4
    30aa:	1e                   	push   %ds
    30ab:	b8 d3 03             	mov    $0x3d3,%ax
    30ae:	8e d8                	mov    %ax,%ds
    30b0:	b8 ff ff             	mov    $0xffff,%ax
    30b3:	f6 06 8e 08 02       	testb  $0x2,0x88e
    30b8:	74 0b                	je     0x30c5
    30ba:	0e                   	push   %cs
    30bb:	e8 90 02             	call   0x334e
    30be:	80 26 8e 08 f9       	andb   $0xf9,0x88e
    30c3:	2b c0                	sub    %ax,%ax
    30c5:	1f                   	pop    %ds
    30c6:	cb                   	lret
    30c7:	c8 08 00 00          	enter  $0x8,$0x0
    30cb:	06                   	push   %es
    30cc:	57                   	push   %di
    30cd:	fc                   	cld
    30ce:	8e 06 0a 0a          	mov    0xa0a,%es
    30d2:	2b ff                	sub    %di,%di
    30d4:	be 6d 0f             	mov    $0xf6d,%si
    30d7:	89 5e f8             	mov    %bx,-0x8(%bp)
    30da:	c7 46 fa 20 00       	movw   $0x20,-0x6(%bp)
    30df:	c7 46 fe 80 ff       	movw   $0xff80,-0x2(%bp)
    30e4:	b9 00 01             	mov    $0x100,%cx
    30e7:	66 0f bf 46 fe       	movswl -0x2(%bp),%eax
    30ec:	66 c1 e0 08          	shl    $0x8,%eax
    30f0:	66 0f b7 1c          	movzwl (%si),%ebx
    30f4:	66 f7 eb             	imul   %ebx
    30f7:	66 0f b7 5e f8       	movzwl -0x8(%bp),%ebx
    30fc:	66 f7 fb             	idiv   %ebx
    30ff:	66 c1 f8 05          	sar    $0x5,%eax
    3103:	26 89 05             	mov    %ax,%es:(%di)
    3106:	83 c7 02             	add    $0x2,%di
    3109:	ff 46 fe             	incw   -0x2(%bp)
    310c:	e2 d9                	loop   0x30e7
    310e:	83 c6 02             	add    $0x2,%si
    3111:	ff 4e fa             	decw   -0x6(%bp)
    3114:	75 c9                	jne    0x30df
    3116:	5f                   	pop    %di
    3117:	07                   	pop    %es
    3118:	c9                   	leave
    3119:	cb                   	lret
    311a:	c8 08 00 00          	enter  $0x8,$0x0
    311e:	06                   	push   %es
    311f:	57                   	push   %di
    3120:	fc                   	cld
    3121:	8e 06 0a 0a          	mov    0xa0a,%es
    3125:	2b ff                	sub    %di,%di
    3127:	be 6d 0f             	mov    $0xf6d,%si
    312a:	89 5e f8             	mov    %bx,-0x8(%bp)
    312d:	c7 46 fa 20 00       	movw   $0x20,-0x6(%bp)
    3132:	c7 46 fe 80 ff       	movw   $0xff80,-0x2(%bp)
    3137:	b9 00 01             	mov    $0x100,%cx
    313a:	66 0f bf 46 fe       	movswl -0x2(%bp),%eax
    313f:	66 c1 e0 08          	shl    $0x8,%eax
    3143:	66 0f b7 1c          	movzwl (%si),%ebx
    3147:	66 f7 eb             	imul   %ebx
    314a:	66 0f b7 5e f8       	movzwl -0x8(%bp),%ebx
    314f:	66 f7 fb             	idiv   %ebx
    3152:	66 c1 f8 05          	sar    $0x5,%eax
    3156:	66 26 89 05          	mov    %eax,%es:(%di)
    315a:	83 c7 04             	add    $0x4,%di
    315d:	ff 46 fe             	incw   -0x2(%bp)
    3160:	e2 d8                	loop   0x313a
    3162:	83 c6 02             	add    $0x2,%si
    3165:	ff 4e fa             	decw   -0x6(%bp)
    3168:	75 c8                	jne    0x3132
    316a:	5f                   	pop    %di
    316b:	07                   	pop    %es
    316c:	c9                   	leave
    316d:	cb                   	lret
    316e:	00 00                	add    %al,(%bx,%si)
    3170:	aa                   	stos   %al,%es:(%di)
    3171:	00 be 00 dc          	add    %bh,-0x2400(%bp)
    3175:	00 2c                	add    %ch,(%si)
    3177:	01 54 01             	add    %dx,0x1(%si)
    317a:	a4                   	movsb  %ds:(%si),%es:(%di)
    317b:	01 e5                	add    %sp,%bp
    317d:	01 1c                	add    %bx,(%si)
    317f:	02 4e 02             	add    0x2(%bp),%cl
    3182:	76 02                	jbe    0x3186
    3184:	9e                   	sahf
    3185:	02 bc 02 d0          	add    -0x2ffe(%si),%bh
    3189:	02 da                	add    %dl,%bl
    318b:	02 e4                	add    %ah,%ah
    318d:	02 ee                	add    %dh,%ch
    318f:	02 f8                	add    %al,%bh
    3191:	02 fd                	add    %ch,%bh
    3193:	02 02                	add    (%bp,%si),%al
    3195:	03 07                	add    (%bx),%ax
    3197:	03 07                	add    (%bx),%ax
    3199:	03 0c                	add    (%si),%cx
    319b:	03 0c                	add    (%si),%cx
    319d:	03 0c                	add    (%si),%cx
    319f:	03 11                	add    (%bx,%di),%dx
    31a1:	03 11                	add    (%bx,%di),%dx
    31a3:	03 11                	add    (%bx,%di),%dx
    31a5:	03 11                	add    (%bx,%di),%dx
    31a7:	03 11                	add    (%bx,%di),%dx
    31a9:	03 11                	add    (%bx,%di),%dx
    31ab:	03 11                	add    (%bx,%di),%dx
    31ad:	03 11                	add    (%bx,%di),%dx
    31af:	03 c8                	add    %ax,%cx
    31b1:	06                   	push   %es
    31b2:	00 00                	add    %al,(%bx,%si)
    31b4:	66 56                	push   %esi
    31b6:	1e                   	push   %ds
    31b7:	06                   	push   %es
    31b8:	fc                   	cld
    31b9:	8e 06 0a 0a          	mov    0xa0a,%es
    31bd:	2b ff                	sub    %di,%di
    31bf:	81 c7 00 60          	add    $0x6000,%di
    31c3:	d1 e3                	shl    $1,%bx
    31c5:	66 2e 0f b7 b7 5e 2c 	movzwl %cs:0x2c5e(%bx),%esi
    31cc:	bb 00 00             	mov    $0x0,%bx
    31cf:	66 2b c9             	sub    %ecx,%ecx
    31d2:	66 8b c1             	mov    %ecx,%eax
    31d5:	66 6b c0 7f          	imul   $0x7f,%eax,%eax
    31d9:	66 2b d2             	sub    %edx,%edx
    31dc:	66 f7 f6             	div    %esi
    31df:	3d 7f 00             	cmp    $0x7f,%ax
    31e2:	76 03                	jbe    0x31e7
    31e4:	b8 7f 00             	mov    $0x7f,%ax
    31e7:	04 80                	add    $0x80,%al
    31e9:	26 88 01             	mov    %al,%es:(%bx,%di)
    31ec:	f7 db                	neg    %bx
    31ee:	f6 d8                	neg    %al
    31f0:	26 88 01             	mov    %al,%es:(%bx,%di)
    31f3:	f7 db                	neg    %bx
    31f5:	43                   	inc    %bx
    31f6:	41                   	inc    %cx
    31f7:	81 f9 00 10          	cmp    $0x1000,%cx
    31fb:	7c d5                	jl     0x31d2
    31fd:	8e 06 0a 0a          	mov    0xa0a,%es
    3201:	2b ff                	sub    %di,%di
    3203:	be 6d 0f             	mov    $0xf6d,%si
    3206:	c7 46 fa 20 00       	movw   $0x20,-0x6(%bp)
    320b:	c7 46 fe 80 ff       	movw   $0xff80,-0x2(%bp)
    3210:	b9 00 01             	mov    $0x100,%cx
    3213:	66 0f b7 1c          	movzwl (%si),%ebx
    3217:	66 0f bf 46 fe       	movswl -0x2(%bp),%eax
    321c:	66 f7 eb             	imul   %ebx
    321f:	66 c1 f8 05          	sar    $0x5,%eax
    3223:	26 89 05             	mov    %ax,%es:(%di)
    3226:	83 c7 02             	add    $0x2,%di
    3229:	ff 46 fe             	incw   -0x2(%bp)
    322c:	e2 e9                	loop   0x3217
    322e:	83 c6 02             	add    $0x2,%si
    3231:	ff 4e fa             	decw   -0x6(%bp)
    3234:	75 d5                	jne    0x320b
    3236:	07                   	pop    %es
    3237:	1f                   	pop    %ds
    3238:	66 5e                	pop    %esi
    323a:	c9                   	leave
    323b:	cb                   	lret
    323c:	c8 00 00 00          	enter  $0x0,$0x0
    3240:	06                   	push   %es
    3241:	1e                   	push   %ds
    3242:	56                   	push   %si
    3243:	57                   	push   %di
    3244:	b8 d3 03             	mov    $0x3d3,%ax
    3247:	8e d8                	mov    %ax,%ds
    3249:	b8 ff ff             	mov    $0xffff,%ax
    324c:	f6 06 8e 08 02       	testb  $0x2,0x88e
    3251:	0f 84 9d 00          	je     0x32f2
    3255:	66 83 7e 06 20       	cmpl   $0x20,0x6(%bp)
    325a:	0f 87 94 00          	ja     0x32f2
    325e:	66 83 7e 06 00       	cmpl   $0x0,0x6(%bp)
    3263:	0f 84 8b 00          	je     0x32f2
    3267:	fc                   	cld
    3268:	1e                   	push   %ds
    3269:	07                   	pop    %es
    326a:	f7 06 00 0a 40 00    	testw  $0x40,0xa00
    3270:	74 0f                	je     0x3281
    3272:	66 8b 5e 06          	mov    0x6(%bp),%ebx
    3276:	4b                   	dec    %bx
    3277:	d1 e3                	shl    $1,%bx
    3279:	2e 8b 87 2d 17       	mov    %cs:0x172d(%bx),%ax
    327e:	a3 02 0a             	mov    %ax,0xa02
    3281:	66 8b 56 06          	mov    0x6(%bp),%edx
    3285:	8b 1e 27 0a          	mov    0xa27,%bx
    3289:	89 16 27 0a          	mov    %dx,0xa27
    328d:	2b d3                	sub    %bx,%dx
    328f:	7e 20                	jle    0x32b1
    3291:	d1 e3                	shl    $1,%bx
    3293:	2a c0                	sub    %al,%al
    3295:	66 2e 0f b7 bf a5 16 	movzwl %cs:0x16a5(%bx),%edi
    329c:	81 c7 65 0a          	add    $0xa65,%di
    32a0:	b9 28 00             	mov    $0x28,%cx
    32a3:	8b f7                	mov    %di,%si
    32a5:	f3 aa                	rep stos %al,%es:(%di)
    32a7:	c6 44 27 00          	movb   $0x0,0x27(%si)
    32ab:	83 c3 02             	add    $0x2,%bx
    32ae:	4a                   	dec    %dx
    32af:	75 e4                	jne    0x3295
    32b1:	b9 20 00             	mov    $0x20,%cx
    32b4:	2b db                	sub    %bx,%bx
    32b6:	be 64 00             	mov    $0x64,%si
    32b9:	2e 8b 87 e5 16       	mov    %cs:0x16e5(%bx),%ax
    32be:	f7 2e 02 0a          	imulw  0xa02
    32c2:	f7 f6                	div    %si
    32c4:	89 87 6d 0f          	mov    %ax,0xf6d(%bx)
    32c8:	83 c3 02             	add    $0x2,%bx
    32cb:	e2 ec                	loop   0x32b9
    32cd:	66 8b 5e 06          	mov    0x6(%bp),%ebx
    32d1:	f7 06 00 0a 01 00    	testw  $0x1,0xa00
    32d7:	75 06                	jne    0x32df
    32d9:	0e                   	push   %cs
    32da:	e8 ea fd             	call   0x30c7
    32dd:	eb 11                	jmp    0x32f0
    32df:	80 3e 7b 08 02       	cmpb   $0x2,0x87b
    32e4:	74 06                	je     0x32ec
    32e6:	0e                   	push   %cs
    32e7:	e8 c6 fe             	call   0x31b0
    32ea:	eb 04                	jmp    0x32f0
    32ec:	0e                   	push   %cs
    32ed:	e8 2a fe             	call   0x311a
    32f0:	2b c0                	sub    %ax,%ax
    32f2:	5f                   	pop    %di
    32f3:	5e                   	pop    %si
    32f4:	1f                   	pop    %ds
    32f5:	07                   	pop    %es
    32f6:	c9                   	leave
    32f7:	ca 04 00             	lret   $0x4
    32fa:	57                   	push   %di
    32fb:	1e                   	push   %ds
    32fc:	b8 d3 03             	mov    $0x3d3,%ax
    32ff:	8e d8                	mov    %ax,%ds
    3301:	b8 ff ff             	mov    $0xffff,%ax
    3304:	f6 06 8e 08 02       	testb  $0x2,0x88e
    3309:	74 40                	je     0x334b
    330b:	f6 06 8e 08 04       	testb  $0x4,0x88e
    3310:	75 39                	jne    0x334b
    3312:	c7 06 23 0a 00 00    	movw   $0x0,0xa23
    3318:	ff 1e e4 1f          	lcall  *0x1fe4
    331c:	66 c1 e2 10          	shl    $0x10,%edx
    3320:	66 25 ff ff 00 00    	and    $0xffff,%eax
    3326:	66 0b c2             	or     %edx,%eax
    3329:	66 a3 29 0a          	mov    %eax,0xa29
    332d:	66 c7 06 70 1d 00 00 	movl   $0x0,0x1d70
    3334:	00 00 
    3336:	66 c7 06 74 1d 00 00 	movl   $0x0,0x1d74
    333d:	00 00 
    333f:	0e                   	push   %cs
    3340:	e8 2c fb             	call   0x2e6f
    3343:	80 0e 8e 08 04       	orb    $0x4,0x88e
    3348:	b8 00 00             	mov    $0x0,%ax
    334b:	1f                   	pop    %ds
    334c:	5f                   	pop    %di
    334d:	cb                   	lret
    334e:	1e                   	push   %ds
    334f:	b8 d3 03             	mov    $0x3d3,%ax
    3352:	8e d8                	mov    %ax,%ds
    3354:	b8 ff ff             	mov    $0xffff,%ax
    3357:	f6 06 8e 08 02       	testb  $0x2,0x88e
    335c:	74 13                	je     0x3371
    335e:	f6 06 8e 08 04       	testb  $0x4,0x88e
    3363:	74 0c                	je     0x3371
    3365:	80 26 8e 08 fb       	andb   $0xfb,0x88e
    336a:	0e                   	push   %cs
    336b:	e8 01 fb             	call   0x2e6f
    336e:	b8 00 00             	mov    $0x0,%ax
    3371:	1f                   	pop    %ds
    3372:	cb                   	lret
    3373:	c8 00 00 00          	enter  $0x0,$0x0
    3377:	1e                   	push   %ds
    3378:	b8 d3 03             	mov    $0x3d3,%ax
    337b:	8e d8                	mov    %ax,%ds
    337d:	b8 ff ff             	mov    $0xffff,%ax
    3380:	f6 06 8e 08 02       	testb  $0x2,0x88e
    3385:	74 24                	je     0x33ab
    3387:	66 8b 5e 06          	mov    0x6(%bp),%ebx
    338b:	3b 1e 27 0a          	cmp    0xa27,%bx
    338f:	73 1a                	jae    0x33ab
    3391:	d1 e3                	shl    $1,%bx
    3393:	2e 8b 9f a5 16       	mov    %cs:0x16a5(%bx),%bx
    3398:	b8 fe ff             	mov    $0xfffe,%ax
    339b:	f7 87 65 0a 04 00    	testw  $0x4,0xa65(%bx)
    33a1:	75 08                	jne    0x33ab
    33a3:	83 8f 65 0a 04       	orw    $0x4,0xa65(%bx)
    33a8:	b8 00 00             	mov    $0x0,%ax
    33ab:	1f                   	pop    %ds
    33ac:	c9                   	leave
    33ad:	ca 04 00             	lret   $0x4
    33b0:	c8 00 00 00          	enter  $0x0,$0x0
    33b4:	1e                   	push   %ds
    33b5:	b8 d3 03             	mov    $0x3d3,%ax
    33b8:	8e d8                	mov    %ax,%ds
    33ba:	b8 ff ff             	mov    $0xffff,%ax
    33bd:	f6 06 8e 08 02       	testb  $0x2,0x88e
    33c2:	74 24                	je     0x33e8
    33c4:	66 8b 5e 06          	mov    0x6(%bp),%ebx
    33c8:	3b 1e 27 0a          	cmp    0xa27,%bx
    33cc:	73 1a                	jae    0x33e8
    33ce:	d1 e3                	shl    $1,%bx
    33d0:	2e 8b 9f a5 16       	mov    %cs:0x16a5(%bx),%bx
    33d5:	b8 fe ff             	mov    $0xfffe,%ax
    33d8:	f7 87 65 0a 04 00    	testw  $0x4,0xa65(%bx)
    33de:	74 08                	je     0x33e8
    33e0:	83 a7 65 0a fb       	andw   $0xfffb,0xa65(%bx)
    33e5:	b8 00 00             	mov    $0x0,%ax
    33e8:	1f                   	pop    %ds
    33e9:	c9                   	leave
    33ea:	ca 04 00             	lret   $0x4
    33ed:	c8 00 00 00          	enter  $0x0,$0x0
    33f1:	1e                   	push   %ds
    33f2:	b8 d3 03             	mov    $0x3d3,%ax
    33f5:	8e d8                	mov    %ax,%ds
    33f7:	b8 ff ff             	mov    $0xffff,%ax
    33fa:	f6 06 8e 08 02       	testb  $0x2,0x88e
    33ff:	74 24                	je     0x3425
    3401:	66 8b 5e 06          	mov    0x6(%bp),%ebx
    3405:	3b 1e 27 0a          	cmp    0xa27,%bx
    3409:	73 1a                	jae    0x3425
    340b:	d1 e3                	shl    $1,%bx
    340d:	2e 8b 9f a5 16       	mov    %cs:0x16a5(%bx),%bx
    3412:	b8 fe ff             	mov    $0xfffe,%ax
    3415:	f7 87 65 0a 01 00    	testw  $0x1,0xa65(%bx)
    341b:	74 08                	je     0x3425
    341d:	83 a7 65 0a fe       	andw   $0xfffe,0xa65(%bx)
    3422:	b8 00 00             	mov    $0x0,%ax
    3425:	1f                   	pop    %ds
    3426:	c9                   	leave
    3427:	ca 04 00             	lret   $0x4
    342a:	1e                   	push   %ds
    342b:	b8 d3 03             	mov    $0x3d3,%ax
    342e:	8e d8                	mov    %ax,%ds
    3430:	b8 ff ff             	mov    $0xffff,%ax
    3433:	f6 06 8e 08 02       	testb  $0x2,0x88e
    3438:	74 1c                	je     0x3456
    343a:	8b 0e 27 0a          	mov    0xa27,%cx
    343e:	e3 16                	jcxz   0x3456
    3440:	66 2b d2             	sub    %edx,%edx
    3443:	51                   	push   %cx
    3444:	66 52                	push   %edx
    3446:	66 52                	push   %edx
    3448:	0e                   	push   %cs
    3449:	e8 27 ff             	call   0x3373
    344c:	66 5a                	pop    %edx
    344e:	66 42                	inc    %edx
    3450:	59                   	pop    %cx
    3451:	e2 f0                	loop   0x3443
    3453:	b8 00 00             	mov    $0x0,%ax
    3456:	1f                   	pop    %ds
    3457:	cb                   	lret
    3458:	1e                   	push   %ds
    3459:	b8 d3 03             	mov    $0x3d3,%ax
    345c:	8e d8                	mov    %ax,%ds
    345e:	b8 ff ff             	mov    $0xffff,%ax
    3461:	f6 06 8e 08 02       	testb  $0x2,0x88e
    3466:	74 1c                	je     0x3484
    3468:	8b 0e 27 0a          	mov    0xa27,%cx
    346c:	e3 16                	jcxz   0x3484
    346e:	66 2b d2             	sub    %edx,%edx
    3471:	51                   	push   %cx
    3472:	66 52                	push   %edx
    3474:	66 52                	push   %edx
    3476:	0e                   	push   %cs
    3477:	e8 36 ff             	call   0x33b0
    347a:	66 5a                	pop    %edx
    347c:	66 42                	inc    %edx
    347e:	59                   	pop    %cx
    347f:	e2 f0                	loop   0x3471
    3481:	b8 00 00             	mov    $0x0,%ax
    3484:	1f                   	pop    %ds
    3485:	cb                   	lret
    3486:	1e                   	push   %ds
    3487:	b8 d3 03             	mov    $0x3d3,%ax
    348a:	8e d8                	mov    %ax,%ds
    348c:	b8 ff ff             	mov    $0xffff,%ax
    348f:	f6 06 8e 08 02       	testb  $0x2,0x88e
    3494:	74 03                	je     0x3499
    3496:	a1 27 0a             	mov    0xa27,%ax
    3499:	1f                   	pop    %ds
    349a:	cb                   	lret
    349b:	c8 00 00 00          	enter  $0x0,$0x0
    349f:	1e                   	push   %ds
    34a0:	b8 d3 03             	mov    $0x3d3,%ax
    34a3:	8e d8                	mov    %ax,%ds
    34a5:	b8 ff ff             	mov    $0xffff,%ax
    34a8:	f6 06 8e 08 02       	testb  $0x2,0x88e
    34ad:	74 17                	je     0x34c6
    34af:	66 8b 5e 06          	mov    0x6(%bp),%ebx
    34b3:	3b 1e 27 0a          	cmp    0xa27,%bx
    34b7:	73 0d                	jae    0x34c6
    34b9:	d1 e3                	shl    $1,%bx
    34bb:	2e 8b 9f a5 16       	mov    %cs:0x16a5(%bx),%bx
    34c0:	66 0f b7 87 65 0a    	movzwl 0xa65(%bx),%eax
    34c6:	1f                   	pop    %ds
    34c7:	c9                   	leave
    34c8:	ca 04 00             	lret   $0x4
    34cb:	f5                   	cmc
    34cc:	31 c1                	xor    %ax,%cx
    34ce:	32 8c 33 e3          	xor    -0x1ccd(%si),%cl
    34d2:	33 72 34             	xor    0x34(%bp,%si),%si
    34d5:	e1 34                	loope  0x350b
    34d7:	66 57                	push   %edi
    34d9:	66 56                	push   %esi
    34db:	06                   	push   %es
    34dc:	ff 1e e4 1f          	lcall  *0x1fe4
    34e0:	66 c1 e2 10          	shl    $0x10,%edx
    34e4:	66 25 ff ff 00 00    	and    $0xffff,%eax
    34ea:	66 0b c2             	or     %edx,%eax
    34ed:	66 a3 5c 1d          	mov    %eax,0x1d5c
    34f1:	66 8b 3e 74 1d       	mov    0x1d74,%edi
    34f6:	66 ff 06 74 1d       	incl   0x1d74
    34fb:	66 81 3e 74 1d 5e 01 	cmpl   $0x15e,0x1d74
    3502:	00 00 
    3504:	72 09                	jb     0x350f
    3506:	66 c7 06 74 1d 00 00 	movl   $0x0,0x1d74
    350d:	00 00 
    350f:	1e                   	push   %ds
    3510:	07                   	pop    %es
    3511:	6b ff 0a             	imul   $0xa,%di,%di
    3514:	81 c7 b0 0f          	add    $0xfb0,%di
    3518:	be 5c 1d             	mov    $0x1d5c,%si
    351b:	b9 0a 00             	mov    $0xa,%cx
    351e:	fc                   	cld
    351f:	f3 a4                	rep movsb %ds:(%si),%es:(%di)
    3521:	07                   	pop    %es
    3522:	66 5e                	pop    %esi
    3524:	66 5f                	pop    %edi
    3526:	cb                   	lret
    3527:	66 57                	push   %edi
    3529:	66 56                	push   %esi
    352b:	06                   	push   %es
    352c:	b8 ff ff             	mov    $0xffff,%ax
    352f:	66 8b 36 70 1d       	mov    0x1d70,%esi
    3534:	66 3b 36 78 1d       	cmp    0x1d78,%esi
    3539:	74 2d                	je     0x3568
    353b:	66 ff 06 70 1d       	incl   0x1d70
    3540:	66 81 3e 70 1d 5e 01 	cmpl   $0x15e,0x1d70
    3547:	00 00 
    3549:	72 09                	jb     0x3554
    354b:	66 c7 06 70 1d 00 00 	movl   $0x0,0x1d70
    3552:	00 00 
    3554:	1e                   	push   %ds
    3555:	07                   	pop    %es
    3556:	6b f6 0a             	imul   $0xa,%si,%si
    3559:	81 c6 b0 0f          	add    $0xfb0,%si
    355d:	bf 66 1d             	mov    $0x1d66,%di
    3560:	b9 0a 00             	mov    $0xa,%cx
    3563:	fc                   	cld
    3564:	f3 a4                	rep movsb %ds:(%si),%es:(%di)
    3566:	2b c0                	sub    %ax,%ax
    3568:	07                   	pop    %es
    3569:	66 5e                	pop    %esi
    356b:	66 5f                	pop    %edi
    356d:	cb                   	lret
    356e:	56                   	push   %si
    356f:	2b db                	sub    %bx,%bx
    3571:	8a 1e 6f 1d          	mov    0x1d6f,%bl
    3575:	8b f3                	mov    %bx,%si
    3577:	80 e3 1f             	and    $0x1f,%bl
    357a:	c1 ee 05             	shr    $0x5,%si
    357d:	d1 e6                	shl    $1,%si
    357f:	2e 8b b4 bb 2f       	mov    %cs:0x2fbb(%si),%si
    3584:	66 a1 6a 1d          	mov    0x1d6a,%eax
    3588:	2b c9                	sub    %cx,%cx
    358a:	8a 0e 6e 1d          	mov    0x1d6e,%cl
    358e:	ff d6                	call   *%si
    3590:	5e                   	pop    %si
    3591:	cb                   	lret
    3592:	c8 08 00 00          	enter  $0x8,$0x0
    3596:	66 57                	push   %edi
    3598:	66 56                	push   %esi
    359a:	1e                   	push   %ds
    359b:	06                   	push   %es
    359c:	b8 d3 03             	mov    $0x3d3,%ax
    359f:	8e d8                	mov    %ax,%ds
    35a1:	b8 ff ff             	mov    $0xffff,%ax
    35a4:	f6 06 8e 08 02       	testb  $0x2,0x88e
    35a9:	0f 84 cb 00          	je     0x3678
    35ad:	83 3e 2d 0a 01       	cmpw   $0x1,0xa2d
    35b2:	0f 84 db 00          	je     0x3691
    35b6:	c7 06 2d 0a 01 00    	movw   $0x1,0xa2d
    35bc:	fa                   	cli
    35bd:	0e                   	push   %cs
    35be:	e8 02 f9             	call   0x2ec3
    35c1:	66 89 46 fc          	mov    %eax,-0x4(%bp)
    35c5:	ff 1e e4 1f          	lcall  *0x1fe4
    35c9:	fb                   	sti
    35ca:	66 c1 e2 10          	shl    $0x10,%edx
    35ce:	66 25 ff ff 00 00    	and    $0xffff,%eax
    35d4:	66 0b c2             	or     %edx,%eax
    35d7:	66 89 46 f8          	mov    %eax,-0x8(%bp)
    35db:	66 a1 74 1d          	mov    0x1d74,%eax
    35df:	66 a3 78 1d          	mov    %eax,0x1d78
    35e3:	66 8b 46 f8          	mov    -0x8(%bp),%eax
    35e7:	66 2b 06 29 0a       	sub    0xa29,%eax
    35ec:	66 83 f8 78          	cmp    $0x78,%eax
    35f0:	0f 8c 84 00          	jl     0x3678
    35f4:	0e                   	push   %cs
    35f5:	e8 2f ff             	call   0x3527
    35f8:	3d ff ff             	cmp    $0xffff,%ax
    35fb:	74 45                	je     0x3642
    35fd:	66 a1 66 1d          	mov    0x1d66,%eax
    3601:	66 8b f8             	mov    %eax,%edi
    3604:	66 2b 06 29 0a       	sub    0xa29,%eax
    3609:	66 29 46 fc          	sub    %eax,-0x4(%bp)
    360d:	7c 46                	jl     0x3655
    360f:	66 50                	push   %eax
    3611:	0e                   	push   %cs
    3612:	e8 2f f7             	call   0x2d44
    3615:	0e                   	push   %cs
    3616:	e8 55 ff             	call   0x356e
    3619:	0e                   	push   %cs
    361a:	e8 0a ff             	call   0x3527
    361d:	3d ff ff             	cmp    $0xffff,%ax
    3620:	74 20                	je     0x3642
    3622:	66 a1 66 1d          	mov    0x1d66,%eax
    3626:	66 2b c7             	sub    %edi,%eax
    3629:	74 11                	je     0x363c
    362b:	66 8b 3e 66 1d       	mov    0x1d66,%edi
    3630:	66 29 46 fc          	sub    %eax,-0x4(%bp)
    3634:	7c 1f                	jl     0x3655
    3636:	66 50                	push   %eax
    3638:	0e                   	push   %cs
    3639:	e8 08 f7             	call   0x2d44
    363c:	0e                   	push   %cs
    363d:	e8 2e ff             	call   0x356e
    3640:	eb d7                	jmp    0x3619
    3642:	66 83 7e fc 00       	cmpl   $0x0,-0x4(%bp)
    3647:	7c 27                	jl     0x3670
    3649:	0e                   	push   %cs
    364a:	e8 bb f8             	call   0x2f08
    364d:	66 50                	push   %eax
    364f:	0e                   	push   %cs
    3650:	e8 f1 f6             	call   0x2d44
    3653:	eb 1b                	jmp    0x3670
    3655:	0e                   	push   %cs
    3656:	e8 15 ff             	call   0x356e
    3659:	0e                   	push   %cs
    365a:	e8 ca fe             	call   0x3527
    365d:	3d ff ff             	cmp    $0xffff,%ax
    3660:	75 f3                	jne    0x3655
    3662:	0e                   	push   %cs
    3663:	e8 08 ff             	call   0x356e
    3666:	0e                   	push   %cs
    3667:	e8 9e f8             	call   0x2f08
    366a:	66 50                	push   %eax
    366c:	0e                   	push   %cs
    366d:	e8 d4 f6             	call   0x2d44
    3670:	66 8b 46 f8          	mov    -0x8(%bp),%eax
    3674:	66 a3 29 0a          	mov    %eax,0xa29
    3678:	c7 06 2d 0a 00 00    	movw   $0x0,0xa2d
    367e:	07                   	pop    %es
    367f:	1f                   	pop    %ds
    3680:	66 5e                	pop    %esi
    3682:	66 5f                	pop    %edi
    3684:	c9                   	leave
    3685:	cb                   	lret
    3686:	c7 06 2d 0a 00 00    	movw   $0x0,0xa2d
    368c:	66 ff 06 6c 08       	incl   0x86c
    3691:	07                   	pop    %es
    3692:	1f                   	pop    %ds
    3693:	66 5e                	pop    %esi
    3695:	66 5f                	pop    %edi
    3697:	c9                   	leave
    3698:	cb                   	lret
    3699:	c8 00 00 00          	enter  $0x0,$0x0
    369d:	1e                   	push   %ds
    369e:	06                   	push   %es
    369f:	56                   	push   %si
    36a0:	57                   	push   %di
    36a1:	b8 d3 03             	mov    $0x3d3,%ax
    36a4:	8e d8                	mov    %ax,%ds
    36a6:	b8 ff ff             	mov    $0xffff,%ax
    36a9:	f6 06 8e 08 02       	testb  $0x2,0x88e
    36ae:	74 4d                	je     0x36fd
    36b0:	66 8b 5e 0a          	mov    0xa(%bp),%ebx
    36b4:	3b 1e 27 0a          	cmp    0xa27,%bx
    36b8:	73 43                	jae    0x36fd
    36ba:	d1 e3                	shl    $1,%bx
    36bc:	2e 8b 9f a5 16       	mov    %cs:0x16a5(%bx),%bx
    36c1:	66 8b 46 0a          	mov    0xa(%bp),%eax
    36c5:	24 1f                	and    $0x1f,%al
    36c7:	0c 00                	or     $0x0,%al
    36c9:	a2 65 1d             	mov    %al,0x1d65
    36cc:	66 2b ff             	sub    %edi,%edi
    36cf:	8b 3e dc 1f          	mov    0x1fdc,%di
    36d3:	66 89 3e 60 1d       	mov    %edi,0x1d60
    36d8:	66 6b ff 13          	imul   $0x13,%edi,%edi
    36dc:	1e                   	push   %ds
    36dd:	81 c7 7c 1d          	add    $0x1d7c,%di
    36e1:	1e                   	push   %ds
    36e2:	07                   	pop    %es
    36e3:	c5 76 06             	lds    0x6(%bp),%si
    36e6:	b9 13 00             	mov    $0x13,%cx
    36e9:	fc                   	cld
    36ea:	f3 a4                	rep movsb %ds:(%si),%es:(%di)
    36ec:	1f                   	pop    %ds
    36ed:	0e                   	push   %cs
    36ee:	e8 e6 fd             	call   0x34d7
    36f1:	ff 0e dc 1f          	decw   0x1fdc
    36f5:	79 06                	jns    0x36fd
    36f7:	c7 06 dc 1f 1f 00    	movw   $0x1f,0x1fdc
    36fd:	5f                   	pop    %di
    36fe:	5e                   	pop    %si
    36ff:	07                   	pop    %es
    3700:	1f                   	pop    %ds
    3701:	c9                   	leave
    3702:	ca 08 00             	lret   $0x8
    3705:	56                   	push   %si
    3706:	d1 e3                	shl    $1,%bx
    3708:	2e 8b 9f a5 16       	mov    %cs:0x16a5(%bx),%bx
    370d:	0f b6 f0             	movzbw %al,%si
    3710:	6b f6 13             	imul   $0x13,%si,%si
    3713:	81 c6 7c 1d          	add    $0x1d7c,%si
    3717:	1e                   	push   %ds
    3718:	07                   	pop    %es
    3719:	66 26 8b 04          	mov    %es:(%si),%eax
    371d:	66 0b c0             	or     %eax,%eax
    3720:	74 66                	je     0x3788
    3722:	66 89 87 67 0a       	mov    %eax,0xa67(%bx)
    3727:	66 26 8b 44 04       	mov    %es:0x4(%si),%eax
    372c:	66 0b c0             	or     %eax,%eax
    372f:	74 57                	je     0x3788
    3731:	66 89 87 6b 0a       	mov    %eax,0xa6b(%bx)
    3736:	26 f6 44 10 01       	testb  $0x1,%es:0x10(%si)
    373b:	74 22                	je     0x375f
    373d:	66 8b 87 73 0a       	mov    0xa73(%bx),%eax
    3742:	66 26 83 7c 0c 00    	cmpl   $0x0,%es:0xc(%si)
    3748:	74 0e                	je     0x3758
    374a:	66 26 3b 44 0c       	cmp    %es:0xc(%si),%eax
    374f:	72 16                	jb     0x3767
    3751:	66 26 8b 44 08       	mov    %es:0x8(%si),%eax
    3756:	eb 0a                	jmp    0x3762
    3758:	66 3b 87 6b 0a       	cmp    0xa6b(%bx),%eax
    375d:	72 08                	jb     0x3767
    375f:	66 2b c0             	sub    %eax,%eax
    3762:	66 89 87 73 0a       	mov    %eax,0xa73(%bx)
    3767:	66 26 8b 44 08       	mov    %es:0x8(%si),%eax
    376c:	66 89 87 77 0a       	mov    %eax,0xa77(%bx)
    3771:	66 26 8b 44 0c       	mov    %es:0xc(%si),%eax
    3776:	66 89 87 7b 0a       	mov    %eax,0xa7b(%bx)
    377b:	26 8b 44 11          	mov    %es:0x11(%si),%ax
    377f:	89 87 8a 0a          	mov    %ax,0xa8a(%bx)
    3783:	83 8f 65 0a 08       	orw    $0x8,0xa65(%bx)
    3788:	5e                   	pop    %si
    3789:	c3                   	ret
    378a:	c8 00 00 00          	enter  $0x0,$0x0
    378e:	1e                   	push   %ds
    378f:	b8 d3 03             	mov    $0x3d3,%ax
    3792:	8e d8                	mov    %ax,%ds
    3794:	b8 ff ff             	mov    $0xffff,%ax
    3797:	f6 06 8e 08 02       	testb  $0x2,0x88e
    379c:	74 2e                	je     0x37cc
    379e:	66 8b 5e 0e          	mov    0xe(%bp),%ebx
    37a2:	3b 1e 27 0a          	cmp    0xa27,%bx
    37a6:	73 24                	jae    0x37cc
    37a8:	d1 e3                	shl    $1,%bx
    37aa:	2e 8b 9f a5 16       	mov    %cs:0x16a5(%bx),%bx
    37af:	66 8b 46 0e          	mov    0xe(%bp),%eax
    37b3:	24 1f                	and    $0x1f,%al
    37b5:	0c 20                	or     $0x20,%al
    37b7:	a2 65 1d             	mov    %al,0x1d65
    37ba:	66 8b 46 0a          	mov    0xa(%bp),%eax
    37be:	66 a3 60 1d          	mov    %eax,0x1d60
    37c2:	8a 46 06             	mov    0x6(%bp),%al
    37c5:	a2 64 1d             	mov    %al,0x1d64
    37c8:	0e                   	push   %cs
    37c9:	e8 0b fd             	call   0x34d7
    37cc:	1f                   	pop    %ds
    37cd:	c9                   	leave
    37ce:	ca 0c 00             	lret   $0xc
    37d1:	66 57                	push   %edi
    37d3:	66 56                	push   %esi
    37d5:	d1 e3                	shl    $1,%bx
    37d7:	2e 8b 9f a5 16       	mov    %cs:0x16a5(%bx),%bx
    37dc:	66 8b f8             	mov    %eax,%edi
    37df:	66 8b f1             	mov    %ecx,%esi
    37e2:	f7 87 65 0a 08 00    	testw  $0x8,0xa65(%bx)
    37e8:	74 6c                	je     0x3856
    37ea:	66 8b c6             	mov    %esi,%eax
    37ed:	fe c0                	inc    %al
    37ef:	d0 e8                	shr    $1,%al
    37f1:	3c 20                	cmp    $0x20,%al
    37f3:	76 02                	jbe    0x37f7
    37f5:	b0 20                	mov    $0x20,%al
    37f7:	88 87 7f 0a          	mov    %al,0xa7f(%bx)
    37fb:	66 8b c7             	mov    %edi,%eax
    37fe:	66 2b d2             	sub    %edx,%edx
    3801:	66 0f a4 c2 17       	shld   $0x17,%eax,%edx
    3806:	66 c1 e0 17          	shl    $0x17,%eax
    380a:	66 0f b7 0e 19 0a    	movzwl 0xa19,%ecx
    3810:	66 f7 f1             	div    %ecx
    3813:	66 89 87 6f 0a       	mov    %eax,0xa6f(%bx)
    3818:	66 8b c7             	mov    %edi,%eax
    381b:	66 89 87 80 0a       	mov    %eax,0xa80(%bx)
    3820:	66 2b d2             	sub    %edx,%edx
    3823:	66 f7 f1             	div    %ecx
    3826:	89 87 84 0a          	mov    %ax,0xa84(%bx)
    382a:	66 2b c0             	sub    %eax,%eax
    382d:	66 0f ac d0 10       	shrd   $0x10,%edx,%eax
    3832:	66 c1 ea 10          	shr    $0x10,%edx
    3836:	66 f7 f1             	div    %ecx
    3839:	89 87 86 0a          	mov    %ax,0xa86(%bx)
    383d:	66 c7 87 73 0a 00 00 	movl   $0x0,0xa73(%bx)
    3844:	00 00 
    3846:	c7 87 88 0a 00 00    	movw   $0x0,0xa88(%bx)
    384c:	83 8f 65 0a 01       	orw    $0x1,0xa65(%bx)
    3851:	83 a7 65 0a fd       	andw   $0xfffd,0xa65(%bx)
    3856:	66 5e                	pop    %esi
    3858:	66 5f                	pop    %edi
    385a:	c3                   	ret
    385b:	c8 00 00 00          	enter  $0x0,$0x0
    385f:	1e                   	push   %ds
    3860:	b8 d3 03             	mov    $0x3d3,%ax
    3863:	8e d8                	mov    %ax,%ds
    3865:	b8 ff ff             	mov    $0xffff,%ax
    3868:	f6 06 8e 08 02       	testb  $0x2,0x88e
    386d:	74 28                	je     0x3897
    386f:	66 8b 5e 0a          	mov    0xa(%bp),%ebx
    3873:	3b 1e 27 0a          	cmp    0xa27,%bx
    3877:	73 1e                	jae    0x3897
    3879:	d1 e3                	shl    $1,%bx
    387b:	2e 8b 9f a5 16       	mov    %cs:0x16a5(%bx),%bx
    3880:	66 8b 46 0a          	mov    0xa(%bp),%eax
    3884:	24 1f                	and    $0x1f,%al
    3886:	0c 40                	or     $0x40,%al
    3888:	a2 65 1d             	mov    %al,0x1d65
    388b:	66 8b 46 06          	mov    0x6(%bp),%eax
    388f:	66 a3 60 1d          	mov    %eax,0x1d60
    3893:	0e                   	push   %cs
    3894:	e8 40 fc             	call   0x34d7
    3897:	1f                   	pop    %ds
    3898:	c9                   	leave
    3899:	ca 08 00             	lret   $0x8
    389c:	d1 e3                	shl    $1,%bx
    389e:	2e 8b 9f a5 16       	mov    %cs:0x16a5(%bx),%bx
    38a3:	fe c0                	inc    %al
    38a5:	d0 e8                	shr    $1,%al
    38a7:	3c 20                	cmp    $0x20,%al
    38a9:	7e 02                	jle    0x38ad
    38ab:	b0 20                	mov    $0x20,%al
    38ad:	88 87 7f 0a          	mov    %al,0xa7f(%bx)
    38b1:	c3                   	ret
    38b2:	c8 00 00 00          	enter  $0x0,$0x0
    38b6:	1e                   	push   %ds
    38b7:	b8 d3 03             	mov    $0x3d3,%ax
    38ba:	8e d8                	mov    %ax,%ds
    38bc:	b8 ff ff             	mov    $0xffff,%ax
    38bf:	f6 06 8e 08 02       	testb  $0x2,0x88e
    38c4:	74 28                	je     0x38ee
    38c6:	66 8b 5e 0a          	mov    0xa(%bp),%ebx
    38ca:	3b 1e 27 0a          	cmp    0xa27,%bx
    38ce:	73 1e                	jae    0x38ee
    38d0:	d1 e3                	shl    $1,%bx
    38d2:	2e 8b 9f a5 16       	mov    %cs:0x16a5(%bx),%bx
    38d7:	66 8b 46 0a          	mov    0xa(%bp),%eax
    38db:	24 1f                	and    $0x1f,%al
    38dd:	0c 60                	or     $0x60,%al
    38df:	a2 65 1d             	mov    %al,0x1d65
    38e2:	66 8b 46 06          	mov    0x6(%bp),%eax
    38e6:	66 a3 60 1d          	mov    %eax,0x1d60
    38ea:	0e                   	push   %cs
    38eb:	e8 e9 fb             	call   0x34d7
    38ee:	1f                   	pop    %ds
    38ef:	c9                   	leave
    38f0:	ca 08 00             	lret   $0x8
    38f3:	d1 e3                	shl    $1,%bx
    38f5:	2e 8b 9f a5 16       	mov    %cs:0x16a5(%bx),%bx
    38fa:	66 56                	push   %esi
    38fc:	66 8b f0             	mov    %eax,%esi
    38ff:	66 89 87 80 0a       	mov    %eax,0xa80(%bx)
    3904:	66 2b d2             	sub    %edx,%edx
    3907:	66 0f a4 c2 17       	shld   $0x17,%eax,%edx
    390c:	66 c1 e0 17          	shl    $0x17,%eax
    3910:	66 0f b7 0e 19 0a    	movzwl 0xa19,%ecx
    3916:	66 f7 f1             	div    %ecx
    3919:	66 89 87 6f 0a       	mov    %eax,0xa6f(%bx)
    391e:	66 8b c6             	mov    %esi,%eax
    3921:	66 2b d2             	sub    %edx,%edx
    3924:	66 f7 f1             	div    %ecx
    3927:	89 87 84 0a          	mov    %ax,0xa84(%bx)
    392b:	66 2b c0             	sub    %eax,%eax
    392e:	66 0f ac d0 10       	shrd   $0x10,%edx,%eax
    3933:	66 c1 ea 10          	shr    $0x10,%edx
    3937:	66 f7 f1             	div    %ecx
    393a:	89 87 86 0a          	mov    %ax,0xa86(%bx)
    393e:	66 5e                	pop    %esi
    3940:	c3                   	ret
    3941:	c8 00 00 00          	enter  $0x0,$0x0
    3945:	1e                   	push   %ds
    3946:	b8 d3 03             	mov    $0x3d3,%ax
    3949:	8e d8                	mov    %ax,%ds
    394b:	b8 ff ff             	mov    $0xffff,%ax
    394e:	f6 06 8e 08 02       	testb  $0x2,0x88e
    3953:	74 28                	je     0x397d
    3955:	66 8b 5e 0a          	mov    0xa(%bp),%ebx
    3959:	3b 1e 27 0a          	cmp    0xa27,%bx
    395d:	73 1e                	jae    0x397d
    395f:	d1 e3                	shl    $1,%bx
    3961:	2e 8b 9f a5 16       	mov    %cs:0x16a5(%bx),%bx
    3966:	66 8b 46 0a          	mov    0xa(%bp),%eax
    396a:	24 1f                	and    $0x1f,%al
    396c:	0c 80                	or     $0x80,%al
    396e:	a2 65 1d             	mov    %al,0x1d65
    3971:	66 8b 46 06          	mov    0x6(%bp),%eax
    3975:	66 a3 60 1d          	mov    %eax,0x1d60
    3979:	0e                   	push   %cs
    397a:	e8 5a fb             	call   0x34d7
    397d:	1f                   	pop    %ds
    397e:	c9                   	leave
    397f:	ca 08 00             	lret   $0x8
    3982:	d1 e3                	shl    $1,%bx
    3984:	2e 8b 9f a5 16       	mov    %cs:0x16a5(%bx),%bx
    3989:	f7 87 65 0a 01 00    	testw  $0x1,0xa65(%bx)
    398f:	74 1e                	je     0x39af
    3991:	66 3b 87 6b 0a       	cmp    0xa6b(%bx),%eax
    3996:	72 0c                	jb     0x39a4
    3998:	66 8b 87 6b 0a       	mov    0xa6b(%bx),%eax
    399d:	66 89 87 73 0a       	mov    %eax,0xa73(%bx)
    39a2:	eb 0b                	jmp    0x39af
    39a4:	66 89 87 73 0a       	mov    %eax,0xa73(%bx)
    39a9:	c7 87 88 0a 00 00    	movw   $0x0,0xa88(%bx)
    39af:	c3                   	ret
    39b0:	c8 00 00 00          	enter  $0x0,$0x0
    39b4:	1e                   	push   %ds
    39b5:	b8 d3 03             	mov    $0x3d3,%ax
    39b8:	8e d8                	mov    %ax,%ds
    39ba:	b8 ff ff             	mov    $0xffff,%ax
    39bd:	f6 06 8e 08 02       	testb  $0x2,0x88e
    39c2:	74 28                	je     0x39ec
    39c4:	66 8b 5e 0a          	mov    0xa(%bp),%ebx
    39c8:	3b 1e 27 0a          	cmp    0xa27,%bx
    39cc:	73 1e                	jae    0x39ec
    39ce:	d1 e3                	shl    $1,%bx
    39d0:	2e 8b 9f a5 16       	mov    %cs:0x16a5(%bx),%bx
    39d5:	66 8b 46 0a          	mov    0xa(%bp),%eax
    39d9:	24 1f                	and    $0x1f,%al
    39db:	0c a0                	or     $0xa0,%al
    39dd:	a2 65 1d             	mov    %al,0x1d65
    39e0:	66 8b 46 06          	mov    0x6(%bp),%eax
    39e4:	66 a3 60 1d          	mov    %eax,0x1d60
    39e8:	0e                   	push   %cs
    39e9:	e8 eb fa             	call   0x34d7
    39ec:	1f                   	pop    %ds
    39ed:	c9                   	leave
    39ee:	ca 08 00             	lret   $0x8
    39f1:	d1 e3                	shl    $1,%bx
    39f3:	2e 8b 9f a5 16       	mov    %cs:0x16a5(%bx),%bx
    39f8:	80 3e 7a 08 00       	cmpb   $0x0,0x87a
    39fd:	74 04                	je     0x3a03
    39ff:	88 87 8c 0a          	mov    %al,0xa8c(%bx)
    3a03:	c3                   	ret
    3a04:	1e                   	push   %ds
    3a05:	b8 d3 03             	mov    $0x3d3,%ax
    3a08:	8e d8                	mov    %ax,%ds
    3a0a:	a1 19 0a             	mov    0xa19,%ax
    3a0d:	1f                   	pop    %ds
    3a0e:	cb                   	lret
    3a0f:	c8 00 00 00          	enter  $0x0,$0x0
    3a13:	1e                   	push   %ds
    3a14:	b8 d3 03             	mov    $0x3d3,%ax
    3a17:	8e d8                	mov    %ax,%ds
    3a19:	b8 ff ff             	mov    $0xffff,%ax
    3a1c:	f6 06 8e 08 02       	testb  $0x2,0x88e
    3a21:	74 0e                	je     0x3a31
    3a23:	66 83 7e 06 40       	cmpl   $0x40,0x6(%bp)
    3a28:	77 07                	ja     0x3a31
    3a2a:	66 8b 46 06          	mov    0x6(%bp),%eax
    3a2e:	a2 18 0a             	mov    %al,0xa18
    3a31:	1f                   	pop    %ds
    3a32:	c9                   	leave
    3a33:	ca 04 00             	lret   $0x4
    3a36:	c8 00 00 00          	enter  $0x0,$0x0
    3a3a:	1e                   	push   %ds
    3a3b:	b8 d3 03             	mov    $0x3d3,%ax
    3a3e:	8e d8                	mov    %ax,%ds
    3a40:	b8 ff ff             	mov    $0xffff,%ax
    3a43:	f6 06 8e 08 02       	testb  $0x2,0x88e
    3a48:	74 1a                	je     0x3a64
    3a4a:	66 8b 5e 06          	mov    0x6(%bp),%ebx
    3a4e:	3b 1e 27 0a          	cmp    0xa27,%bx
    3a52:	73 10                	jae    0x3a64
    3a54:	d1 e3                	shl    $1,%bx
    3a56:	2e 8b 9f a5 16       	mov    %cs:0x16a5(%bx),%bx
    3a5b:	66 0f b6 87 7f 0a    	movzbl 0xa7f(%bx),%eax
    3a61:	66 d1 e0             	shl    $1,%eax
    3a64:	1f                   	pop    %ds
    3a65:	c9                   	leave
    3a66:	ca 04 00             	lret   $0x4
    3a69:	c8 00 00 00          	enter  $0x0,$0x0
    3a6d:	1e                   	push   %ds
    3a6e:	b8 d3 03             	mov    $0x3d3,%ax
    3a71:	8e d8                	mov    %ax,%ds
    3a73:	b8 ff ff             	mov    $0xffff,%ax
    3a76:	f6 06 8e 08 02       	testb  $0x2,0x88e
    3a7b:	74 1a                	je     0x3a97
    3a7d:	66 8b 5e 06          	mov    0x6(%bp),%ebx
    3a81:	3b 1e 27 0a          	cmp    0xa27,%bx
    3a85:	73 10                	jae    0x3a97
    3a87:	d1 e3                	shl    $1,%bx
    3a89:	2e 8b 9f a5 16       	mov    %cs:0x16a5(%bx),%bx
    3a8e:	66 8b 87 73 0a       	mov    0xa73(%bx),%eax
    3a93:	8b 97 75 0a          	mov    0xa75(%bx),%dx
    3a97:	1f                   	pop    %ds
    3a98:	c9                   	leave
    3a99:	ca 04 00             	lret   $0x4
    3a9c:	c8 00 00 00          	enter  $0x0,$0x0
    3aa0:	1e                   	push   %ds
    3aa1:	b8 d3 03             	mov    $0x3d3,%ax
    3aa4:	8e d8                	mov    %ax,%ds
    3aa6:	b8 ff ff             	mov    $0xffff,%ax
    3aa9:	f6 06 8e 08 02       	testb  $0x2,0x88e
    3aae:	74 30                	je     0x3ae0
    3ab0:	66 8b 5e 06          	mov    0x6(%bp),%ebx
    3ab4:	3b 1e 27 0a          	cmp    0xa27,%bx
    3ab8:	73 26                	jae    0x3ae0
    3aba:	d1 e3                	shl    $1,%bx
    3abc:	2e 8b 9f a5 16       	mov    %cs:0x16a5(%bx),%bx
    3ac1:	66 8b 87 67 0a       	mov    0xa67(%bx),%eax
    3ac6:	8b 97 69 0a          	mov    0xa69(%bx),%dx
    3aca:	83 bf 8a 0a 00       	cmpw   $0x0,0xa8a(%bx)
    3acf:	74 0f                	je     0x3ae0
    3ad1:	66 0f b7 87 8a 0a    	movzwl 0xa8a(%bx),%eax
    3ad7:	66 50                	push   %eax
    3ad9:	66 6a 00             	pushl  $0x0
    3adc:	ff 1e e8 1f          	lcall  *0x1fe8
    3ae0:	1f                   	pop    %ds
    3ae1:	c9                   	leave
    3ae2:	ca 04 00             	lret   $0x4
    3ae5:	c8 00 00 00          	enter  $0x0,$0x0
    3ae9:	1e                   	push   %ds
    3aea:	b8 d3 03             	mov    $0x3d3,%ax
    3aed:	8e d8                	mov    %ax,%ds
    3aef:	b8 ff ff             	mov    $0xffff,%ax
    3af2:	f6 06 8e 08 02       	testb  $0x2,0x88e
    3af7:	74 1a                	je     0x3b13
    3af9:	66 8b 5e 06          	mov    0x6(%bp),%ebx
    3afd:	3b 1e 27 0a          	cmp    0xa27,%bx
    3b01:	73 10                	jae    0x3b13
    3b03:	d1 e3                	shl    $1,%bx
    3b05:	2e 8b 9f a5 16       	mov    %cs:0x16a5(%bx),%bx
    3b0a:	66 8b 87 80 0a       	mov    0xa80(%bx),%eax
    3b0f:	8b 97 82 0a          	mov    0xa82(%bx),%dx
    3b13:	1f                   	pop    %ds
    3b14:	c9                   	leave
    3b15:	ca 04 00             	lret   $0x4
    3b18:	1e                   	push   %ds
    3b19:	b8 d3 03             	mov    $0x3d3,%ax
    3b1c:	8e d8                	mov    %ax,%ds
    3b1e:	b8 ff ff             	mov    $0xffff,%ax
    3b21:	f6 06 8e 08 02       	testb  $0x2,0x88e
    3b26:	74 20                	je     0x3b48
    3b28:	ff 1e e0 1f          	lcall  *0x1fe0
    3b2c:	a3 65 0f             	mov    %ax,0xf65
    3b2f:	a1 04 0a             	mov    0xa04,%ax
    3b32:	8b 16 06 0a          	mov    0xa06,%dx
    3b36:	a3 69 0f             	mov    %ax,0xf69
    3b39:	89 16 67 0f          	mov    %dx,0xf67
    3b3d:	a1 f7 08             	mov    0x8f7,%ax
    3b40:	a3 6b 0f             	mov    %ax,0xf6b
    3b43:	b8 65 0f             	mov    $0xf65,%ax
    3b46:	8c da                	mov    %ds,%dx
    3b48:	1f                   	pop    %ds
    3b49:	cb                   	lret
    3b4a:	c8 00 00 00          	enter  $0x0,$0x0
    3b4e:	1e                   	push   %ds
    3b4f:	b8 d3 03             	mov    $0x3d3,%ax
    3b52:	8e d8                	mov    %ax,%ds
    3b54:	b8 ff ff             	mov    $0xffff,%ax
    3b57:	f6 06 8e 08 02       	testb  $0x2,0x88e
    3b5c:	74 24                	je     0x3b82
    3b5e:	66 8b 5e 06          	mov    0x6(%bp),%ebx
    3b62:	3b 1e 27 0a          	cmp    0xa27,%bx
    3b66:	73 1a                	jae    0x3b82
    3b68:	d1 e3                	shl    $1,%bx
    3b6a:	2e 8b 9f a5 16       	mov    %cs:0x16a5(%bx),%bx
    3b6f:	66 b8 00 00 00 00    	mov    $0x0,%eax
    3b75:	80 3e 7a 08 00       	cmpb   $0x0,0x87a
    3b7a:	74 06                	je     0x3b82
    3b7c:	66 0f be 87 8c 0a    	movsbl 0xa8c(%bx),%eax
    3b82:	1f                   	pop    %ds
    3b83:	c9                   	leave
    3b84:	ca 04 00             	lret   $0x4
    3b87:	c8 00 00 00          	enter  $0x0,$0x0
    3b8b:	2b c0                	sub    %ax,%ax
    3b8d:	c9                   	leave
    3b8e:	ca 0c 00             	lret   $0xc
    3b91:	cb                   	lret
    3b92:	c8 00 00 00          	enter  $0x0,$0x0
    3b96:	c9                   	leave
    3b97:	ca 04 00             	lret   $0x4
    3b9a:	c8 00 00 00          	enter  $0x0,$0x0
    3b9e:	1e                   	push   %ds
    3b9f:	b8 d3 03             	mov    $0x3d3,%ax
    3ba2:	8e d8                	mov    %ax,%ds
    3ba4:	66 bb 00 00 00 00    	mov    $0x0,%ebx
    3baa:	66 8b 46 0a          	mov    0xa(%bp),%eax
    3bae:	66 85 c0             	test   %eax,%eax
    3bb1:	74 04                	je     0x3bb7
    3bb3:	66 8b 5e 06          	mov    0x6(%bp),%ebx
    3bb7:	66 89 1e 61 0a       	mov    %ebx,0xa61
    3bbc:	1f                   	pop    %ds
    3bbd:	c9                   	leave
    3bbe:	ca 08 00             	lret   $0x8
    3bc1:	c8 00 00 00          	enter  $0x0,$0x0
    3bc5:	1e                   	push   %ds
    3bc6:	b8 d3 03             	mov    $0x3d3,%ax
    3bc9:	8e d8                	mov    %ax,%ds
    3bcb:	66 83 7e 06 01       	cmpl   $0x1,0x6(%bp)
    3bd0:	75 18                	jne    0x3bea
    3bd2:	2b c0                	sub    %ax,%ax
    3bd4:	f6 06 8e 08 02       	testb  $0x2,0x88e
    3bd9:	74 18                	je     0x3bf3
    3bdb:	0d 01 00             	or     $0x1,%ax
    3bde:	80 3e 7a 08 01       	cmpb   $0x1,0x87a
    3be3:	75 0e                	jne    0x3bf3
    3be5:	0d 02 00             	or     $0x2,%ax
    3be8:	eb 09                	jmp    0x3bf3
    3bea:	66 2b c0             	sub    %eax,%eax
    3bed:	66 2b d2             	sub    %edx,%edx
    3bf0:	a1 19 0a             	mov    0xa19,%ax
    3bf3:	1f                   	pop    %ds
    3bf4:	c9                   	leave
    3bf5:	ca 04 00             	lret   $0x4
	...
    3c00:	44                   	inc    %sp
    3c01:	4d                   	dec    %bp
    3c02:	41                   	inc    %cx
    3c03:	49                   	dec    %cx
    3c04:	6e                   	outsb  %ds:(%si),(%dx)
    3c05:	69 74 07 56 57       	imul   $0x5756,0x7(%si),%si
    3c0a:	1e                   	push   %ds
    3c0b:	55                   	push   %bp
    3c0c:	89 e5                	mov    %sp,%bp
    3c0e:	83 ec 08             	sub    $0x8,%sp
    3c11:	c5 5e 0c             	lds    0xc(%bp),%bx
    3c14:	8b 7e 12             	mov    0x12(%bp),%di
    3c17:	8b 47 08             	mov    0x8(%bx),%ax
    3c1a:	8b 77 06             	mov    0x6(%bx),%si
    3c1d:	89 46 fe             	mov    %ax,-0x2(%bp)
    3c20:	85 ff                	test   %di,%di
    3c22:	7e 03                	jle    0x3c27
    3c24:	e9 24 01             	jmp    0x3d4b
    3c27:	75 06                	jne    0x3c2f
    3c29:	83 7e 10 07          	cmpw   $0x7,0x10(%bp)
    3c2d:	77 f5                	ja     0x3c24
    3c2f:	85 ff                	test   %di,%di
    3c31:	7c f1                	jl     0x3c24
    3c33:	8b 47 02             	mov    0x2(%bx),%ax
    3c36:	89 46 fc             	mov    %ax,-0x4(%bp)
    3c39:	85 f6                	test   %si,%si
    3c3b:	74 6b                	je     0x3ca8
    3c3d:	89 f0                	mov    %si,%ax
    3c3f:	f7 d0                	not    %ax
    3c41:	3b 47 0a             	cmp    0xa(%bx),%ax
    3c44:	73 69                	jae    0x3caf
    3c46:	8b 57 0a             	mov    0xa(%bx),%dx
    3c49:	d1 ea                	shr    $1,%dx
    3c4b:	39 c2                	cmp    %ax,%dx
    3c4d:	76 5b                	jbe    0x3caa
    3c4f:	89 f0                	mov    %si,%ax
    3c51:	05 ff ff             	add    $0xffff,%ax
    3c54:	8b 46 fe             	mov    -0x2(%bp),%ax
    3c57:	15 00 00             	adc    $0x0,%ax
    3c5a:	89 46 f8             	mov    %ax,-0x8(%bp)
    3c5d:	89 f0                	mov    %si,%ax
    3c5f:	8b 56 f8             	mov    -0x8(%bp),%dx
    3c62:	f7 d8                	neg    %ax
    3c64:	89 56 fe             	mov    %dx,-0x2(%bp)
    3c67:	31 f6                	xor    %si,%si
    3c69:	01 46 fc             	add    %ax,-0x4(%bp)
    3c6c:	29 47 0a             	sub    %ax,0xa(%bx)
    3c6f:	8b 46 fc             	mov    -0x4(%bp),%ax
    3c72:	31 d2                	xor    %dx,%dx
    3c74:	2b 47 02             	sub    0x2(%bx),%ax
    3c77:	1b 57 04             	sbb    0x4(%bx),%dx
    3c7a:	b1 04                	mov    $0x4,%cl
    3c7c:	d3 e8                	shr    %cl,%ax
    3c7e:	d3 ca                	ror    %cl,%dx
    3c80:	31 d0                	xor    %dx,%ax
    3c82:	81 e2 ff 0f          	and    $0xfff,%dx
    3c86:	31 d0                	xor    %dx,%ax
    3c88:	8b 17                	mov    (%bx),%dx
    3c8a:	89 77 06             	mov    %si,0x6(%bx)
    3c8d:	01 d0                	add    %dx,%ax
    3c8f:	89 07                	mov    %ax,(%bx)
    3c91:	8b 46 fc             	mov    -0x4(%bp),%ax
    3c94:	2b 47 02             	sub    0x2(%bx),%ax
    3c97:	25 0f 00             	and    $0xf,%ax
    3c9a:	01 47 02             	add    %ax,0x2(%bx)
    3c9d:	8b 46 f8             	mov    -0x8(%bp),%ax
    3ca0:	11 77 04             	adc    %si,0x4(%bx)
    3ca3:	89 47 08             	mov    %ax,0x8(%bx)
    3ca6:	eb 07                	jmp    0x3caf
    3ca8:	eb 13                	jmp    0x3cbd
    3caa:	d1 e8                	shr    $1,%ax
    3cac:	89 47 0a             	mov    %ax,0xa(%bx)
    3caf:	8b 47 0a             	mov    0xa(%bx),%ax
    3cb2:	3b 47 0c             	cmp    0xc(%bx),%ax
    3cb5:	76 06                	jbe    0x3cbd
    3cb7:	8b 47 0c             	mov    0xc(%bx),%ax
    3cba:	89 47 0a             	mov    %ax,0xa(%bx)
    3cbd:	8b 46 fe             	mov    -0x2(%bp),%ax
    3cc0:	89 f1                	mov    %si,%cx
    3cc2:	80 67 0a f0          	andb   $0xf0,0xa(%bx)
    3cc6:	89 46 fa             	mov    %ax,-0x6(%bp)
    3cc9:	85 ff                	test   %di,%di
    3ccb:	7f 08                	jg     0x3cd5
    3ccd:	75 0f                	jne    0x3cde
    3ccf:	83 7e 10 03          	cmpw   $0x3,0x10(%bp)
    3cd3:	76 09                	jbe    0x3cde
    3cd5:	89 c1                	mov    %ax,%cx
    3cd7:	d1 ee                	shr    $1,%si
    3cd9:	c1 e1 0f             	shl    $0xf,%cx
    3cdc:	09 f1                	or     %si,%cx
    3cde:	6b 76 10 16          	imul   $0x16,0x10(%bp),%si
    3ce2:	fa                   	cli
    3ce3:	ba d3 03             	mov    $0x3d3,%dx
    3ce6:	8b 46 10             	mov    0x10(%bp),%ax
    3ce9:	8e c2                	mov    %dx,%es
    3ceb:	0c 04                	or     $0x4,%al
    3ced:	26 8b 94 fe 1f       	mov    %es:0x1ffe(%si),%dx
    3cf2:	ee                   	out    %al,(%dx)
    3cf3:	8a 46 fa             	mov    -0x6(%bp),%al
    3cf6:	26 8b 94 f8 1f       	mov    %es:0x1ff8(%si),%dx
    3cfb:	ee                   	out    %al,(%dx)
    3cfc:	b0 ff                	mov    $0xff,%al
    3cfe:	26 8b 94 02 20       	mov    %es:0x2002(%si),%dx
    3d03:	ee                   	out    %al,(%dx)
    3d04:	89 c8                	mov    %cx,%ax
    3d06:	26 8b 94 f4 1f       	mov    %es:0x1ff4(%si),%dx
    3d0b:	ee                   	out    %al,(%dx)
    3d0c:	88 e8                	mov    %ch,%al
    3d0e:	26 8b 94 f4 1f       	mov    %es:0x1ff4(%si),%dx
    3d13:	ee                   	out    %al,(%dx)
    3d14:	fb                   	sti
    3d15:	85 ff                	test   %di,%di
    3d17:	7f 08                	jg     0x3d21
    3d19:	75 0d                	jne    0x3d28
    3d1b:	83 7e 10 03          	cmpw   $0x3,0x10(%bp)
    3d1f:	76 07                	jbe    0x3d28
    3d21:	8b 47 0a             	mov    0xa(%bx),%ax
    3d24:	d1 e8                	shr    $1,%ax
    3d26:	eb 03                	jmp    0x3d2b
    3d28:	8b 47 0a             	mov    0xa(%bx),%ax
    3d2b:	8b 5e 10             	mov    0x10(%bp),%bx
    3d2e:	c1 e3 02             	shl    $0x2,%bx
    3d31:	ba d3 03             	mov    $0x3d3,%dx
    3d34:	2b 5e 10             	sub    0x10(%bp),%bx
    3d37:	8e da                	mov    %dx,%ds
    3d39:	01 db                	add    %bx,%bx
    3d3b:	48                   	dec    %ax
    3d3c:	89 87 10 32          	mov    %ax,0x3210(%bx)
    3d40:	89 8f 12 32          	mov    %cx,0x3212(%bx)
    3d44:	8b 46 fa             	mov    -0x6(%bp),%ax
    3d47:	89 87 14 32          	mov    %ax,0x3214(%bx)
    3d4b:	31 c0                	xor    %ax,%ax
    3d4d:	c9                   	leave
    3d4e:	1f                   	pop    %ds
    3d4f:	5f                   	pop    %di
    3d50:	5e                   	pop    %si
    3d51:	ca 08 00             	lret   $0x8
    3d54:	fc                   	cld
    3d55:	44                   	inc    %sp
    3d56:	4d                   	dec    %bp
    3d57:	41                   	inc    %cx
    3d58:	53                   	push   %bx
    3d59:	74 61                	je     0x3dbc
    3d5b:	72 74                	jb     0x3dd1
    3d5d:	08 56 1e             	or     %dl,0x1e(%bp)
    3d60:	55                   	push   %bp
    3d61:	89 e5                	mov    %sp,%bp
    3d63:	83 ec 02             	sub    $0x2,%sp
    3d66:	8b 4e 0e             	mov    0xe(%bp),%cx
    3d69:	8b 46 10             	mov    0x10(%bp),%ax
    3d6c:	85 c0                	test   %ax,%ax
    3d6e:	7f 5a                	jg     0x3dca
    3d70:	75 05                	jne    0x3d77
    3d72:	83 f9 07             	cmp    $0x7,%cx
    3d75:	77 53                	ja     0x3dca
    3d77:	85 c0                	test   %ax,%ax
    3d79:	7c 4f                	jl     0x3dca
    3d7b:	fa                   	cli
    3d7c:	89 c8                	mov    %cx,%ax
    3d7e:	30 ec                	xor    %ch,%ah
    3d80:	6b f1 16             	imul   $0x16,%cx,%si
    3d83:	24 03                	and    $0x3,%al
    3d85:	89 46 fe             	mov    %ax,-0x2(%bp)
    3d88:	89 c2                	mov    %ax,%dx
    3d8a:	8b 46 0a             	mov    0xa(%bp),%ax
    3d8d:	80 ca 48             	or     $0x48,%dl
    3d90:	c1 e0 04             	shl    $0x4,%ax
    3d93:	09 d0                	or     %dx,%ax
    3d95:	ba d3 03             	mov    $0x3d3,%dx
    3d98:	8e da                	mov    %dx,%ds
    3d9a:	89 cb                	mov    %cx,%bx
    3d9c:	8b 94 00 20          	mov    0x2000(%si),%dx
    3da0:	c1 e3 02             	shl    $0x2,%bx
    3da3:	ee                   	out    %al,(%dx)
    3da4:	b0 ff                	mov    $0xff,%al
    3da6:	8b 94 02 20          	mov    0x2002(%si),%dx
    3daa:	29 cb                	sub    %cx,%bx
    3dac:	ee                   	out    %al,(%dx)
    3dad:	01 db                	add    %bx,%bx
    3daf:	8b 94 f6 1f          	mov    0x1ff6(%si),%dx
    3db3:	8b 87 10 32          	mov    0x3210(%bx),%ax
    3db7:	ee                   	out    %al,(%dx)
    3db8:	8a 87 11 32          	mov    0x3211(%bx),%al
    3dbc:	8b 94 f6 1f          	mov    0x1ff6(%si),%dx
    3dc0:	ee                   	out    %al,(%dx)
    3dc1:	8a 46 fe             	mov    -0x2(%bp),%al
    3dc4:	8b 94 fe 1f          	mov    0x1ffe(%si),%dx
    3dc8:	ee                   	out    %al,(%dx)
    3dc9:	fb                   	sti
    3dca:	31 c0                	xor    %ax,%ax
    3dcc:	c9                   	leave
    3dcd:	1f                   	pop    %ds
    3dce:	5e                   	pop    %si
    3dcf:	ca 08 00             	lret   $0x8
    3dd2:	fc                   	cld
    3dd3:	44                   	inc    %sp
    3dd4:	4d                   	dec    %bp
    3dd5:	41                   	inc    %cx
    3dd6:	53                   	push   %bx
    3dd7:	74 61                	je     0x3e3a
    3dd9:	72 74                	jb     0x3e4f
    3ddb:	53                   	push   %bx
    3ddc:	69 6e 67 6c 65       	imul   $0x656c,0x67(%bp),%bp
    3de1:	0e                   	push   %cs
    3de2:	56                   	push   %si
    3de3:	57                   	push   %di
    3de4:	1e                   	push   %ds
    3de5:	55                   	push   %bp
    3de6:	89 e5                	mov    %sp,%bp
    3de8:	83 ec 02             	sub    $0x2,%sp
    3deb:	8b 4e 0c             	mov    0xc(%bp),%cx
    3dee:	8b 7e 0e             	mov    0xe(%bp),%di
    3df1:	8b 46 12             	mov    0x12(%bp),%ax
    3df4:	85 c0                	test   %ax,%ax
    3df6:	7e 03                	jle    0x3dfb
    3df8:	e9 9a 00             	jmp    0x3e95
    3dfb:	75 06                	jne    0x3e03
    3dfd:	83 7e 10 07          	cmpw   $0x7,0x10(%bp)
    3e01:	77 f5                	ja     0x3df8
    3e03:	85 c0                	test   %ax,%ax
    3e05:	7c f1                	jl     0x3df8
    3e07:	85 c0                	test   %ax,%ax
    3e09:	7f 08                	jg     0x3e13
    3e0b:	75 18                	jne    0x3e25
    3e0d:	83 7e 10 03          	cmpw   $0x3,0x10(%bp)
    3e11:	76 12                	jbe    0x3e25
    3e13:	bb 02 00             	mov    $0x2,%bx
    3e16:	89 c8                	mov    %cx,%ax
    3e18:	89 fa                	mov    %di,%dx
    3e1a:	31 c9                	xor    %cx,%cx
    3e1c:	0e                   	push   %cs
    3e1d:	e8 30 03             	call   0x4150
    3e20:	90                   	nop
    3e21:	89 c1                	mov    %ax,%cx
    3e23:	89 d7                	mov    %dx,%di
    3e25:	83 e9 01             	sub    $0x1,%cx
    3e28:	83 df 00             	sbb    $0x0,%di
    3e2b:	6b 5e 10 16          	imul   $0x16,0x10(%bp),%bx
    3e2f:	ba d3 03             	mov    $0x3d3,%dx
    3e32:	8b 76 10             	mov    0x10(%bp),%si
    3e35:	fa                   	cli
    3e36:	8b 46 10             	mov    0x10(%bp),%ax
    3e39:	8e da                	mov    %dx,%ds
    3e3b:	30 e4                	xor    %ah,%ah
    3e3d:	c1 e6 02             	shl    $0x2,%si
    3e40:	24 03                	and    $0x3,%al
    3e42:	2b 76 10             	sub    0x10(%bp),%si
    3e45:	89 46 fe             	mov    %ax,-0x2(%bp)
    3e48:	0c 48                	or     $0x48,%al
    3e4a:	8b 97 00 20          	mov    0x2000(%bx),%dx
    3e4e:	01 f6                	add    %si,%si
    3e50:	ee                   	out    %al,(%dx)
    3e51:	8b 84 14 32          	mov    0x3214(%si),%ax
    3e55:	8b 97 f8 1f          	mov    0x1ff8(%bx),%dx
    3e59:	ee                   	out    %al,(%dx)
    3e5a:	b0 ff                	mov    $0xff,%al
    3e5c:	8b 97 02 20          	mov    0x2002(%bx),%dx
    3e60:	ee                   	out    %al,(%dx)
    3e61:	89 c8                	mov    %cx,%ax
    3e63:	8b 97 f6 1f          	mov    0x1ff6(%bx),%dx
    3e67:	ee                   	out    %al,(%dx)
    3e68:	89 c8                	mov    %cx,%ax
    3e6a:	89 fa                	mov    %di,%dx
    3e6c:	b9 08 00             	mov    $0x8,%cx
    3e6f:	d1 fa                	sar    $1,%dx
    3e71:	d1 d8                	rcr    $1,%ax
    3e73:	e2 fa                	loop   0x3e6f
    3e75:	8b 97 f6 1f          	mov    0x1ff6(%bx),%dx
    3e79:	ee                   	out    %al,(%dx)
    3e7a:	8b 84 12 32          	mov    0x3212(%si),%ax
    3e7e:	8b 97 f4 1f          	mov    0x1ff4(%bx),%dx
    3e82:	ee                   	out    %al,(%dx)
    3e83:	8a 84 13 32          	mov    0x3213(%si),%al
    3e87:	8b 97 f4 1f          	mov    0x1ff4(%bx),%dx
    3e8b:	ee                   	out    %al,(%dx)
    3e8c:	8a 46 fe             	mov    -0x2(%bp),%al
    3e8f:	8b 97 fe 1f          	mov    0x1ffe(%bx),%dx
    3e93:	ee                   	out    %al,(%dx)
    3e94:	fb                   	sti
    3e95:	31 c0                	xor    %ax,%ax
    3e97:	c9                   	leave
    3e98:	1f                   	pop    %ds
    3e99:	5f                   	pop    %di
    3e9a:	5e                   	pop    %si
    3e9b:	ca 08 00             	lret   $0x8
    3e9e:	44                   	inc    %sp
    3e9f:	4d                   	dec    %bp
    3ea0:	41                   	inc    %cx
    3ea1:	53                   	push   %bx
    3ea2:	74 6f                	je     0x3f13
    3ea4:	70 07                	jo     0x3ead
    3ea6:	1e                   	push   %ds
    3ea7:	55                   	push   %bp
    3ea8:	89 e5                	mov    %sp,%bp
    3eaa:	8b 5e 08             	mov    0x8(%bp),%bx
    3ead:	8b 46 0a             	mov    0xa(%bp),%ax
    3eb0:	85 c0                	test   %ax,%ax
    3eb2:	7f 23                	jg     0x3ed7
    3eb4:	75 05                	jne    0x3ebb
    3eb6:	83 fb 07             	cmp    $0x7,%bx
    3eb9:	77 1c                	ja     0x3ed7
    3ebb:	85 c0                	test   %ax,%ax
    3ebd:	7c 18                	jl     0x3ed7
    3ebf:	89 d8                	mov    %bx,%ax
    3ec1:	6b db 16             	imul   $0x16,%bx,%bx
    3ec4:	ba d3 03             	mov    $0x3d3,%dx
    3ec7:	8e da                	mov    %dx,%ds
    3ec9:	0c 04                	or     $0x4,%al
    3ecb:	8b 97 fe 1f          	mov    0x1ffe(%bx),%dx
    3ecf:	ee                   	out    %al,(%dx)
    3ed0:	8b 97 02 20          	mov    0x2002(%bx),%dx
    3ed4:	30 c0                	xor    %al,%al
    3ed6:	ee                   	out    %al,(%dx)
    3ed7:	31 c0                	xor    %ax,%ax
    3ed9:	5d                   	pop    %bp
    3eda:	1f                   	pop    %ds
    3edb:	ca 04 00             	lret   $0x4
    3ede:	44                   	inc    %sp
    3edf:	4d                   	dec    %bp
    3ee0:	41                   	inc    %cx
    3ee1:	50                   	push   %ax
    3ee2:	6f                   	outsw  %ds:(%si),(%dx)
    3ee3:	73 69                	jae    0x3f4e
    3ee5:	74 69                	je     0x3f50
    3ee7:	6f                   	outsw  %ds:(%si),(%dx)
    3ee8:	6e                   	outsb  %ds:(%si),(%dx)
    3ee9:	0b 56 57             	or     0x57(%bp),%dx
    3eec:	1e                   	push   %ds
    3eed:	55                   	push   %bp
    3eee:	89 e5                	mov    %sp,%bp
    3ef0:	83 ec 02             	sub    $0x2,%sp
    3ef3:	83 7e 0e 00          	cmpw   $0x0,0xe(%bp)
    3ef7:	7f 0e                	jg     0x3f07
    3ef9:	75 06                	jne    0x3f01
    3efb:	83 7e 0c 07          	cmpw   $0x7,0xc(%bp)
    3eff:	77 06                	ja     0x3f07
    3f01:	83 7e 0e 00          	cmpw   $0x0,0xe(%bp)
    3f05:	7d 07                	jge    0x3f0e
    3f07:	31 c9                	xor    %cx,%cx
    3f09:	31 db                	xor    %bx,%bx
    3f0b:	e9 9e 00             	jmp    0x3fac
    3f0e:	6b 5e 0c 16          	imul   $0x16,0xc(%bp),%bx
    3f12:	b8 d3 03             	mov    $0x3d3,%ax
    3f15:	8e d8                	mov    %ax,%ds
    3f17:	b0 ff                	mov    $0xff,%al
    3f19:	8b 97 02 20          	mov    0x2002(%bx),%dx
    3f1d:	ee                   	out    %al,(%dx)
    3f1e:	fa                   	cli
    3f1f:	8b 97 f6 1f          	mov    0x1ff6(%bx),%dx
    3f23:	29 c0                	sub    %ax,%ax
    3f25:	ec                   	in     (%dx),%al
    3f26:	8b 97 f6 1f          	mov    0x1ff6(%bx),%dx
    3f2a:	89 c1                	mov    %ax,%cx
    3f2c:	29 c0                	sub    %ax,%ax
    3f2e:	ec                   	in     (%dx),%al
    3f2f:	88 c4                	mov    %al,%ah
    3f31:	31 f6                	xor    %si,%si
    3f33:	30 c0                	xor    %al,%al
    3f35:	31 d2                	xor    %dx,%dx
    3f37:	01 c1                	add    %ax,%cx
    3f39:	11 d6                	adc    %dx,%si
    3f3b:	8b 97 f6 1f          	mov    0x1ff6(%bx),%dx
    3f3f:	89 4e fe             	mov    %cx,-0x2(%bp)
    3f42:	29 c0                	sub    %ax,%ax
    3f44:	ec                   	in     (%dx),%al
    3f45:	8b 97 f6 1f          	mov    0x1ff6(%bx),%dx
    3f49:	89 c7                	mov    %ax,%di
    3f4b:	29 c0                	sub    %ax,%ax
    3f4d:	ec                   	in     (%dx),%al
    3f4e:	88 c4                	mov    %al,%ah
    3f50:	31 c9                	xor    %cx,%cx
    3f52:	30 c0                	xor    %al,%al
    3f54:	31 d2                	xor    %dx,%dx
    3f56:	01 c7                	add    %ax,%di
    3f58:	11 d1                	adc    %dx,%cx
    3f5a:	fb                   	sti
    3f5b:	8b 56 fe             	mov    -0x2(%bp),%dx
    3f5e:	89 f0                	mov    %si,%ax
    3f60:	29 fa                	sub    %di,%dx
    3f62:	19 c8                	sbb    %cx,%ax
    3f64:	3d ff ff             	cmp    $0xffff,%ax
    3f67:	7c a9                	jl     0x3f12
    3f69:	75 05                	jne    0x3f70
    3f6b:	83 fa c0             	cmp    $0xffc0,%dx
    3f6e:	72 a2                	jb     0x3f12
    3f70:	85 c0                	test   %ax,%ax
    3f72:	7f 9e                	jg     0x3f12
    3f74:	75 05                	jne    0x3f7b
    3f76:	83 fa 40             	cmp    $0x40,%dx
    3f79:	77 97                	ja     0x3f12
    3f7b:	8b 5e 0c             	mov    0xc(%bp),%bx
    3f7e:	c1 e3 02             	shl    $0x2,%bx
    3f81:	2b 5e 0c             	sub    0xc(%bp),%bx
    3f84:	01 db                	add    %bx,%bx
    3f86:	8b 87 10 32          	mov    0x3210(%bx),%ax
    3f8a:	31 d2                	xor    %dx,%dx
    3f8c:	29 f8                	sub    %di,%ax
    3f8e:	19 ca                	sbb    %cx,%dx
    3f90:	05 01 00             	add    $0x1,%ax
    3f93:	83 d2 00             	adc    $0x0,%dx
    3f96:	83 7e 0e 00          	cmpw   $0x0,0xe(%bp)
    3f9a:	7f 08                	jg     0x3fa4
    3f9c:	75 0a                	jne    0x3fa8
    3f9e:	83 7e 0c 03          	cmpw   $0x3,0xc(%bp)
    3fa2:	76 04                	jbe    0x3fa8
    3fa4:	01 c0                	add    %ax,%ax
    3fa6:	11 d2                	adc    %dx,%dx
    3fa8:	89 c1                	mov    %ax,%cx
    3faa:	89 d3                	mov    %dx,%bx
    3fac:	89 c8                	mov    %cx,%ax
    3fae:	89 da                	mov    %bx,%dx
    3fb0:	c9                   	leave
    3fb1:	1f                   	pop    %ds
    3fb2:	5f                   	pop    %di
    3fb3:	5e                   	pop    %si
    3fb4:	ca 04 00             	lret   $0x4
    3fb7:	fc                   	cld
    3fb8:	44                   	inc    %sp
    3fb9:	4d                   	dec    %bp
    3fba:	41                   	inc    %cx
    3fbb:	53                   	push   %bx
    3fbc:	74 61                	je     0x401f
    3fbe:	74 75                	je     0x4035
    3fc0:	73 09                	jae    0x3fcb
    3fc2:	1e                   	push   %ds
    3fc3:	55                   	push   %bp
    3fc4:	89 e5                	mov    %sp,%bp
    3fc6:	8b 56 08             	mov    0x8(%bp),%dx
    3fc9:	8b 46 0a             	mov    0xa(%bp),%ax
    3fcc:	85 c0                	test   %ax,%ax
    3fce:	7f 2f                	jg     0x3fff
    3fd0:	75 05                	jne    0x3fd7
    3fd2:	83 fa 07             	cmp    $0x7,%dx
    3fd5:	77 28                	ja     0x3fff
    3fd7:	85 c0                	test   %ax,%ax
    3fd9:	7c 24                	jl     0x3fff
    3fdb:	89 d1                	mov    %dx,%cx
    3fdd:	6b da 16             	imul   $0x16,%dx,%bx
    3fe0:	b8 01 00             	mov    $0x1,%ax
    3fe3:	80 e1 03             	and    $0x3,%cl
    3fe6:	d3 e0                	shl    %cl,%ax
    3fe8:	89 c1                	mov    %ax,%cx
    3fea:	b8 d3 03             	mov    $0x3d3,%ax
    3fed:	8e d8                	mov    %ax,%ds
    3fef:	8b 97 fa 1f          	mov    0x1ffa(%bx),%dx
    3ff3:	29 c0                	sub    %ax,%ax
    3ff5:	ec                   	in     (%dx),%al
    3ff6:	85 c8                	test   %cx,%ax
    3ff8:	75 05                	jne    0x3fff
    3ffa:	b8 01 00             	mov    $0x1,%ax
    3ffd:	eb 02                	jmp    0x4001
    3fff:	31 c0                	xor    %ax,%ax
    4001:	5d                   	pop    %bp
    4002:	1f                   	pop    %ds
    4003:	ca 04 00             	lret   $0x4
    4006:	c8 00 00 00          	enter  $0x0,$0x0
    400a:	57                   	push   %di
    400b:	56                   	push   %si
    400c:	1e                   	push   %ds
    400d:	c4 7e 0a             	les    0xa(%bp),%di
    4010:	c5 76 06             	lds    0x6(%bp),%si
    4013:	fc                   	cld
    4014:	ac                   	lods   %ds:(%si),%al
    4015:	aa                   	stos   %al,%es:(%di)
    4016:	3c 00                	cmp    $0x0,%al
    4018:	75 fa                	jne    0x4014
    401a:	1f                   	pop    %ds
    401b:	5e                   	pop    %si
    401c:	5f                   	pop    %di
    401d:	c9                   	leave
    401e:	ca 08 00             	lret   $0x8
    4021:	c8 00 00 00          	enter  $0x0,$0x0
    4025:	57                   	push   %di
    4026:	56                   	push   %si
    4027:	1e                   	push   %ds
    4028:	c4 7e 0e             	les    0xe(%bp),%di
    402b:	c5 76 0a             	lds    0xa(%bp),%si
    402e:	fc                   	cld
    402f:	66 8b 4e 06          	mov    0x6(%bp),%ecx
    4033:	ac                   	lods   %ds:(%si),%al
    4034:	aa                   	stos   %al,%es:(%di)
    4035:	3c 00                	cmp    $0x0,%al
    4037:	e0 fa                	loopne 0x4033
    4039:	1f                   	pop    %ds
    403a:	5e                   	pop    %si
    403b:	5f                   	pop    %di
    403c:	c9                   	leave
    403d:	ca 0c 00             	lret   $0xc
    4040:	c8 00 00 00          	enter  $0x0,$0x0
    4044:	57                   	push   %di
    4045:	56                   	push   %si
    4046:	1e                   	push   %ds
    4047:	c4 7e 0a             	les    0xa(%bp),%di
    404a:	c5 76 06             	lds    0x6(%bp),%si
    404d:	8a 1c                	mov    (%si),%bl
    404f:	46                   	inc    %si
    4050:	26 8a 3d             	mov    %es:(%di),%bh
    4053:	47                   	inc    %di
    4054:	84 db                	test   %bl,%bl
    4056:	b8 01 00             	mov    $0x1,%ax
    4059:	74 10                	je     0x406b
    405b:	84 ff                	test   %bh,%bh
    405d:	b8 ff ff             	mov    $0xffff,%ax
    4060:	74 09                	je     0x406b
    4062:	2a fb                	sub    %bl,%bh
    4064:	74 e7                	je     0x404d
    4066:	0f b6 c7             	movzbw %bh,%ax
    4069:	eb 07                	jmp    0x4072
    406b:	3a df                	cmp    %bh,%bl
    406d:	75 03                	jne    0x4072
    406f:	b8 00 00             	mov    $0x0,%ax
    4072:	1f                   	pop    %ds
    4073:	5e                   	pop    %si
    4074:	5f                   	pop    %di
    4075:	c9                   	leave
    4076:	ca 08 00             	lret   $0x8
    4079:	c8 00 00 00          	enter  $0x0,$0x0
    407d:	57                   	push   %di
    407e:	2a c0                	sub    %al,%al
    4080:	c4 7e 06             	les    0x6(%bp),%di
    4083:	b9 ff ff             	mov    $0xffff,%cx
    4086:	fc                   	cld
    4087:	f2 ae                	repnz scas %es:(%di),%al
    4089:	f7 d9                	neg    %cx
    408b:	83 c1 ff             	add    $0xffff,%cx
    408e:	8b c1                	mov    %cx,%ax
    4090:	5f                   	pop    %di
    4091:	c9                   	leave
    4092:	ca 04 00             	lret   $0x4
    4095:	c8 00 00 00          	enter  $0x0,$0x0
    4099:	57                   	push   %di
    409a:	56                   	push   %si
    409b:	1e                   	push   %ds
    409c:	66 8b 4e 06          	mov    0x6(%bp),%ecx
    40a0:	fc                   	cld
    40a1:	c4 7e 0e             	les    0xe(%bp),%di
    40a4:	c5 76 0a             	lds    0xa(%bp),%si
    40a7:	d1 e9                	shr    $1,%cx
    40a9:	f3 a5                	rep movsw %ds:(%si),%es:(%di)
    40ab:	83 d1 00             	adc    $0x0,%cx
    40ae:	f3 a4                	rep movsb %ds:(%si),%es:(%di)
    40b0:	1f                   	pop    %ds
    40b1:	5e                   	pop    %si
    40b2:	5f                   	pop    %di
    40b3:	c9                   	leave
    40b4:	ca 0c 00             	lret   $0xc
    40b7:	c8 00 00 00          	enter  $0x0,$0x0
    40bb:	1e                   	push   %ds
    40bc:	56                   	push   %si
    40bd:	1e                   	push   %ds
    40be:	fc                   	cld
    40bf:	66 8b 4e 06          	mov    0x6(%bp),%ecx
    40c3:	c4 7e 0e             	les    0xe(%bp),%di
    40c6:	c5 76 0a             	lds    0xa(%bp),%si
    40c9:	d1 e9                	shr    $1,%cx
    40cb:	f3 a5                	rep movsw %ds:(%si),%es:(%di)
    40cd:	83 d1 00             	adc    $0x0,%cx
    40d0:	f3 a4                	rep movsb %ds:(%si),%es:(%di)
    40d2:	1f                   	pop    %ds
    40d3:	5e                   	pop    %si
    40d4:	1f                   	pop    %ds
    40d5:	c9                   	leave
    40d6:	ca 0c 00             	lret   $0xc
    40d9:	c8 00 00 00          	enter  $0x0,$0x0
    40dd:	57                   	push   %di
    40de:	56                   	push   %si
    40df:	1e                   	push   %ds
    40e0:	fc                   	cld
    40e1:	2b c0                	sub    %ax,%ax
    40e3:	66 8b 4e 06          	mov    0x6(%bp),%ecx
    40e7:	c5 76 0e             	lds    0xe(%bp),%si
    40ea:	c4 7e 0a             	les    0xa(%bp),%di
    40ed:	f3 a6                	repz cmpsb %es:(%di),%ds:(%si)
    40ef:	67 e3 08             	jecxz  0x40fa
    40f2:	b8 ff ff             	mov    $0xffff,%ax
    40f5:	7c 03                	jl     0x40fa
    40f7:	b8 01 00             	mov    $0x1,%ax
    40fa:	1f                   	pop    %ds
    40fb:	5e                   	pop    %si
    40fc:	5f                   	pop    %di
    40fd:	c9                   	leave
    40fe:	ca 0c 00             	lret   $0xc
    4101:	c8 00 00 00          	enter  $0x0,$0x0
    4105:	57                   	push   %di
    4106:	fc                   	cld
    4107:	66 8b 4e 06          	mov    0x6(%bp),%ecx
    410b:	c4 7e 0c             	les    0xc(%bp),%di
    410e:	8a 46 0a             	mov    0xa(%bp),%al
    4111:	f3 aa                	rep stos %al,%es:(%di)
    4113:	5f                   	pop    %di
    4114:	c9                   	leave
    4115:	ca 0a 00             	lret   $0xa
    4118:	c8 00 00 00          	enter  $0x0,$0x0
    411c:	8b 46 06             	mov    0x6(%bp),%ax
    411f:	8b d0                	mov    %ax,%dx
    4121:	c1 fa 0f             	sar    $0xf,%dx
    4124:	33 c2                	xor    %dx,%ax
    4126:	2b c2                	sub    %dx,%ax
    4128:	c9                   	leave
    4129:	ca 02 00             	lret   $0x2
    412c:	00 00                	add    %al,(%bx,%si)
    412e:	00 00                	add    %al,(%bx,%si)
    4130:	93                   	xchg   %ax,%bx
    4131:	50                   	push   %ax
    4132:	92                   	xchg   %ax,%dx
    4133:	09 c0                	or     %ax,%ax
    4135:	74 02                	je     0x4139
    4137:	f7 e2                	mul    %dx
    4139:	91                   	xchg   %ax,%cx
    413a:	09 c0                	or     %ax,%ax
    413c:	74 04                	je     0x4142
    413e:	f7 e3                	mul    %bx
    4140:	01 c1                	add    %ax,%cx
    4142:	58                   	pop    %ax
    4143:	f7 e3                	mul    %bx
    4145:	01 ca                	add    %cx,%dx
    4147:	cb                   	lret
	...
    4150:	09 d2                	or     %dx,%dx
    4152:	78 1e                	js     0x4172
    4154:	09 c9                	or     %cx,%cx
    4156:	78 06                	js     0x415e
    4158:	9a 95 3c 00 00       	lcall  $0x0,$0x3c95
    415d:	cb                   	lret
    415e:	f7 d9                	neg    %cx
    4160:	f7 db                	neg    %bx
    4162:	83 d9 00             	sbb    $0x0,%cx
    4165:	9a 95 3c 00 00       	lcall  $0x0,$0x3c95
    416a:	f7 da                	neg    %dx
    416c:	f7 d8                	neg    %ax
    416e:	83 da 00             	sbb    $0x0,%dx
    4171:	cb                   	lret
    4172:	f7 da                	neg    %dx
    4174:	f7 d8                	neg    %ax
    4176:	83 da 00             	sbb    $0x0,%dx
    4179:	09 c9                	or     %cx,%cx
    417b:	79 14                	jns    0x4191
    417d:	f7 d9                	neg    %cx
    417f:	f7 db                	neg    %bx
    4181:	83 d9 00             	sbb    $0x0,%cx
    4184:	9a 95 3c 00 00       	lcall  $0x0,$0x3c95
    4189:	f7 d9                	neg    %cx
    418b:	f7 db                	neg    %bx
    418d:	83 d9 00             	sbb    $0x0,%cx
    4190:	cb                   	lret
    4191:	9a 95 3c 00 00       	lcall  $0x0,$0x3c95
    4196:	f7 d9                	neg    %cx
    4198:	f7 db                	neg    %bx
    419a:	83 d9 00             	sbb    $0x0,%cx
    419d:	f7 da                	neg    %dx
    419f:	f7 d8                	neg    %ax
    41a1:	83 da 00             	sbb    $0x0,%dx
    41a4:	cb                   	lret
    41a5:	09 c9                	or     %cx,%cx
    41a7:	75 1c                	jne    0x41c5
    41a9:	4b                   	dec    %bx
    41aa:	74 18                	je     0x41c4
    41ac:	43                   	inc    %bx
    41ad:	74 30                	je     0x41df
    41af:	39 d3                	cmp    %dx,%bx
    41b1:	77 09                	ja     0x41bc
    41b3:	89 c1                	mov    %ax,%cx
    41b5:	89 d0                	mov    %dx,%ax
    41b7:	29 d2                	sub    %dx,%dx
    41b9:	f7 f3                	div    %bx
    41bb:	91                   	xchg   %ax,%cx
    41bc:	f7 f3                	div    %bx
    41be:	89 d3                	mov    %dx,%bx
    41c0:	89 ca                	mov    %cx,%dx
    41c2:	29 c9                	sub    %cx,%cx
    41c4:	cb                   	lret
    41c5:	39 d1                	cmp    %dx,%cx
    41c7:	72 1a                	jb     0x41e3
    41c9:	75 10                	jne    0x41db
    41cb:	39 c3                	cmp    %ax,%bx
    41cd:	77 0c                	ja     0x41db
    41cf:	29 d8                	sub    %bx,%ax
    41d1:	89 c3                	mov    %ax,%bx
    41d3:	29 c9                	sub    %cx,%cx
    41d5:	29 d2                	sub    %dx,%dx
    41d7:	b8 01 00             	mov    $0x1,%ax
    41da:	cb                   	lret
    41db:	29 c9                	sub    %cx,%cx
    41dd:	29 db                	sub    %bx,%bx
    41df:	93                   	xchg   %ax,%bx
    41e0:	87 ca                	xchg   %cx,%dx
    41e2:	cb                   	lret
    41e3:	55                   	push   %bp
    41e4:	56                   	push   %si
    41e5:	57                   	push   %di
    41e6:	29 f6                	sub    %si,%si
    41e8:	89 f7                	mov    %si,%di
    41ea:	89 f5                	mov    %si,%bp
    41ec:	01 db                	add    %bx,%bx
    41ee:	11 c9                	adc    %cx,%cx
    41f0:	72 13                	jb     0x4205
    41f2:	45                   	inc    %bp
    41f3:	39 d1                	cmp    %dx,%cx
    41f5:	72 f5                	jb     0x41ec
    41f7:	77 04                	ja     0x41fd
    41f9:	39 c3                	cmp    %ax,%bx
    41fb:	76 ef                	jbe    0x41ec
    41fd:	f8                   	clc
    41fe:	11 f6                	adc    %si,%si
    4200:	11 ff                	adc    %di,%di
    4202:	4d                   	dec    %bp
    4203:	78 22                	js     0x4227
    4205:	d1 d9                	rcr    $1,%cx
    4207:	d1 db                	rcr    $1,%bx
    4209:	29 d8                	sub    %bx,%ax
    420b:	19 ca                	sbb    %cx,%dx
    420d:	f5                   	cmc
    420e:	72 ee                	jb     0x41fe
    4210:	01 f6                	add    %si,%si
    4212:	11 ff                	adc    %di,%di
    4214:	4d                   	dec    %bp
    4215:	78 0c                	js     0x4223
    4217:	d1 e9                	shr    $1,%cx
    4219:	d1 db                	rcr    $1,%bx
    421b:	01 d8                	add    %bx,%ax
    421d:	11 ca                	adc    %cx,%dx
    421f:	73 ef                	jae    0x4210
    4221:	eb db                	jmp    0x41fe
    4223:	01 d8                	add    %bx,%ax
    4225:	11 ca                	adc    %cx,%dx
    4227:	89 c3                	mov    %ax,%bx
    4229:	89 d1                	mov    %dx,%cx
    422b:	89 f0                	mov    %si,%ax
    422d:	89 fa                	mov    %di,%dx
    422f:	5f                   	pop    %di
    4230:	5e                   	pop    %si
    4231:	5d                   	pop    %bp
    4232:	cb                   	lret
	...
    423f:	00 00                	add    %al,(%bx,%si)
    4241:	00 01                	add    %al,(%bx,%di)
    4243:	55                   	push   %bp
    4244:	01 00                	add    %ax,(%bx,%si)
    4246:	00 00                	add    %al,(%bx,%si)
    4248:	cd 00                	int    $0x0
    424a:	00 00                	add    %al,(%bx,%si)
    424c:	a4                   	movsb  %ds:(%si),%es:(%di)
    424d:	20 d3                	and    %dl,%bl
    424f:	03 ba 20 d3          	add    -0x2ce0(%bp,%si),%di
    4253:	03 00                	add    (%bx,%si),%ax
    4255:	00 06 00 f6          	add    %al,-0xa00
    4259:	20 d3                	and    %dl,%bl
    425b:	03 00                	add    (%bx,%si),%ax
    425d:	21 d3                	and    %dx,%bx
    425f:	03 06 00 00          	add    0x0,%ax
    4263:	00 10                	add    %dl,(%bx,%si)
    4265:	00 00                	add    %al,(%bx,%si)
    4267:	00 10                	add    %dl,(%bx,%si)
    4269:	02 00                	add    (%bx,%si),%al
    426b:	00 20                	add    %ah,(%bx,%si)
    426d:	02 00                	add    (%bx,%si),%al
    426f:	00 30                	add    %dh,(%bx,%si)
    4271:	02 00                	add    (%bx,%si),%al
    4273:	00 40 02             	add    %al,0x2(%bx,%si)
    4276:	00 00                	add    %al,(%bx,%si)
    4278:	50                   	push   %ax
    4279:	02 00                	add    (%bx,%si),%al
    427b:	00 60 02             	add    %ah,0x2(%bx,%si)
	...
    428e:	00 00                	add    %al,(%bx,%si)
    4290:	01 00                	add    %ax,(%bx,%si)
    4292:	00 00                	add    %al,(%bx,%si)
    4294:	01 00                	add    %ax,(%bx,%si)
    4296:	00 00                	add    %al,(%bx,%si)
    4298:	00 00                	add    %al,(%bx,%si)
    429a:	00 00                	add    %al,(%bx,%si)
    429c:	00 2a                	add    %ch,(%bp,%si)
    429e:	21 d3                	and    %dx,%bx
    42a0:	03 00                	add    (%bx,%si),%ax
    42a2:	00 00                	add    %al,(%bx,%si)
    42a4:	00 03                	add    %al,(%bp,%di)
    42a6:	00 00                	add    %al,(%bx,%si)
    42a8:	00 0a                	add    %cl,(%bp,%si)
    42aa:	00 00                	add    %al,(%bx,%si)
    42ac:	00 00                	add    %al,(%bx,%si)
    42ae:	00 00                	add    %al,(%bx,%si)
    42b0:	00 01                	add    %al,(%bx,%di)
    42b2:	00 00                	add    %al,(%bx,%si)
    42b4:	00 03                	add    %al,(%bp,%di)
	...
    42d2:	00 00                	add    %al,(%bx,%si)
    42d4:	00 01                	add    %al,(%bx,%di)
    42d6:	00 00                	add    %al,(%bx,%si)
    42d8:	00 01                	add    %al,(%bx,%di)
	...
    42e2:	36 21 d3             	ss and %dx,%bx
    42e5:	03 4e 21             	add    0x21(%bp),%cx
    42e8:	d3 03                	rolw   %cl,(%bp,%di)
    42ea:	02 00                	add    (%bx,%si),%al
    42ec:	00 00                	add    %al,(%bx,%si)
    42ee:	02 00                	add    (%bx,%si),%al
    42f0:	00 00                	add    %al,(%bx,%si)
    42f2:	22 22                	and    (%bp,%si),%ah
    42f4:	d3 03                	rolw   %cl,(%bp,%di)
    42f6:	26 22 d3             	es and %bl,%dl
    42f9:	03 00                	add    (%bx,%si),%ax
	...
    4317:	00 00                	add    %al,(%bx,%si)
    4319:	00 01                	add    %al,(%bx,%di)
	...
    4327:	2a 22                	sub    (%bp,%si),%ah
    4329:	d3 03                	rolw   %cl,(%bp,%di)
    432b:	36 22 d3             	ss and %bl,%dl
    432e:	03 09                	add    (%bx,%di),%cx
    4330:	00 00                	add    %al,(%bx,%si)
    4332:	00 0a                	add    %cl,(%bp,%si)
    4334:	00 00                	add    %al,(%bx,%si)
    4336:	00 02                	add    %al,(%bp,%si)
    4338:	00 00                	add    %al,(%bx,%si)
    433a:	00 03                	add    %al,(%bp,%di)
    433c:	00 00                	add    %al,(%bx,%si)
    433e:	00 05                	add    %al,(%di)
    4340:	00 00                	add    %al,(%bx,%si)
    4342:	00 07                	add    %al,(%bx)
    4344:	00 00                	add    %al,(%bx,%si)
    4346:	00 09                	add    %cl,(%bx,%di)
    4348:	00 00                	add    %al,(%bx,%si)
    434a:	00 0a                	add    %cl,(%bp,%si)
    434c:	00 00                	add    %al,(%bx,%si)
    434e:	00 0b                	add    %cl,(%bp,%di)
    4350:	00 00                	add    %al,(%bx,%si)
    4352:	00 0c                	add    %cl,(%si)
    4354:	00 00                	add    %al,(%bx,%si)
    4356:	00 0f                	add    %cl,(%bx)
    4358:	00 00                	add    %al,(%bx,%si)
    435a:	00 00                	add    %al,(%bx,%si)
    435c:	00 00                	add    %al,(%bx,%si)
    435e:	00 02                	add    %al,(%bp,%si)
    4360:	00 00                	add    %al,(%bx,%si)
    4362:	00 01                	add    %al,(%bx,%di)
	...
    436c:	b6 22                	mov    $0x22,%dh
    436e:	d3 03                	rolw   %cl,(%bp,%di)
    4370:	c4 22                	les    (%bp,%si),%sp
    4372:	d3 03                	rolw   %cl,(%bp,%di)
    4374:	05 00 00             	add    $0x0,%ax
    4377:	00 02                	add    %al,(%bp,%si)
    4379:	00 00                	add    %al,(%bx,%si)
    437b:	00 8a 24 d3          	add    %cl,-0x2cdc(%bp,%si)
    437f:	03 90 24 d3          	add    -0x2cdc(%bx,%si),%dx
    4383:	03 96 24 d3          	add    -0x2cdc(%bp),%dx
    4387:	03 9a 24 d3          	add    -0x2cdc(%bp,%si),%bx
    438b:	03 a2 24 d3          	add    -0x2cdc(%bp,%si),%sp
    438f:	03 00                	add    (%bx,%si),%ax
	...
    43b1:	a8 24                	test   $0x24,%al
    43b3:	d3 03                	rolw   %cl,(%bp,%di)
    43b5:	b6 24                	mov    $0x24,%dh
    43b7:	d3 03                	rolw   %cl,(%bp,%di)
    43b9:	03 00                	add    (%bx,%si),%ax
    43bb:	00 00                	add    %al,(%bx,%si)
    43bd:	02 00                	add    (%bx,%si),%al
    43bf:	00 00                	add    %al,(%bx,%si)
    43c1:	74 25                	je     0x43e8
    43c3:	d3 03                	rolw   %cl,(%bp,%di)
    43c5:	82 25 d3             	andb   $0xd3,(%di)
    43c8:	03 92 25 d3          	add    -0x2cdb(%bp,%si),%dx
    43cc:	03 00                	add    (%bx,%si),%ax
	...
    450a:	00 00                	add    %al,(%bx,%si)
    450c:	02 00                	add    (%bx,%si),%al
    450e:	00 00                	add    %al,(%bx,%si)
    4510:	cd 00                	int    $0x0
    4512:	00 00                	add    %al,(%bx,%si)
    4514:	9e                   	sahf
    4515:	25 d3 03             	and    $0x3d3,%ax
    4518:	b8 25 d3             	mov    $0xd325,%ax
    451b:	03 00                	add    (%bx,%si),%ax
    451d:	00 07                	add    %al,(%bx)
    451f:	00 f6                	add    %dh,%dh
    4521:	20 d3                	and    %dl,%bl
    4523:	03 46 26             	add    0x26(%bp),%ax
    4526:	d3 03                	rolw   %cl,(%bp,%di)
    4528:	06                   	push   %es
    4529:	00 00                	add    %al,(%bx,%si)
    452b:	00 10                	add    %dl,(%bx,%si)
    452d:	00 00                	add    %al,(%bx,%si)
    452f:	00 10                	add    %dl,(%bx,%si)
    4531:	02 00                	add    (%bx,%si),%al
    4533:	00 20                	add    %ah,(%bx,%si)
    4535:	02 00                	add    (%bx,%si),%al
    4537:	00 30                	add    %dh,(%bx,%si)
    4539:	02 00                	add    (%bx,%si),%al
    453b:	00 40 02             	add    %al,0x2(%bx,%si)
    453e:	00 00                	add    %al,(%bx,%si)
    4540:	50                   	push   %ax
    4541:	02 00                	add    (%bx,%si),%al
    4543:	00 60 02             	add    %ah,0x2(%bx,%si)
	...
    4556:	00 00                	add    %al,(%bx,%si)
    4558:	01 00                	add    %ax,(%bx,%si)
    455a:	00 00                	add    %al,(%bx,%si)
    455c:	01 00                	add    %ax,(%bx,%si)
    455e:	00 00                	add    %al,(%bx,%si)
    4560:	00 00                	add    %al,(%bx,%si)
    4562:	00 00                	add    %al,(%bx,%si)
    4564:	00 2a                	add    %ch,(%bp,%si)
    4566:	21 d3                	and    %dx,%bx
    4568:	03 00                	add    (%bx,%si),%ax
    456a:	00 00                	add    %al,(%bx,%si)
    456c:	00 03                	add    %al,(%bp,%di)
    456e:	00 00                	add    %al,(%bx,%si)
    4570:	00 0a                	add    %cl,(%bp,%si)
    4572:	00 00                	add    %al,(%bx,%si)
    4574:	00 00                	add    %al,(%bx,%si)
    4576:	00 00                	add    %al,(%bx,%si)
    4578:	00 01                	add    %al,(%bx,%di)
    457a:	00 00                	add    %al,(%bx,%si)
    457c:	00 03                	add    %al,(%bp,%di)
	...
    459a:	00 00                	add    %al,(%bx,%si)
    459c:	00 01                	add    %al,(%bx,%di)
    459e:	00 00                	add    %al,(%bx,%si)
    45a0:	00 01                	add    %al,(%bx,%di)
	...
    45aa:	36 21 d3             	ss and %dx,%bx
    45ad:	03 70 26             	add    0x26(%bx,%si),%si
    45b0:	d3 03                	rolw   %cl,(%bp,%di)
    45b2:	02 00                	add    (%bx,%si),%al
    45b4:	00 00                	add    %al,(%bx,%si)
    45b6:	02 00                	add    (%bx,%si),%al
    45b8:	00 00                	add    %al,(%bx,%si)
    45ba:	22 22                	and    (%bp,%si),%ah
    45bc:	d3 03                	rolw   %cl,(%bp,%di)
    45be:	26 22 d3             	es and %bl,%dl
    45c1:	03 00                	add    (%bx,%si),%ax
	...
    45df:	00 00                	add    %al,(%bx,%si)
    45e1:	00 01                	add    %al,(%bx,%di)
	...
    45ef:	2a 22                	sub    (%bp,%si),%ah
    45f1:	d3 03                	rolw   %cl,(%bp,%di)
    45f3:	12 27                	adc    (%bx),%ah
    45f5:	d3 03                	rolw   %cl,(%bp,%di)
    45f7:	09 00                	or     %ax,(%bx,%si)
    45f9:	00 00                	add    %al,(%bx,%si)
    45fb:	0a 00                	or     (%bx,%si),%al
    45fd:	00 00                	add    %al,(%bx,%si)
    45ff:	02 00                	add    (%bx,%si),%al
    4601:	00 00                	add    %al,(%bx,%si)
    4603:	03 00                	add    (%bx,%si),%ax
    4605:	00 00                	add    %al,(%bx,%si)
    4607:	05 00 00             	add    $0x0,%ax
    460a:	00 07                	add    %al,(%bx)
    460c:	00 00                	add    %al,(%bx,%si)
    460e:	00 09                	add    %cl,(%bx,%di)
    4610:	00 00                	add    %al,(%bx,%si)
    4612:	00 0a                	add    %cl,(%bp,%si)
    4614:	00 00                	add    %al,(%bx,%si)
    4616:	00 0b                	add    %cl,(%bp,%di)
    4618:	00 00                	add    %al,(%bx,%si)
    461a:	00 0c                	add    %cl,(%si)
    461c:	00 00                	add    %al,(%bx,%si)
    461e:	00 0f                	add    %cl,(%bx)
    4620:	00 00                	add    %al,(%bx,%si)
    4622:	00 00                	add    %al,(%bx,%si)
    4624:	00 00                	add    %al,(%bx,%si)
    4626:	00 02                	add    %al,(%bp,%si)
    4628:	00 00                	add    %al,(%bx,%si)
    462a:	00 01                	add    %al,(%bx,%di)
	...
    4634:	b6 22                	mov    $0x22,%dh
    4636:	d3 03                	rolw   %cl,(%bp,%di)
    4638:	4a                   	dec    %dx
    4639:	27                   	daa
    463a:	d3 03                	rolw   %cl,(%bp,%di)
    463c:	05 00 00             	add    $0x0,%ax
    463f:	00 02                	add    %al,(%bp,%si)
    4641:	00 00                	add    %al,(%bx,%si)
    4643:	00 8a 24 d3          	add    %cl,-0x2cdc(%bp,%si)
    4647:	03 90 24 d3          	add    -0x2cdc(%bx,%si),%dx
    464b:	03 96 24 d3          	add    -0x2cdc(%bp),%dx
    464f:	03 9a 24 d3          	add    -0x2cdc(%bp,%si),%bx
    4653:	03 a2 24 d3          	add    -0x2cdc(%bp,%si),%sp
    4657:	03 00                	add    (%bx,%si),%ax
	...
    4679:	10 29                	adc    %ch,(%bx,%di)
    467b:	d3 03                	rolw   %cl,(%bp,%di)
    467d:	1c 29                	sbb    $0x29,%al
    467f:	d3 03                	rolw   %cl,(%bp,%di)
    4681:	02 00                	add    (%bx,%si),%al
    4683:	00 00                	add    %al,(%bx,%si)
    4685:	02 00                	add    (%bx,%si),%al
    4687:	00 00                	add    %al,(%bx,%si)
    4689:	c0 29 d3             	shrb   $0xd3,(%bx,%di)
    468c:	03 c8                	add    %ax,%cx
    468e:	29 d3                	sub    %dx,%bx
    4690:	03 00                	add    (%bx,%si),%ax
	...
    46be:	a8 24                	test   $0x24,%al
    46c0:	d3 03                	rolw   %cl,(%bp,%di)
    46c2:	ce                   	into
    46c3:	29 d3                	sub    %dx,%bx
    46c5:	03 03                	add    (%bp,%di),%ax
    46c7:	00 00                	add    %al,(%bx,%si)
    46c9:	00 02                	add    %al,(%bp,%si)
    46cb:	00 00                	add    %al,(%bx,%si)
    46cd:	00 74 25             	add    %dh,0x25(%si)
    46d0:	d3 03                	rolw   %cl,(%bp,%di)
    46d2:	82 25 d3             	andb   $0xd3,(%di)
    46d5:	03 92 25 d3          	add    -0x2cdb(%bp,%si),%dx
    46d9:	03 00                	add    (%bx,%si),%ax
	...
    47d3:	00 06 00 00          	add    %al,0x0
    47d7:	00 cd                	add    %cl,%ch
    47d9:	00 00                	add    %al,(%bx,%si)
    47db:	00 8c 2a d3          	add    %cl,-0x2cd6(%si)
    47df:	03 a4 2a d3          	add    -0x2cd6(%si),%sp
    47e3:	03 00                	add    (%bx,%si),%ax
    47e5:	00 07                	add    %al,(%bx)
    47e7:	00 f6                	add    %dh,%dh
    47e9:	20 d3                	and    %dl,%bl
    47eb:	03 10                	add    (%bx,%si),%dx
    47ed:	2b d3                	sub    %bx,%dx
    47ef:	03 06 00 00          	add    0x0,%ax
    47f3:	00 10                	add    %dl,(%bx,%si)
    47f5:	00 00                	add    %al,(%bx,%si)
    47f7:	00 10                	add    %dl,(%bx,%si)
    47f9:	02 00                	add    (%bx,%si),%al
    47fb:	00 20                	add    %ah,(%bx,%si)
    47fd:	02 00                	add    (%bx,%si),%al
    47ff:	00 30                	add    %dh,(%bx,%si)
    4801:	02 00                	add    (%bx,%si),%al
    4803:	00 40 02             	add    %al,0x2(%bx,%si)
    4806:	00 00                	add    %al,(%bx,%si)
    4808:	50                   	push   %ax
    4809:	02 00                	add    (%bx,%si),%al
    480b:	00 60 02             	add    %ah,0x2(%bx,%si)
	...
    481e:	00 00                	add    %al,(%bx,%si)
    4820:	01 00                	add    %ax,(%bx,%si)
    4822:	00 00                	add    %al,(%bx,%si)
    4824:	01 00                	add    %ax,(%bx,%si)
    4826:	00 00                	add    %al,(%bx,%si)
    4828:	00 00                	add    %al,(%bx,%si)
    482a:	00 00                	add    %al,(%bx,%si)
    482c:	00 2a                	add    %ch,(%bp,%si)
    482e:	21 d3                	and    %dx,%bx
    4830:	03 3a                	add    (%bp,%si),%di
    4832:	2b d3                	sub    %bx,%dx
    4834:	03 06 00 00          	add    0x0,%ax
    4838:	00 0a                	add    %cl,(%bp,%si)
    483a:	00 00                	add    %al,(%bx,%si)
    483c:	00 00                	add    %al,(%bx,%si)
    483e:	00 00                	add    %al,(%bx,%si)
    4840:	00 01                	add    %al,(%bx,%di)
    4842:	00 00                	add    %al,(%bx,%si)
    4844:	00 03                	add    %al,(%bp,%di)
    4846:	00 00                	add    %al,(%bx,%si)
    4848:	00 05                	add    %al,(%di)
    484a:	00 00                	add    %al,(%bx,%si)
    484c:	00 06 00 00          	add    %al,0x0
    4850:	00 07                	add    %al,(%bx)
	...
    4862:	00 00                	add    %al,(%bx,%si)
    4864:	00 03                	add    %al,(%bp,%di)
	...
    4872:	36 21 d3             	ss and %dx,%bx
    4875:	03 66 2b             	add    0x2b(%bp),%sp
    4878:	d3 03                	rolw   %cl,(%bp,%di)
    487a:	02 00                	add    (%bx,%si),%al
    487c:	00 00                	add    %al,(%bx,%si)
    487e:	02 00                	add    (%bx,%si),%al
    4880:	00 00                	add    %al,(%bx,%si)
    4882:	22 22                	and    (%bp,%si),%ah
    4884:	d3 03                	rolw   %cl,(%bp,%di)
    4886:	26 22 d3             	es and %bl,%dl
    4889:	03 00                	add    (%bx,%si),%ax
	...
    48a7:	00 00                	add    %al,(%bx,%si)
    48a9:	00 01                	add    %al,(%bx,%di)
	...
    48b7:	2a 22                	sub    (%bp,%si),%ah
    48b9:	d3 03                	rolw   %cl,(%bp,%di)
    48bb:	08 2c                	or     %ch,(%si)
    48bd:	d3 03                	rolw   %cl,(%bp,%di)
    48bf:	09 00                	or     %ax,(%bx,%si)
    48c1:	00 00                	add    %al,(%bx,%si)
    48c3:	0a 00                	or     (%bx,%si),%al
    48c5:	00 00                	add    %al,(%bx,%si)
    48c7:	02 00                	add    (%bx,%si),%al
    48c9:	00 00                	add    %al,(%bx,%si)
    48cb:	03 00                	add    (%bx,%si),%ax
    48cd:	00 00                	add    %al,(%bx,%si)
    48cf:	05 00 00             	add    $0x0,%ax
    48d2:	00 07                	add    %al,(%bx)
    48d4:	00 00                	add    %al,(%bx,%si)
    48d6:	00 09                	add    %cl,(%bx,%di)
    48d8:	00 00                	add    %al,(%bx,%si)
    48da:	00 0a                	add    %cl,(%bp,%si)
    48dc:	00 00                	add    %al,(%bx,%si)
    48de:	00 0b                	add    %cl,(%bp,%di)
    48e0:	00 00                	add    %al,(%bx,%si)
    48e2:	00 0c                	add    %cl,(%si)
    48e4:	00 00                	add    %al,(%bx,%si)
    48e6:	00 0f                	add    %cl,(%bx)
    48e8:	00 00                	add    %al,(%bx,%si)
    48ea:	00 00                	add    %al,(%bx,%si)
    48ec:	00 00                	add    %al,(%bx,%si)
    48ee:	00 02                	add    %al,(%bp,%si)
    48f0:	00 00                	add    %al,(%bx,%si)
    48f2:	00 01                	add    %al,(%bx,%di)
	...
    48fc:	b6 22                	mov    $0x22,%dh
    48fe:	d3 03                	rolw   %cl,(%bp,%di)
    4900:	2a 2c                	sub    (%si),%ch
    4902:	d3 03                	rolw   %cl,(%bp,%di)
    4904:	05 00 00             	add    $0x0,%ax
    4907:	00 02                	add    %al,(%bp,%si)
    4909:	00 00                	add    %al,(%bx,%si)
    490b:	00 8a 24 d3          	add    %cl,-0x2cdc(%bp,%si)
    490f:	03 90 24 d3          	add    -0x2cdc(%bx,%si),%dx
    4913:	03 96 24 d3          	add    -0x2cdc(%bp),%dx
    4917:	03 9a 24 d3          	add    -0x2cdc(%bp,%si),%bx
    491b:	03 a2 24 d3          	add    -0x2cdc(%bp,%si),%sp
    491f:	03 00                	add    (%bx,%si),%ax
	...
    4941:	10 29                	adc    %ch,(%bx,%di)
    4943:	d3 03                	rolw   %cl,(%bp,%di)
    4945:	f0 2d d3 03          	lock sub $0x3d3,%ax
    4949:	02 00                	add    (%bx,%si),%al
    494b:	00 00                	add    %al,(%bx,%si)
    494d:	02 00                	add    (%bx,%si),%al
    494f:	00 00                	add    %al,(%bx,%si)
    4951:	c0 29 d3             	shrb   $0xd3,(%bx,%di)
    4954:	03 c8                	add    %ax,%cx
    4956:	29 d3                	sub    %dx,%bx
    4958:	03 00                	add    (%bx,%si),%ax
	...
    4986:	a8 24                	test   $0x24,%al
    4988:	d3 03                	rolw   %cl,(%bp,%di)
    498a:	94                   	xchg   %ax,%sp
    498b:	2e d3 03             	rolw   %cl,%cs:(%bp,%di)
    498e:	04 00                	add    $0x0,%al
    4990:	00 00                	add    %al,(%bx,%si)
    4992:	02 00                	add    (%bx,%si),%al
    4994:	00 00                	add    %al,(%bx,%si)
    4996:	52                   	push   %dx
    4997:	2f                   	das
    4998:	d3 03                	rolw   %cl,(%bp,%di)
    499a:	6e                   	outsb  %ds:(%si),(%dx)
    499b:	2f                   	das
    499c:	d3 03                	rolw   %cl,(%bp,%di)
    499e:	84 2f                	test   %ch,(%bx)
    49a0:	d3 03                	rolw   %cl,(%bp,%di)
    49a2:	9c                   	pushf
    49a3:	2f                   	das
    49a4:	d3 03                	rolw   %cl,(%bp,%di)
	...
    4a9a:	30 31                	xor    %dh,(%bx,%di)
    4a9c:	32 33                	xor    (%bp,%di),%dh
    4a9e:	34 35                	xor    $0x35,%al
    4aa0:	36 37                	ss aaa
    4aa2:	38 39                	cmp    %bh,(%bx,%di)
    4aa4:	41                   	inc    %cx
    4aa5:	42                   	inc    %dx
    4aa6:	43                   	inc    %bx
    4aa7:	44                   	inc    %sp
    4aa8:	45                   	inc    %bp
    4aa9:	46                   	inc    %si
	...
    4ace:	00 89 31 00          	add    %cl,0x31(%bx,%di)
    4ad2:	00 7a 32             	add    %bh,0x32(%bp,%si)
    4ad5:	00 00                	add    %al,(%bx,%si)
    4ad7:	4b                   	dec    %bx
    4ad8:	33 00                	xor    (%bx,%si),%ax
    4ada:	00 a2 33 00          	add    %ah,0x33(%bp,%si)
    4ade:	00 9d 16 00          	add    %bl,0x16(%di)
    4ae2:	00 31                	add    %dh,(%bx,%di)
    4ae4:	34 00                	xor    $0x0,%al
    4ae6:	00 a0 34 00          	add    %ah,0x34(%bx,%si)
    4aea:	00 ff                	add    %bh,%bh
    4aec:	34 00                	xor    $0x0,%al
    4aee:	00 63 2e             	add    %ah,0x2e(%bp,%di)
    4af1:	00 00                	add    %al,(%bx,%si)
    4af3:	a0 2e 00             	mov    0x2e,%al
    4af6:	00 dd                	add    %bl,%ch
    4af8:	2e 00 00             	add    %al,%cs:(%bx,%si)
    4afb:	1a 2f                	sbb    (%bx),%ch
    4afd:	00 00                	add    %al,(%bx,%si)
    4aff:	48                   	dec    %ax
    4b00:	2f                   	das
    4b01:	00 00                	add    %al,(%bx,%si)
    4b03:	77 36                	ja     0x4b3b
    4b05:	00 00                	add    %al,(%bx,%si)
    4b07:	82 36 00 00 81       	xorb   $0x81,0x0
    4b0c:	36 00 00             	add    %al,%ss:(%bx,%si)
    4b0f:	26 35 00 00          	es xor $0x0,%ax
    4b13:	d5 35                	aad    $0x35
    4b15:	00 00                	add    %al,(%bx,%si)
    4b17:	59                   	pop    %cx
    4b18:	35 00 00             	xor    $0x0,%ax
    4b1b:	3a 36 00 00          	cmp    0x0,%dh
    4b1f:	8c 35                	mov    %?,(%di)
    4b21:	00 00                	add    %al,(%bx,%si)
    4b23:	2c 2d                	sub    $0x2d,%al
    4b25:	00 00                	add    %al,(%bx,%si)
    4b27:	8b 2f                	mov    (%bx),%bp
    4b29:	00 00                	add    %al,(%bx,%si)
    4b2b:	82 30 00             	xorb   $0x0,(%bx,%si)
    4b2e:	00 8a 36 00          	add    %cl,0x36(%bp,%si)
    4b32:	00 b1 36 00          	add    %dh,0x36(%bx,%di)
	...
    6236:	01 00                	add    %ax,(%bx,%si)
    6238:	87 00                	xchg   %ax,(%bx,%si)
    623a:	08 00                	or     %al,(%bx,%si)
    623c:	09 00                	or     %ax,(%bx,%si)
    623e:	0a 00                	or     (%bx,%si),%al
    6240:	0b 00                	or     (%bx,%si),%ax
    6242:	0c 00                	or     $0x0,%al
    6244:	0d 00 0e             	or     $0xe00,%ax
    6247:	00 0f                	add    %cl,(%bx)
    6249:	00 02                	add    %al,(%bp,%si)
    624b:	00 03                	add    %al,(%bp,%di)
    624d:	00 83 00 08          	add    %al,0x800(%bp,%di)
    6251:	00 09                	add    %cl,(%bx,%di)
    6253:	00 0a                	add    %cl,(%bp,%si)
    6255:	00 0b                	add    %cl,(%bp,%di)
    6257:	00 0c                	add    %cl,(%si)
    6259:	00 0d                	add    %cl,(%di)
    625b:	00 0e 00 0f          	add    %cl,0xf00
    625f:	00 04                	add    %al,(%si)
    6261:	00 05                	add    %al,(%di)
    6263:	00 81 00 08          	add    %al,0x800(%bx,%di)
    6267:	00 09                	add    %cl,(%bx,%di)
    6269:	00 0a                	add    %cl,(%bp,%si)
    626b:	00 0b                	add    %cl,(%bp,%di)
    626d:	00 0c                	add    %cl,(%si)
    626f:	00 0d                	add    %cl,(%di)
    6271:	00 0e 00 0f          	add    %cl,0xf00
    6275:	00 06 00 07          	add    %al,0x700
    6279:	00 82 00 08          	add    %al,0x800(%bp,%si)
    627d:	00 09                	add    %cl,(%bx,%di)
    627f:	00 0a                	add    %cl,(%bp,%si)
    6281:	00 0b                	add    %cl,(%bp,%di)
    6283:	00 0c                	add    %cl,(%si)
    6285:	00 0d                	add    %cl,(%di)
    6287:	00 0e 00 0f          	add    %cl,0xf00
	...
    629f:	00 00                	add    %al,(%bx,%si)
    62a1:	00 c4                	add    %al,%ah
    62a3:	00 c6                	add    %al,%dh
    62a5:	00 8b 00 d0          	add    %cl,-0x3000(%bp,%di)
    62a9:	00 d2                	add    %dl,%dl
    62ab:	00 d4                	add    %dl,%ah
    62ad:	00 d6                	add    %dl,%dh
    62af:	00 d8                	add    %bl,%al
    62b1:	00 da                	add    %bl,%dl
    62b3:	00 dc                	add    %bl,%ah
    62b5:	00 de                	add    %bl,%dh
    62b7:	00 c8                	add    %cl,%al
    62b9:	00 ca                	add    %cl,%dl
    62bb:	00 89 00 d0          	add    %cl,-0x3000(%bx,%di)
    62bf:	00 d2                	add    %dl,%dl
    62c1:	00 d4                	add    %dl,%ah
    62c3:	00 d6                	add    %dl,%dh
    62c5:	00 d8                	add    %bl,%al
    62c7:	00 da                	add    %bl,%dl
    62c9:	00 dc                	add    %bl,%ah
    62cb:	00 de                	add    %bl,%dh
    62cd:	00 cc                	add    %cl,%ah
    62cf:	00 ce                	add    %cl,%dh
    62d1:	00 8a 00 d0          	add    %cl,-0x3000(%bp,%si)
    62d5:	00 d2                	add    %dl,%dl
    62d7:	00 d4                	add    %dl,%ah
    62d9:	00 d6                	add    %dl,%dh
    62db:	00 d8                	add    %bl,%al
    62dd:	00 da                	add    %bl,%dl
    62df:	00 dc                	add    %bl,%ah
    62e1:	00 de                	add    %bl,%dh
    62e3:	00 53 6f             	add    %dl,0x6f(%bp,%di)
    62e6:	75 6e                	jne    0x6356
    62e8:	64 20 42 6c          	and    %al,%fs:0x6c(%bp,%si)
    62ec:	61                   	popa
    62ed:	73 74                	jae    0x6363
    62ef:	65 72 20             	gs jb  0x6312
    62f2:	73 81                	jae    0x6275
    62f4:	72 81                	jb     0x6277
    62f6:	63 81 00 64          	arpl   %ax,0x6400(%bx,%di)
    62fa:	53                   	push   %bx
    62fb:	6f                   	outsw  %ds:(%si),(%dx)
    62fc:	75 6e                	jne    0x636c
    62fe:	64 20 42 6c          	and    %al,%fs:0x6c(%bp,%si)
    6302:	61                   	popa
    6303:	73 74                	jae    0x6379
    6305:	65 72 20             	gs jb  0x6328
    6308:	73 81                	jae    0x628b
    630a:	72 81                	jb     0x628d
    630c:	63 81 2e 20          	arpl   %ax,0x202e(%bx,%di)
    6310:	25 31 30             	and    $0x3031,%ax
    6313:	30 20                	xor    %ah,(%bx,%si)
    6315:	53                   	push   %bx
    6316:	42                   	inc    %dx
    6317:	20 75 79             	and    %dh,0x79(%di)
    631a:	75 6d                	jne    0x6389
    631c:	6c                   	insb   (%dx),%es:(%di)
    631d:	75 20                	jne    0x633f
    631f:	74 81                	je     0x62a2
    6321:	6d                   	insw   (%dx),%es:(%di)
    6322:	20 6b 61             	and    %ch,0x61(%bp,%di)
    6325:	72 74                	jb     0x639b
    6327:	6c                   	insb   (%dx),%es:(%di)
    6328:	61                   	popa
    6329:	72 8d                	jb     0x62b8
    632b:	20 64 65             	and    %ah,0x65(%si)
    632e:	73 74                	jae    0x63a4
    6330:	65 6b 6c 65 72       	imul   $0x72,%gs:0x65(%si),%bp
    6335:	00 49 2f             	add    %cl,0x2f(%bx,%di)
    6338:	4f                   	dec    %di
    6339:	20 70 6f             	and    %dh,0x6f(%bx,%si)
    633c:	72 74                	jb     0x63b2
    633e:	00 69 4b             	add    %ch,0x4b(%bx,%di)
    6341:	61                   	popa
    6342:	72 74                	jb     0x63b8
    6344:	20 69 87             	and    %ch,-0x79(%bx,%di)
    6347:	69 6e 20 61 6e       	imul   $0x6e61,0x20(%bp),%bp
    634c:	61                   	popa
    634d:	20 49 2f             	and    %cl,0x2f(%bx,%di)
    6350:	4f                   	dec    %di
    6351:	20 61 64             	and    %ah,0x64(%bx,%di)
    6354:	72 65                	jb     0x63bb
    6356:	73 69                	jae    0x63c1
    6358:	6e                   	outsb  %ds:(%si),(%dx)
    6359:	69 20 73 65          	imul   $0x6573,(%bx,%si),%sp
    635d:	87 69 6e             	xchg   %bp,0x6e(%bx,%di)
    6360:	2e 20 20             	and    %ah,%cs:(%bx,%si)
    6363:	20 20                	and    %ah,(%bx,%si)
    6365:	20 20                	and    %ah,(%bx,%si)
    6367:	20 00                	and    %al,(%bx,%si)
    6369:	64 44                	fs inc %sp
    636b:	4d                   	dec    %bp
    636c:	41                   	inc    %cx
    636d:	20 6b 61             	and    %ch,0x61(%bp,%di)
    6370:	6e                   	outsb  %ds:(%si),(%dx)
    6371:	61                   	popa
    6372:	6c                   	insb   (%dx),%es:(%di)
    6373:	8d 2e 00 49          	lea    0x4900,%bp
    6377:	52                   	push   %dx
    6378:	51                   	push   %cx
    6379:	20 6b 6f             	and    %ch,0x6f(%bp,%di)
    637c:	6e                   	outsb  %ds:(%si),(%dx)
    637d:	74 72                	je     0x63f1
    637f:	6f                   	outsw  %ds:(%si),(%dx)
    6380:	6c                   	insb   (%dx),%es:(%di)
    6381:	6c                   	insb   (%dx),%es:(%di)
    6382:	81 20 44 4d          	andw   $0x4d44,(%bx,%si)
    6386:	41                   	inc    %cx
    6387:	00 20                	add    %ah,(%bx,%si)
    6389:	20 20                	and    %ah,(%bx,%si)
    638b:	20 00                	and    %al,(%bx,%si)
    638d:	0d 27 45             	or     $0x4527,%ax
    6390:	27                   	daa
    6391:	76 65                	jbe    0x63f8
    6393:	74 20                	je     0x63b5
    6395:	73 65                	jae    0x63fc
    6397:	87 65 6e             	xchg   %sp,0x6e(%di)
    639a:	65 a7                	cmpsw  %es:(%di),%gs:(%si)
    639c:	69 6e 69 20 73       	imul   $0x7320,0x69(%bp),%bp
    63a1:	61                   	popa
    63a2:	64 65 63 65 20       	fs arpl %sp,%gs:0x20(%di)
    63a7:	87 6f 6b             	xchg   %bp,0x6b(%bx)
    63aa:	20 65 73             	and    %ah,0x73(%di)
    63ad:	6b 69 20 62          	imul   $0x62,0x20(%bx,%di),%bp
    63b1:	69 72 20 53 42       	imul   $0x4253,0x20(%bp,%si),%si
    63b6:	27                   	daa
    63b7:	79 65                	jns    0x641e
    63b9:	20 73 61             	and    %dh,0x61(%bp,%di)
    63bc:	68 69 70             	push   $0x7069
    63bf:	73 65                	jae    0x6426
    63c1:	6e                   	outsb  %ds:(%si),(%dx)
    63c2:	69 7a 20 79 61       	imul   $0x6179,0x20(%bp,%si),%di
    63c7:	68 75 74             	push   $0x7475
    63ca:	20 73 69             	and    %dh,0x69(%bp,%di)
    63cd:	73 74                	jae    0x6443
    63cf:	65 6d                	gs insw (%dx),%es:(%di)
    63d1:	69 6e 69 7a 20       	imul   $0x207a,0x69(%bp),%bp
    63d6:	61                   	popa
    63d7:	75 74                	jne    0x644d
    63d9:	6f                   	outsw  %ds:(%si),(%dx)
    63da:	69 6e 69 74 20       	imul   $0x2074,0x69(%bp),%bp
    63df:	44                   	inc    %sp
    63e0:	4d                   	dec    %bp
    63e1:	41                   	inc    %cx
    63e2:	20 6d 6f             	and    %ch,0x6f(%di)
    63e5:	64 75 6e             	fs jne 0x6456
    63e8:	64 61                	fs popa
    63ea:	20 87 61 6c          	and    %al,0x6c61(%bx)
    63ee:	8d 9f 6d 61          	lea    0x616d(%bx),%bx
    63f2:	7a 73                	jp     0x6467
    63f4:	61                   	popa
    63f5:	20 73 65             	and    %dh,0x65(%bp,%di)
    63f8:	87 69 6e             	xchg   %bp,0x6e(%bx,%di)
    63fb:	2e 20 49 52          	and    %cl,%cs:0x52(%bx,%di)
    63ff:	51                   	push   %cx
    6400:	20 6b 6f             	and    %ch,0x6f(%bp,%di)
    6403:	6e                   	outsb  %ds:(%si),(%dx)
    6404:	74 72                	je     0x6478
    6406:	6f                   	outsw  %ds:(%si),(%dx)
    6407:	6c                   	insb   (%dx),%es:(%di)
    6408:	6c                   	insb   (%dx),%es:(%di)
    6409:	81 20 44 4d          	andw   $0x4d44,(%bx,%si)
    640d:	41                   	inc    %cx
    640e:	20 73 65             	and    %dh,0x65(%bp,%di)
    6411:	73 6c                	jae    0x647f
    6413:	65 72 64             	gs jb  0x647a
    6416:	65 20 87 8d 74       	and    %al,%gs:0x748d(%bx)
    641b:	8d 72 74             	lea    0x74(%bp,%si),%si
    641e:	8d 6c 61             	lea    0x61(%si),%bp
    6421:	72 61                	jb     0x6484
    6423:	20 73 65             	and    %dh,0x65(%bp,%di)
    6426:	62 65 70             	bound  %sp,0x70(%di)
    6429:	20 6f 6c             	and    %ch,0x6c(%bx)
    642c:	61                   	popa
    642d:	62 69 6c             	bound  %bp,0x6c(%bx,%di)
    6430:	69 72 2e 00 20       	imul   $0x2000,0x2e(%bp,%si),%si
    6435:	74 68                	je     0x649f
    6437:	65 20 73 6f          	and    %dh,%gs:0x6f(%bp,%di)
    643b:	75 6e                	jne    0x64ab
    643d:	64 20 61 6e          	and    %ah,%fs:0x6e(%bx,%di)
    6441:	64 20 73 68          	and    %dh,%fs:0x68(%bp,%di)
    6445:	6f                   	outsw  %ds:(%si),(%dx)
    6446:	75 6c                	jne    0x64b4
    6448:	64 20 62 65          	and    %ah,%fs:0x65(%bp,%si)
    644c:	20 61 76             	and    %ah,0x76(%bx,%di)
    644f:	6f                   	outsw  %ds:(%si),(%dx)
    6450:	69 64 65 64 20       	imul   $0x2064,0x65(%si),%sp
    6455:	69 66 20 70 6f       	imul   $0x6f70,0x20(%bp),%sp
    645a:	73 73                	jae    0x64cf
    645c:	69 62 6c 65 2e       	imul   $0x2e65,0x6c(%bp,%si),%sp
    6461:	00 20                	add    %ah,(%bx,%si)
    6463:	45                   	inc    %bp
    6464:	20 00                	and    %al,(%bx,%si)
    6466:	48                   	dec    %ax
    6467:	20 00                	and    %al,(%bx,%si)
    6469:	61                   	popa
    646a:	49                   	dec    %cx
    646b:	52                   	push   %dx
    646c:	51                   	push   %cx
    646d:	20 73 61             	and    %dh,0x61(%bp,%di)
    6470:	79 8d                	jns    0x63ff
    6472:	73 8d                	jae    0x6401
    6474:	00 42 49             	add    %al,0x49(%bp,%si)
    6477:	52                   	push   %dx
    6478:	51                   	push   %cx
    6479:	20 73 61             	and    %dh,0x61(%bp,%di)
    647c:	64 65 63 65 20       	fs arpl %sp,%gs:0x20(%di)
    6481:	27                   	daa
    6482:	49                   	dec    %cx
    6483:	52                   	push   %dx
    6484:	51                   	push   %cx
    6485:	20 6b 6f             	and    %ch,0x6f(%bp,%di)
    6488:	6e                   	outsb  %ds:(%si),(%dx)
    6489:	74 72                	je     0x64fd
    648b:	6f                   	outsw  %ds:(%si),(%dx)
    648c:	6c                   	insb   (%dx),%es:(%di)
    648d:	6c                   	insb   (%dx),%es:(%di)
    648e:	81 20 44 4d          	andw   $0x4d44,(%bx,%si)
    6492:	41                   	inc    %cx
    6493:	27                   	daa
    6494:	20 73 65             	and    %dh,0x65(%bp,%di)
    6497:	87 65 6e             	xchg   %sp,0x6e(%di)
    649a:	65 a7                	cmpsw  %es:(%di),%gs:(%si)
    649c:	69 6e 65 20 27       	imul   $0x2720,0x65(%bp),%bp
    64a1:	45                   	inc    %bp
    64a2:	27                   	daa
    64a3:	76 65                	jbe    0x650a
    64a5:	74 20                	je     0x64c7
    64a7:	64 65 6e             	fs outsb %gs:(%si),(%dx)
    64aa:	6d                   	insw   (%dx),%es:(%di)
    64ab:	69 9f 73 65 20 67    	imul   $0x6720,0x6573(%bx),%bx
    64b1:	65 72 65             	gs jb  0x6519
    64b4:	6b 6c 69 64          	imul   $0x64,0x69(%si),%bp
    64b8:	69 72 2e 20 41       	imul   $0x4120,0x2e(%bp,%si),%si
    64bd:	6d                   	insw   (%dx),%es:(%di)
    64be:	61                   	popa
    64bf:	20 79 69             	and    %bh,0x69(%bx,%di)
    64c2:	6e                   	outsb  %ds:(%si),(%dx)
    64c3:	65 20 64 65          	and    %ah,%gs:0x65(%si)
    64c7:	20 64 6f             	and    %ah,0x6f(%si)
    64ca:	a7                   	cmpsw  %es:(%di),%ds:(%si)
    64cb:	72 75                	jb     0x6542
    64cd:	20 49 52             	and    %cl,0x52(%bx,%di)
    64d0:	51                   	push   %cx
    64d1:	20 6e 75             	and    %ch,0x75(%bp)
    64d4:	6d                   	insw   (%dx),%es:(%di)
    64d5:	61                   	popa
    64d6:	72 61                	jb     0x6539
    64d8:	73 8d                	jae    0x6467
    64da:	20 73 65             	and    %dh,0x65(%bp,%di)
    64dd:	87 69 6c             	xchg   %bp,0x6c(%bx,%di)
    64e0:	6d                   	insw   (%dx),%es:(%di)
    64e1:	65 6c                	gs insb (%dx),%es:(%di)
    64e3:	69 64 69 72 2e       	imul   $0x2e72,0x69(%si),%sp
    64e8:	20 20                	and    %ah,(%bx,%si)
    64ea:	20 20                	and    %ah,(%bx,%si)
    64ec:	20 20                	and    %ah,(%bx,%si)
    64ee:	20 20                	and    %ah,(%bx,%si)
    64f0:	20 20                	and    %ah,(%bx,%si)
    64f2:	20 20                	and    %ah,(%bx,%si)
    64f4:	20 00                	and    %al,(%bx,%si)
    64f6:	41                   	inc    %cx
    64f7:	6d                   	insw   (%dx),%es:(%di)
    64f8:	70 6c                	jo     0x6566
    64fa:	69 66 69 6b 61       	imul   $0x616b,0x69(%bp),%sp
    64ff:	73 79                	jae    0x657a
    6501:	6f                   	outsw  %ds:(%si),(%dx)
    6502:	6e                   	outsb  %ds:(%si),(%dx)
    6503:	00 45 a7             	add    %al,-0x59(%di)
    6506:	65 72 20             	gs jb  0x6529
    6509:	73 65                	jae    0x6570
    650b:	73 20                	jae    0x652d
    650d:	64 81 7a 65 79 69    	cmpw   $0x6979,%fs:0x65(%bp,%si)
    6513:	20 87 6f 6b          	and    %al,0x6b6f(%bx)
    6517:	20 61 7a             	and    %ah,0x7a(%bx,%di)
    651a:	20 67 94             	and    %ah,-0x6c(%bx)
    651d:	7a 81                	jp     0x64a0
    651f:	6b 81 79 6f 72       	imul   $0x72,0x6f79(%bx,%di),%ax
    6524:	73 61                	jae    0x6587
    6526:	20 76 65             	and    %dh,0x65(%bp)
    6529:	20 62 75             	and    %ah,0x75(%bp,%si)
    652c:	6e                   	outsb  %ds:(%si),(%dx)
    652d:	75 20                	jne    0x654f
    652f:	64 81 7a 65 6c 74    	cmpw   $0x746c,%fs:0x65(%bp,%si)
    6535:	65 6d                	gs insw (%dx),%es:(%di)
    6537:	69 79 6f 72 73       	imul   $0x7372,0x6f(%bx,%di),%di
    653c:	61                   	popa
    653d:	6e                   	outsb  %ds:(%si),(%dx)
    653e:	8d 7a 2c             	lea    0x2c(%bp,%si),%di
    6541:	20 62 75             	and    %ah,0x75(%bp,%si)
    6544:	20 61 6d             	and    %ah,0x6d(%bx,%di)
    6547:	70 6c                	jo     0x65b5
    6549:	69 66 69 6b 61       	imul   $0x616b,0x69(%bp),%sp
    654e:	73 79                	jae    0x65c9
    6550:	6f                   	outsw  %ds:(%si),(%dx)
    6551:	6e                   	outsb  %ds:(%si),(%dx)
    6552:	20 6d 6f             	and    %ch,0x6f(%di)
    6555:	64 6c                	fs insb (%dx),%es:(%di)
    6557:	61                   	popa
    6558:	72 8d                	jb     0x64e7
    655a:	6e                   	outsb  %ds:(%si),(%dx)
    655b:	64 61                	fs popa
    655d:	6e                   	outsb  %ds:(%si),(%dx)
    655e:	20 62 69             	and    %ah,0x69(%bp,%si)
    6561:	72 69                	jb     0x65cc
    6563:	6e                   	outsb  %ds:(%si),(%dx)
    6564:	69 20 64 65          	imul   $0x6564,(%bx,%si),%sp
    6568:	6e                   	outsb  %ds:(%si),(%dx)
    6569:	65 79 65             	gs jns 0x65d1
    656c:	62 69 6c             	bound  %bp,0x6c(%bx,%di)
    656f:	69 72 73 69 6e       	imul   $0x6e69,0x73(%bp,%si),%si
    6574:	69 7a 2e 20 41       	imul   $0x4120,0x2e(%bp,%si),%di
    6579:	75 74                	jne    0x65ef
    657b:	6f                   	outsw  %ds:(%si),(%dx)
    657c:	20 6d 6f             	and    %ch,0x6f(%di)
    657f:	64 75 20             	fs jne 0x65a2
    6582:	61                   	popa
    6583:	6d                   	insw   (%dx),%es:(%di)
    6584:	70 6c                	jo     0x65f2
    6586:	69 66 69 6b 61       	imul   $0x616b,0x69(%bp),%sp
    658b:	73 79                	jae    0x6606
    658d:	6f                   	outsw  %ds:(%si),(%dx)
    658e:	6e                   	outsb  %ds:(%si),(%dx)
    658f:	75 20                	jne    0x65b1
    6591:	73 65                	jae    0x65f8
    6593:	73 20                	jae    0x65b5
    6595:	6b 61 6e 61          	imul   $0x61,0x6e(%bx,%di),%sp
    6599:	6c                   	insb   (%dx),%es:(%di)
    659a:	6c                   	insb   (%dx),%es:(%di)
    659b:	61                   	popa
    659c:	72 8d                	jb     0x652b
    659e:	6e                   	outsb  %ds:(%si),(%dx)
    659f:	8d 6e 20             	lea    0x20(%bp),%bp
    65a2:	73 61                	jae    0x6605
    65a4:	79 8d                	jns    0x6533
    65a6:	73 8d                	jae    0x6535
    65a8:	6e                   	outsb  %ds:(%si),(%dx)
    65a9:	61                   	popa
    65aa:	20 67 94             	and    %ah,-0x6c(%bx)
    65ad:	72 65                	jb     0x6614
    65af:	20 6f 74             	and    %ch,0x74(%bx)
    65b2:	6f                   	outsw  %ds:(%si),(%dx)
    65b3:	6d                   	insw   (%dx),%es:(%di)
    65b4:	61                   	popa
    65b5:	74 69                	je     0x6620
    65b7:	6b 20 6f             	imul   $0x6f,(%bx,%si),%sp
    65ba:	6c                   	insb   (%dx),%es:(%di)
    65bb:	61                   	popa
    65bc:	72 61                	jb     0x661f
    65be:	6b 20 61             	imul   $0x61,(%bx,%si),%sp
    65c1:	79 61                	jns    0x6624
    65c3:	72 6c                	jb     0x6631
    65c5:	61                   	popa
    65c6:	72 2e                	jb     0x65f6
    65c8:	20 41 7a             	and    %al,0x7a(%bx,%di)
    65cb:	20 61 6d             	and    %ah,0x6d(%bx,%di)
    65ce:	70 6c                	jo     0x663c
    65d0:	69 66 69 6b 61       	imul   $0x616b,0x69(%bp),%sp
    65d5:	73 79                	jae    0x6650
    65d7:	6f                   	outsw  %ds:(%si),(%dx)
    65d8:	6e                   	outsb  %ds:(%si),(%dx)
    65d9:	20 61 7a             	and    %ah,0x7a(%bx,%di)
    65dc:	20 62 69             	and    %ah,0x69(%bp,%si)
    65df:	72 20                	jb     0x6601
    65e1:	43                   	inc    %bx
    65e2:	50                   	push   %ax
    65e3:	55                   	push   %bp
    65e4:	20 67 81             	and    %ah,-0x7f(%bx)
    65e7:	63 81 20 68          	arpl   %ax,0x6820(%bx,%di)
    65eb:	61                   	popa
    65ec:	72 63                	jb     0x6651
    65ee:	61                   	popa
    65ef:	72 20                	jb     0x6611
    65f1:	66 61                	popal
    65f3:	6b 61 74 20          	imul   $0x20,0x74(%bx,%di),%sp
    65f7:	62 61 7a             	bound  %sp,0x7a(%bx,%di)
    65fa:	8d 20                	lea    (%bx,%si),%sp
    65fc:	87 8d 74 8d          	xchg   %cx,-0x728c(%di)
    6600:	72 74                	jb     0x6676
    6602:	8d 6c 61             	lea    0x61(%si),%bp
    6605:	72 20                	jb     0x6627
    6607:	64 75 79             	fs jne 0x6683
    660a:	61                   	popa
    660b:	62 69 6c             	bound  %bp,0x6c(%bx,%di)
    660e:	69 72 73 69 6e       	imul   $0x6e69,0x73(%bp,%si),%si
    6613:	69 7a 2e 20 4f       	imul   $0x4f20,0x2e(%bp,%si),%di
    6618:	72 74                	jb     0x668e
    661a:	61                   	popa
    661b:	20 76 65             	and    %dh,0x65(%bp)
    661e:	20 80 6f 6b          	and    %al,0x6b6f(%bx,%si)
    6622:	20 61 6d             	and    %ah,0x6d(%bx,%di)
    6625:	70 6c                	jo     0x6693
    6627:	69 66 69 6b 61       	imul   $0x616b,0x69(%bp),%sp
    662c:	73 79                	jae    0x66a7
    662e:	6f                   	outsw  %ds:(%si),(%dx)
    662f:	6e                   	outsb  %ds:(%si),(%dx)
    6630:	20 6d 6f             	and    %ch,0x6f(%di)
    6633:	64 6c                	fs insb (%dx),%es:(%di)
    6635:	61                   	popa
    6636:	72 8d                	jb     0x65c5
    6638:	20 87 8d 74          	and    %al,0x748d(%bx)
    663c:	8d 72 74             	lea    0x74(%bp,%si),%si
    663f:	8d 6c 61             	lea    0x61(%si),%bp
    6642:	72 8d                	jb     0x65d1
    6644:	20 61 7a             	and    %ah,0x7a(%bx,%di)
    6647:	61                   	popa
    6648:	6c                   	insb   (%dx),%es:(%di)
    6649:	74 8d                	je     0x65d8
    664b:	72 20                	jb     0x666d
    664d:	66 61                	popal
    664f:	6b 61 74 20          	imul   $0x20,0x74(%bx,%di),%sp
    6653:	64 61                	fs popa
    6655:	68 61 20             	push   $0x2061
    6658:	66 61                	popal
    665a:	7a 6c                	jp     0x66c8
    665c:	61                   	popa
    665d:	20 43 50             	and    %al,0x50(%bp,%di)
    6660:	55                   	push   %bp
    6661:	20 67 81             	and    %ah,-0x7f(%bx)
    6664:	63 81 6e 65          	arpl   %ax,0x656e(%bx,%di)
    6668:	20 69 68             	and    %ch,0x68(%bx,%di)
    666b:	74 69                	je     0x66d6
    666d:	79 61                	jns    0x66d0
    666f:	87 20                	xchg   %sp,(%bx,%si)
    6671:	64 75 79             	fs jne 0x66ed
    6674:	61                   	popa
    6675:	72 6c                	jb     0x66e3
    6677:	61                   	popa
    6678:	72 2e                	jb     0x66a8
    667a:	20 20                	and    %ah,(%bx,%si)
    667c:	20 20                	and    %ah,(%bx,%si)
    667e:	20 20                	and    %ah,(%bx,%si)
    6680:	20 20                	and    %ah,(%bx,%si)
    6682:	20 20                	and    %ah,(%bx,%si)
    6684:	20 20                	and    %ah,(%bx,%si)
    6686:	20 20                	and    %ah,(%bx,%si)
    6688:	20 20                	and    %ah,(%bx,%si)
    668a:	20 20                	and    %ah,(%bx,%si)
    668c:	20 20                	and    %ah,(%bx,%si)
    668e:	20 20                	and    %ah,(%bx,%si)
    6690:	20 20                	and    %ah,(%bx,%si)
    6692:	20 20                	and    %ah,(%bx,%si)
    6694:	20 20                	and    %ah,(%bx,%si)
    6696:	20 20                	and    %ah,(%bx,%si)
    6698:	20 20                	and    %ah,(%bx,%si)
    669a:	20 20                	and    %ah,(%bx,%si)
    669c:	20 20                	and    %ah,(%bx,%si)
    669e:	20 20                	and    %ah,(%bx,%si)
    66a0:	20 20                	and    %ah,(%bx,%si)
    66a2:	20 20                	and    %ah,(%bx,%si)
    66a4:	20 20                	and    %ah,(%bx,%si)
    66a6:	20 20                	and    %ah,(%bx,%si)
    66a8:	20 20                	and    %ah,(%bx,%si)
    66aa:	20 20                	and    %ah,(%bx,%si)
    66ac:	20 20                	and    %ah,(%bx,%si)
    66ae:	20 20                	and    %ah,(%bx,%si)
    66b0:	20 20                	and    %ah,(%bx,%si)
    66b2:	20 20                	and    %ah,(%bx,%si)
    66b4:	20 20                	and    %ah,(%bx,%si)
    66b6:	20 20                	and    %ah,(%bx,%si)
    66b8:	20 20                	and    %ah,(%bx,%si)
    66ba:	20 20                	and    %ah,(%bx,%si)
    66bc:	20 20                	and    %ah,(%bx,%si)
    66be:	20 20                	and    %ah,(%bx,%si)
    66c0:	20 20                	and    %ah,(%bx,%si)
    66c2:	20 20                	and    %ah,(%bx,%si)
    66c4:	20 20                	and    %ah,(%bx,%si)
    66c6:	20 20                	and    %ah,(%bx,%si)
    66c8:	00 72 59             	add    %dh,0x59(%bp,%si)
    66cb:	6f                   	outsw  %ds:(%si),(%dx)
    66cc:	6b 20 00             	imul   $0x0,(%bx,%si),%sp
    66cf:	6e                   	outsb  %ds:(%si),(%dx)
    66d0:	41                   	inc    %cx
    66d1:	75 74                	jne    0x6747
    66d3:	6f                   	outsw  %ds:(%si),(%dx)
    66d4:	00 74 41             	add    %dh,0x41(%si)
    66d7:	7a 20                	jp     0x66f9
    66d9:	00 20                	add    %ah,(%bx,%si)
    66db:	4f                   	dec    %di
    66dc:	72 74                	jb     0x6752
    66de:	61                   	popa
    66df:	20 00                	and    %al,(%bx,%si)
    66e1:	6f                   	outsw  %ds:(%si),(%dx)
    66e2:	80 6f 6b 20          	subb   $0x20,0x6b(%bx)
    66e6:	00 69 53             	add    %ch,0x53(%bx,%di)
    66e9:	65 73 20             	gs jae 0x670c
    66ec:	6b 61 6c 69          	imul   $0x69,0x6c(%bx,%di),%sp
    66f0:	74 65                	je     0x6757
    66f2:	73 69                	jae    0x675d
    66f4:	20 00                	and    %al,(%bx,%si)
    66f6:	42                   	inc    %dx
    66f7:	75 20                	jne    0x6719
    66f9:	73 65                	jae    0x6760
    66fb:	87 65 6e             	xchg   %sp,0x6e(%di)
    66fe:	65 6b 20 73          	imul   $0x73,%gs:(%bx,%si),%sp
    6702:	65 73 69             	gs jae 0x676e
    6705:	6e                   	outsb  %ds:(%si),(%dx)
    6706:	20 87 61 6c          	and    %al,0x6c61(%bx)
    670a:	8d 6e 6d             	lea    0x6d(%bp),%bp
    670d:	61                   	popa
    670e:	20 64 75             	and    %ah,0x75(%si)
    6711:	7a 65                	jp     0x6778
    6713:	79 69                	jns    0x677e
    6715:	6e                   	outsb  %ds:(%si),(%dx)
    6716:	69 20 67 94          	imul   $0x9467,(%bx,%si),%sp
    671a:	73 74                	jae    0x6790
    671c:	65 72 69             	gs jb  0x6788
    671f:	72 2e                	jb     0x674f
    6721:	20 4f 72             	and    %cl,0x72(%bx)
    6724:	61                   	popa
    6725:	6e                   	outsb  %ds:(%si),(%dx)
    6726:	20 6e 65             	and    %ch,0x65(%bp)
    6729:	20 6b 61             	and    %ch,0x61(%bp,%di)
    672c:	64 61                	fs popa
    672e:	72 20                	jb     0x6750
    6730:	79 81                	jns    0x66b3
    6732:	6b 73 65 6b          	imul   $0x6b,0x65(%bp,%di),%si
    6736:	73 65                	jae    0x679d
    6738:	20 73 65             	and    %dh,0x65(%bp,%di)
    673b:	73 20                	jae    0x675d
    673d:	6b 61 6c 69          	imul   $0x69,0x6c(%bx,%di),%sp
    6741:	74 65                	je     0x67a8
    6743:	73 69                	jae    0x67ae
    6745:	20 6f 20             	and    %ch,0x20(%bx)
    6748:	6b 61 64 61          	imul   $0x61,0x64(%bx,%di),%sp
    674c:	72 20                	jb     0x676e
    674e:	69 79 69 20 6f       	imul   $0x6f20,0x69(%bx,%di),%di
    6753:	6c                   	insb   (%dx),%es:(%di)
    6754:	75 72                	jne    0x67c8
    6756:	2e 20 41 6d          	and    %al,%cs:0x6d(%bx,%di)
    675a:	61                   	popa
    675b:	20 79 81             	and    %bh,-0x7f(%bx,%di)
    675e:	6b 73 65 6b          	imul   $0x6b,0x65(%bp,%di),%si
    6762:	20 6f 72             	and    %ch,0x72(%bx)
    6765:	61                   	popa
    6766:	6e                   	outsb  %ds:(%si),(%dx)
    6767:	6c                   	insb   (%dx),%es:(%di)
    6768:	61                   	popa
    6769:	72 20                	jb     0x678b
    676b:	64 61                	fs popa
    676d:	68 61 20             	push   $0x2061
    6770:	87 6f 6b             	xchg   %bp,0x6b(%bx)
    6773:	20 73 65             	and    %dh,0x65(%bp,%di)
    6776:	73 20                	jae    0x6798
    6778:	76 65                	jbe    0x67df
    677a:	72 69                	jb     0x67e5
    677c:	73 69                	jae    0x67e7
    677e:	20 69 9f             	and    %ch,-0x61(%bx,%di)
    6781:	6c                   	insb   (%dx),%es:(%di)
    6782:	65 6d                	gs insw (%dx),%es:(%di)
    6784:	69 20 67 65          	imul   $0x6567,(%bx,%si),%sp
    6788:	72 65                	jb     0x67ef
    678a:	6b 74 69 72          	imul   $0x72,0x69(%si),%si
    678e:	64 69 a7 69 6e 64 65 	imul   $0x6564,%fs:0x6e69(%bx),%sp
    6795:	6e                   	outsb  %ds:(%si),(%dx)
    6796:	20 64 61             	and    %ah,0x61(%si)
    6799:	68 61 20             	push   $0x2061
    679c:	87 6f 6b             	xchg   %bp,0x6b(%bx)
    679f:	20 43 50             	and    %al,0x50(%bp,%di)
    67a2:	55                   	push   %bp
    67a3:	20 67 81             	and    %ah,-0x7f(%bx)
    67a6:	63 81 20 69          	arpl   %ax,0x6920(%bx,%di)
    67aa:	73 74                	jae    0x6820
    67ac:	65 72 2e             	gs jb  0x67dd
    67af:	20 20                	and    %ah,(%bx,%si)
    67b1:	20 20                	and    %ah,(%bx,%si)
    67b3:	00 98 79 69          	add    %bl,0x6979(%bx,%si)
    67b7:	20 6b 61             	and    %ch,0x61(%bp,%di)
    67ba:	6c                   	insb   (%dx),%es:(%di)
    67bb:	69 74 65 20 20       	imul   $0x2020,0x65(%si),%si
    67c0:	00 20                	add    %ah,(%bx,%si)
    67c2:	20 20                	and    %ah,(%bx,%si)
    67c4:	4f                   	dec    %di
    67c5:	72 74                	jb     0x683b
    67c7:	61                   	popa
    67c8:	20 6b 61             	and    %ch,0x61(%bp,%di)
    67cb:	6c                   	insb   (%dx),%es:(%di)
    67cc:	69 74 65 20 20       	imul   $0x2020,0x65(%si),%si
    67d1:	00 4b 94             	add    %cl,-0x6c(%bp,%di)
    67d4:	74 81                	je     0x6757
    67d6:	20 6b 61             	and    %ch,0x61(%bp,%di)
    67d9:	6c                   	insb   (%dx),%es:(%di)
    67da:	69 74 65 00 53       	imul   $0x5300,0x65(%si),%si
    67df:	6f                   	outsw  %ds:(%si),(%dx)
    67e0:	75 6e                	jne    0x6850
    67e2:	64 20 42 6c          	and    %al,%fs:0x6c(%bp,%si)
    67e6:	61                   	popa
    67e7:	73 74                	jae    0x685d
    67e9:	65 72 20             	gs jb  0x680c
    67ec:	50                   	push   %ax
    67ed:	72 6f                	jb     0x685e
    67ef:	20 73 81             	and    %dh,-0x7f(%bp,%di)
    67f2:	72 81                	jb     0x6775
    67f4:	63 81 00 65          	arpl   %ax,0x6500(%bx,%di)
    67f8:	53                   	push   %bx
    67f9:	6f                   	outsw  %ds:(%si),(%dx)
    67fa:	75 6e                	jne    0x686a
    67fc:	64 20 42 6c          	and    %al,%fs:0x6c(%bp,%si)
    6800:	61                   	popa
    6801:	73 74                	jae    0x6877
    6803:	65 72 20             	gs jb  0x6826
    6806:	50                   	push   %ax
    6807:	72 6f                	jb     0x6878
    6809:	20 73 81             	and    %dh,-0x7f(%bp,%di)
    680c:	72 81                	jb     0x678f
    680e:	63 81 2e 20          	arpl   %ax,0x202e(%bx,%di)
    6812:	25 31 30             	and    $0x3031,%ax
    6815:	30 20                	xor    %ah,(%bx,%si)
    6817:	53                   	push   %bx
    6818:	42                   	inc    %dx
    6819:	20 50 72             	and    %dl,0x72(%bx,%si)
    681c:	6f                   	outsw  %ds:(%si),(%dx)
    681d:	20 75 79             	and    %dh,0x79(%di)
    6820:	75 6d                	jne    0x688f
    6822:	6c                   	insb   (%dx),%es:(%di)
    6823:	75 20                	jne    0x6845
    6825:	74 81                	je     0x67a8
    6827:	6d                   	insw   (%dx),%es:(%di)
    6828:	20 6b 61             	and    %ch,0x61(%bp,%di)
    682b:	72 74                	jb     0x68a1
    682d:	6c                   	insb   (%dx),%es:(%di)
    682e:	61                   	popa
    682f:	72 8d                	jb     0x67be
    6831:	20 64 65             	and    %ah,0x65(%si)
    6834:	73 74                	jae    0x68aa
    6836:	65 6b 6c 65 72       	imul   $0x72,%gs:0x65(%si),%bp
    683b:	2e 20 46 61          	and    %al,%cs:0x61(%bp)
    683f:	6b 61 74 20          	imul   $0x20,0x74(%bx,%di),%sp
    6843:	62 61 7a             	bound  %sp,0x7a(%bx,%di)
    6846:	8d 20                	lea    (%bx,%si),%sp
    6848:	75 79                	jne    0x68c3
    684a:	75 6d                	jne    0x68b9
    684c:	6c                   	insb   (%dx),%es:(%di)
    684d:	75 20                	jne    0x686f
    684f:	6b 61 72 74          	imul   $0x74,0x72(%bx,%di),%sp
    6853:	6c                   	insb   (%dx),%es:(%di)
    6854:	61                   	popa
    6855:	72 20                	jb     0x6877
    6857:	73 74                	jae    0x68cd
    6859:	65 72 65             	gs jb  0x68c1
    685c:	6f                   	outsw  %ds:(%si),(%dx)
    685d:	20 6d 6f             	and    %ch,0x6f(%di)
    6860:	64 75 6e             	fs jne 0x68d1
    6863:	64 61                	fs popa
    6865:	20 75 79             	and    %dh,0x79(%di)
    6868:	75 6d                	jne    0x68d7
    686a:	73 75                	jae    0x68e1
    686c:	7a 6c                	jp     0x68da
    686e:	75 6b                	jne    0x68db
    6870:	20 67 94             	and    %ah,-0x6c(%bx)
    6873:	73 74                	jae    0x68e9
    6875:	65 72 65             	gs jb  0x68dd
    6878:	62 69 6c             	bound  %bp,0x6c(%bx,%di)
    687b:	69 72 6c 65 72       	imul   $0x7265,0x6c(%bp,%si),%si
    6880:	2e 20 20             	and    %ah,%cs:(%bx,%si)
    6883:	20 00                	and    %al,(%bx,%si)
    6885:	65 4b                	gs dec %bx
    6887:	61                   	popa
    6888:	72 74                	jb     0x68fe
    688a:	20 69 87             	and    %ch,-0x79(%bx,%di)
    688d:	69 6e 20 61 6e       	imul   $0x6e61,0x20(%bp),%bp
    6892:	61                   	popa
    6893:	20 49 2f             	and    %cl,0x2f(%bx,%di)
    6896:	4f                   	dec    %di
    6897:	20 61 64             	and    %ah,0x64(%bx,%di)
    689a:	72 65                	jb     0x6901
    689c:	73 69                	jae    0x6907
    689e:	6e                   	outsb  %ds:(%si),(%dx)
    689f:	69 20 73 65          	imul   $0x6573,(%bx,%si),%sp
    68a3:	87 69 6e             	xchg   %bp,0x6e(%bx,%di)
    68a6:	2e 20 20             	and    %ah,%cs:(%bx,%si)
    68a9:	20 20                	and    %ah,(%bx,%si)
    68ab:	20 20                	and    %ah,(%bx,%si)
    68ad:	20 00                	and    %al,(%bx,%si)
    68af:	69 27 45 27          	imul   $0x2745,(%bx),%sp
    68b3:	76 65                	jbe    0x691a
    68b5:	74 20                	je     0x68d7
    68b7:	73 65                	jae    0x691e
    68b9:	87 65 6e             	xchg   %sp,0x6e(%di)
    68bc:	65 a7                	cmpsw  %es:(%di),%gs:(%si)
    68be:	69 6e 69 20 73       	imul   $0x7320,0x69(%bp),%bp
    68c3:	61                   	popa
    68c4:	64 65 63 65 20       	fs arpl %sp,%gs:0x20(%di)
    68c9:	73 69                	jae    0x6934
    68cb:	73 74                	jae    0x6941
    68cd:	65 6d                	gs insw (%dx),%es:(%di)
    68cf:	69 6e 69 7a 20       	imul   $0x207a,0x69(%bp),%bp
    68d4:	61                   	popa
    68d5:	75 74                	jne    0x694b
    68d7:	6f                   	outsw  %ds:(%si),(%dx)
    68d8:	69 6e 69 74 20       	imul   $0x2074,0x69(%bp),%bp
    68dd:	44                   	inc    %sp
    68de:	4d                   	dec    %bp
    68df:	41                   	inc    %cx
    68e0:	20 6d 6f             	and    %ch,0x6f(%di)
    68e3:	64 75 6e             	fs jne 0x6954
    68e6:	64 61                	fs popa
    68e8:	20 87 61 6c          	and    %al,0x6c61(%bx)
    68ec:	8d 9f 6d 61          	lea    0x616d(%bx),%bx
    68f0:	7a 73                	jp     0x6965
    68f2:	61                   	popa
    68f3:	20 73 65             	and    %dh,0x65(%bp,%di)
    68f6:	87 69 6e             	xchg   %bp,0x6e(%bx,%di)
    68f9:	2e 20 49 52          	and    %cl,%cs:0x52(%bx,%di)
    68fd:	51                   	push   %cx
    68fe:	20 6b 6f             	and    %ch,0x6f(%bp,%di)
    6901:	6e                   	outsb  %ds:(%si),(%dx)
    6902:	74 72                	je     0x6976
    6904:	6f                   	outsw  %ds:(%si),(%dx)
    6905:	6c                   	insb   (%dx),%es:(%di)
    6906:	6c                   	insb   (%dx),%es:(%di)
    6907:	81 20 44 4d          	andw   $0x4d44,(%bx,%si)
    690b:	41                   	inc    %cx
    690c:	20 73 65             	and    %dh,0x65(%bp,%di)
    690f:	73 6c                	jae    0x697d
    6911:	65 72 64             	gs jb  0x6978
    6914:	65 20 87 8d 74       	and    %al,%gs:0x748d(%bx)
    6919:	8d 72 74             	lea    0x74(%bp,%si),%si
    691c:	8d 6c 61             	lea    0x61(%si),%bp
    691f:	72 61                	jb     0x6982
    6921:	20 73 65             	and    %dh,0x65(%bp,%di)
    6924:	62 65 70             	bound  %sp,0x70(%di)
    6927:	20 6f 6c             	and    %ch,0x6c(%bx)
    692a:	61                   	popa
    692b:	62 69 6c             	bound  %bp,0x6c(%bx,%di)
    692e:	69 72 2e 20 20       	imul   $0x2020,0x2e(%bp,%si),%si
    6933:	20 20                	and    %ah,(%bx,%si)
    6935:	20 20                	and    %ah,(%bx,%si)
    6937:	20 20                	and    %ah,(%bx,%si)
    6939:	20 20                	and    %ah,(%bx,%si)
    693b:	20 20                	and    %ah,(%bx,%si)
    693d:	20 20                	and    %ah,(%bx,%si)
    693f:	20 20                	and    %ah,(%bx,%si)
    6941:	20 20                	and    %ah,(%bx,%si)
    6943:	20 20                	and    %ah,(%bx,%si)
    6945:	20 20                	and    %ah,(%bx,%si)
    6947:	20 20                	and    %ah,(%bx,%si)
    6949:	20 20                	and    %ah,(%bx,%si)
    694b:	20 20                	and    %ah,(%bx,%si)
    694d:	20 20                	and    %ah,(%bx,%si)
    694f:	20 20                	and    %ah,(%bx,%si)
    6951:	00 49 52             	add    %cl,0x52(%bx,%di)
    6954:	51                   	push   %cx
    6955:	20 73 61             	and    %dh,0x61(%bp,%di)
    6958:	64 65 63 65 20       	fs arpl %sp,%gs:0x20(%di)
    695d:	27                   	daa
    695e:	49                   	dec    %cx
    695f:	52                   	push   %dx
    6960:	51                   	push   %cx
    6961:	20 6b 6f             	and    %ch,0x6f(%bp,%di)
    6964:	6e                   	outsb  %ds:(%si),(%dx)
    6965:	74 72                	je     0x69d9
    6967:	6f                   	outsw  %ds:(%si),(%dx)
    6968:	6c                   	insb   (%dx),%es:(%di)
    6969:	6c                   	insb   (%dx),%es:(%di)
    696a:	75 20                	jne    0x698c
    696c:	44                   	inc    %sp
    696d:	4d                   	dec    %bp
    696e:	41                   	inc    %cx
    696f:	27                   	daa
    6970:	20 73 65             	and    %dh,0x65(%bp,%di)
    6973:	87 65 6e             	xchg   %sp,0x6e(%di)
    6976:	65 67 69 20 69 87    	imul   $0x8769,%gs:(%eax),%sp
    697c:	69 6e 20 67 65       	imul   $0x6567,0x20(%bp),%bp
    6981:	72 65                	jb     0x69e8
    6983:	6b 6c 69 64          	imul   $0x64,0x69(%si),%bp
    6987:	69 72 00 45 a7       	imul   $0xa745,0x0(%bp,%si),%si
    698c:	65 72 20             	gs jb  0x69af
    698f:	73 65                	jae    0x69f6
    6991:	73 20                	jae    0x69b3
    6993:	64 81 7a 65 79 69    	cmpw   $0x6979,%fs:0x65(%bp,%si)
    6999:	20 87 6f 6b          	and    %al,0x6b6f(%bx)
    699d:	20 61 7a             	and    %ah,0x7a(%bx,%di)
    69a0:	20 67 94             	and    %ah,-0x6c(%bx)
    69a3:	7a 81                	jp     0x6926
    69a5:	6b 81 79 6f 72       	imul   $0x72,0x6f79(%bx,%di),%ax
    69aa:	73 61                	jae    0x6a0d
    69ac:	20 76 65             	and    %dh,0x65(%bp)
    69af:	20 62 75             	and    %ah,0x75(%bp,%si)
    69b2:	6e                   	outsb  %ds:(%si),(%dx)
    69b3:	75 20                	jne    0x69d5
    69b5:	64 81 7a 65 6c 74    	cmpw   $0x746c,%fs:0x65(%bp,%si)
    69bb:	65 6d                	gs insw (%dx),%es:(%di)
    69bd:	69 79 6f 72 73       	imul   $0x7372,0x6f(%bx,%di),%di
    69c2:	61                   	popa
    69c3:	6e                   	outsb  %ds:(%si),(%dx)
    69c4:	8d 7a 2c             	lea    0x2c(%bp,%si),%di
    69c7:	20 62 75             	and    %ah,0x75(%bp,%si)
    69ca:	20 61 6d             	and    %ah,0x6d(%bx,%di)
    69cd:	70 6c                	jo     0x6a3b
    69cf:	69 66 69 6b 61       	imul   $0x616b,0x69(%bp),%sp
    69d4:	73 79                	jae    0x6a4f
    69d6:	6f                   	outsw  %ds:(%si),(%dx)
    69d7:	6e                   	outsb  %ds:(%si),(%dx)
    69d8:	20 6d 6f             	and    %ch,0x6f(%di)
    69db:	64 6c                	fs insb (%dx),%es:(%di)
    69dd:	61                   	popa
    69de:	72 8d                	jb     0x696d
    69e0:	6e                   	outsb  %ds:(%si),(%dx)
    69e1:	64 61                	fs popa
    69e3:	6e                   	outsb  %ds:(%si),(%dx)
    69e4:	20 62 69             	and    %ah,0x69(%bp,%si)
    69e7:	72 69                	jb     0x6a52
    69e9:	6e                   	outsb  %ds:(%si),(%dx)
    69ea:	69 20 64 65          	imul   $0x6564,(%bx,%si),%sp
    69ee:	6e                   	outsb  %ds:(%si),(%dx)
    69ef:	65 79 65             	gs jns 0x6a57
    69f2:	62 69 6c             	bound  %bp,0x6c(%bx,%di)
    69f5:	69 72 73 69 6e       	imul   $0x6e69,0x73(%bp,%si),%si
    69fa:	69 7a 2e 20 41       	imul   $0x4120,0x2e(%bp,%si),%di
    69ff:	75 74                	jne    0x6a75
    6a01:	6f                   	outsw  %ds:(%si),(%dx)
    6a02:	20 6d 6f             	and    %ch,0x6f(%di)
    6a05:	64 75 20             	fs jne 0x6a28
    6a08:	61                   	popa
    6a09:	6d                   	insw   (%dx),%es:(%di)
    6a0a:	70 6c                	jo     0x6a78
    6a0c:	69 66 69 6b 61       	imul   $0x616b,0x69(%bp),%sp
    6a11:	73 79                	jae    0x6a8c
    6a13:	6f                   	outsw  %ds:(%si),(%dx)
    6a14:	6e                   	outsb  %ds:(%si),(%dx)
    6a15:	75 20                	jne    0x6a37
    6a17:	73 65                	jae    0x6a7e
    6a19:	73 20                	jae    0x6a3b
    6a1b:	6b 61 6e 61          	imul   $0x61,0x6e(%bx,%di),%sp
    6a1f:	6c                   	insb   (%dx),%es:(%di)
    6a20:	6c                   	insb   (%dx),%es:(%di)
    6a21:	61                   	popa
    6a22:	72 8d                	jb     0x69b1
    6a24:	6e                   	outsb  %ds:(%si),(%dx)
    6a25:	8d 6e 20             	lea    0x20(%bp),%bp
    6a28:	73 61                	jae    0x6a8b
    6a2a:	79 8d                	jns    0x69b9
    6a2c:	73 8d                	jae    0x69bb
    6a2e:	6e                   	outsb  %ds:(%si),(%dx)
    6a2f:	61                   	popa
    6a30:	20 67 94             	and    %ah,-0x6c(%bx)
    6a33:	72 65                	jb     0x6a9a
    6a35:	20 6f 74             	and    %ch,0x74(%bx)
    6a38:	6f                   	outsw  %ds:(%si),(%dx)
    6a39:	6d                   	insw   (%dx),%es:(%di)
    6a3a:	61                   	popa
    6a3b:	74 69                	je     0x6aa6
    6a3d:	6b 20 6f             	imul   $0x6f,(%bx,%si),%sp
    6a40:	6c                   	insb   (%dx),%es:(%di)
    6a41:	61                   	popa
    6a42:	72 61                	jb     0x6aa5
    6a44:	6b 20 61             	imul   $0x61,(%bx,%si),%sp
    6a47:	79 61                	jns    0x6aaa
    6a49:	72 6c                	jb     0x6ab7
    6a4b:	61                   	popa
    6a4c:	72 2e                	jb     0x6a7c
    6a4e:	20 41 7a             	and    %al,0x7a(%bx,%di)
    6a51:	20 61 6d             	and    %ah,0x6d(%bx,%di)
    6a54:	70 6c                	jo     0x6ac2
    6a56:	69 66 69 6b 61       	imul   $0x616b,0x69(%bp),%sp
    6a5b:	73 79                	jae    0x6ad6
    6a5d:	6f                   	outsw  %ds:(%si),(%dx)
    6a5e:	6e                   	outsb  %ds:(%si),(%dx)
    6a5f:	20 61 7a             	and    %ah,0x7a(%bx,%di)
    6a62:	20 62 69             	and    %ah,0x69(%bp,%si)
    6a65:	72 20                	jb     0x6a87
    6a67:	43                   	inc    %bx
    6a68:	50                   	push   %ax
    6a69:	55                   	push   %bp
    6a6a:	20 67 81             	and    %ah,-0x7f(%bx)
    6a6d:	63 81 20 68          	arpl   %ax,0x6820(%bx,%di)
    6a71:	61                   	popa
    6a72:	72 63                	jb     0x6ad7
    6a74:	61                   	popa
    6a75:	72 20                	jb     0x6a97
    6a77:	66 61                	popal
    6a79:	6b 61 74 20          	imul   $0x20,0x74(%bx,%di),%sp
    6a7d:	62 61 7a             	bound  %sp,0x7a(%bx,%di)
    6a80:	8d 20                	lea    (%bx,%si),%sp
    6a82:	87 8d 74 8d          	xchg   %cx,-0x728c(%di)
    6a86:	72 74                	jb     0x6afc
    6a88:	8d 6c 61             	lea    0x61(%si),%bp
    6a8b:	72 20                	jb     0x6aad
    6a8d:	64 75 79             	fs jne 0x6b09
    6a90:	61                   	popa
    6a91:	62 69 6c             	bound  %bp,0x6c(%bx,%di)
    6a94:	69 72 73 69 6e       	imul   $0x6e69,0x73(%bp,%si),%si
    6a99:	69 7a 2e 20 4f       	imul   $0x4f20,0x2e(%bp,%si),%di
    6a9e:	72 74                	jb     0x6b14
    6aa0:	61                   	popa
    6aa1:	20 76 65             	and    %dh,0x65(%bp)
    6aa4:	20 80 6f 6b          	and    %al,0x6b6f(%bx,%si)
    6aa8:	20 61 6d             	and    %ah,0x6d(%bx,%di)
    6aab:	70 6c                	jo     0x6b19
    6aad:	69 66 69 6b 61       	imul   $0x616b,0x69(%bp),%sp
    6ab2:	73 79                	jae    0x6b2d
    6ab4:	6f                   	outsw  %ds:(%si),(%dx)
    6ab5:	6e                   	outsb  %ds:(%si),(%dx)
    6ab6:	20 6d 6f             	and    %ch,0x6f(%di)
    6ab9:	64 6c                	fs insb (%dx),%es:(%di)
    6abb:	61                   	popa
    6abc:	72 8d                	jb     0x6a4b
    6abe:	20 87 8d 74          	and    %al,0x748d(%bx)
    6ac2:	8d 72 74             	lea    0x74(%bp,%si),%si
    6ac5:	8d 6c 61             	lea    0x61(%si),%bp
    6ac8:	72 8d                	jb     0x6a57
    6aca:	20 61 7a             	and    %ah,0x7a(%bx,%di)
    6acd:	61                   	popa
    6ace:	6c                   	insb   (%dx),%es:(%di)
    6acf:	74 8d                	je     0x6a5e
    6ad1:	72 20                	jb     0x6af3
    6ad3:	66 61                	popal
    6ad5:	6b 61 74 20          	imul   $0x20,0x74(%bx,%di),%sp
    6ad9:	64 61                	fs popa
    6adb:	68 61 20             	push   $0x2061
    6ade:	66 61                	popal
    6ae0:	7a 6c                	jp     0x6b4e
    6ae2:	61                   	popa
    6ae3:	20 43 50             	and    %al,0x50(%bp,%di)
    6ae6:	55                   	push   %bp
    6ae7:	20 67 81             	and    %ah,-0x7f(%bx)
    6aea:	63 81 6e 65          	arpl   %ax,0x656e(%bx,%di)
    6aee:	20 69 68             	and    %ch,0x68(%bx,%di)
    6af1:	74 69                	je     0x6b5c
    6af3:	79 61                	jns    0x6b56
    6af5:	87 20                	xchg   %sp,(%bx,%si)
    6af7:	64 75 79             	fs jne 0x6b73
    6afa:	61                   	popa
    6afb:	72 6c                	jb     0x6b69
    6afd:	61                   	popa
    6afe:	72 2e                	jb     0x6b2e
    6b00:	20 20                	and    %ah,(%bx,%si)
    6b02:	20 20                	and    %ah,(%bx,%si)
    6b04:	20 20                	and    %ah,(%bx,%si)
    6b06:	20 20                	and    %ah,(%bx,%si)
    6b08:	20 20                	and    %ah,(%bx,%si)
    6b0a:	20 20                	and    %ah,(%bx,%si)
    6b0c:	20 20                	and    %ah,(%bx,%si)
    6b0e:	20 20                	and    %ah,(%bx,%si)
    6b10:	20 20                	and    %ah,(%bx,%si)
    6b12:	20 20                	and    %ah,(%bx,%si)
    6b14:	20 20                	and    %ah,(%bx,%si)
    6b16:	20 20                	and    %ah,(%bx,%si)
    6b18:	20 20                	and    %ah,(%bx,%si)
    6b1a:	20 20                	and    %ah,(%bx,%si)
    6b1c:	20 20                	and    %ah,(%bx,%si)
    6b1e:	20 20                	and    %ah,(%bx,%si)
    6b20:	20 20                	and    %ah,(%bx,%si)
    6b22:	20 20                	and    %ah,(%bx,%si)
    6b24:	20 20                	and    %ah,(%bx,%si)
    6b26:	20 20                	and    %ah,(%bx,%si)
    6b28:	20 20                	and    %ah,(%bx,%si)
    6b2a:	20 20                	and    %ah,(%bx,%si)
    6b2c:	20 20                	and    %ah,(%bx,%si)
    6b2e:	20 20                	and    %ah,(%bx,%si)
    6b30:	20 20                	and    %ah,(%bx,%si)
    6b32:	20 20                	and    %ah,(%bx,%si)
    6b34:	20 20                	and    %ah,(%bx,%si)
    6b36:	20 20                	and    %ah,(%bx,%si)
    6b38:	20 20                	and    %ah,(%bx,%si)
    6b3a:	20 20                	and    %ah,(%bx,%si)
    6b3c:	20 20                	and    %ah,(%bx,%si)
    6b3e:	20 20                	and    %ah,(%bx,%si)
    6b40:	20 20                	and    %ah,(%bx,%si)
    6b42:	20 20                	and    %ah,(%bx,%si)
    6b44:	20 20                	and    %ah,(%bx,%si)
    6b46:	20 20                	and    %ah,(%bx,%si)
    6b48:	20 20                	and    %ah,(%bx,%si)
    6b4a:	20 20                	and    %ah,(%bx,%si)
    6b4c:	20 20                	and    %ah,(%bx,%si)
    6b4e:	00 72 53             	add    %dh,0x53(%bp,%si)
    6b51:	65 73 20             	gs jae 0x6b74
    6b54:	74 69                	je     0x6bbf
    6b56:	70 69                	jo     0x6bc1
    6b58:	20 20                	and    %ah,(%bx,%si)
    6b5a:	00 74 53             	add    %dh,0x53(%si)
    6b5d:	74 65                	je     0x6bc4
    6b5f:	72 65                	jb     0x6bc6
    6b61:	6f                   	outsw  %ds:(%si),(%dx)
    6b62:	20 76 65             	and    %dh,0x65(%bp)
    6b65:	79 61                	jns    0x6bc8
    6b67:	20 6d 6f             	and    %ch,0x6f(%di)
    6b6a:	6e                   	outsb  %ds:(%si),(%dx)
    6b6b:	6f                   	outsw  %ds:(%si),(%dx)
    6b6c:	20 73 65             	and    %dh,0x65(%bp,%di)
    6b6f:	87 69 6e             	xchg   %bp,0x6e(%bx,%di)
    6b72:	2e 20 4d 6f          	and    %cl,%cs:0x6f(%di)
    6b76:	6e                   	outsb  %ds:(%si),(%dx)
    6b77:	6f                   	outsw  %ds:(%si),(%dx)
    6b78:	20 73 65             	and    %dh,0x65(%bp,%di)
    6b7b:	73 20                	jae    0x6b9d
    6b7d:	64 61                	fs popa
    6b7f:	68 61 20             	push   $0x2061
    6b82:	69 79 69 20 70       	imul   $0x7020,0x69(%bx,%di),%di
    6b87:	65 72 66             	gs jb  0x6bf0
    6b8a:	6f                   	outsw  %ds:(%si),(%dx)
    6b8b:	72 6d                	jb     0x6bfa
    6b8d:	61                   	popa
    6b8e:	6e                   	outsb  %ds:(%si),(%dx)
    6b8f:	73 20                	jae    0x6bb1
    6b91:	67 94                	addr32 xchg %ax,%sp
    6b93:	73 74                	jae    0x6c09
    6b95:	65 72 69             	gs jb  0x6c01
    6b98:	72 20                	jb     0x6bba
    6b9a:	66 61                	popal
    6b9c:	6b 61 74 20          	imul   $0x20,0x74(%bx,%di),%sp
    6ba0:	73 74                	jae    0x6c16
    6ba2:	65 72 65             	gs jb  0x6c0a
    6ba5:	6f                   	outsw  %ds:(%si),(%dx)
    6ba6:	20 73 65             	and    %dh,0x65(%bp,%di)
    6ba9:	73 20                	jae    0x6bcb
    6bab:	65 66 65 6b 74 6c 65 	gs imul $0x65,%gs:0x6c(%si),%esi
    6bb2:	72 69                	jb     0x6c1d
    6bb4:	20 76 65             	and    %dh,0x65(%bp)
    6bb7:	79 61                	jns    0x6c1a
    6bb9:	20 27                	and    %ah,(%bx)
    6bbb:	73 75                	jae    0x6c32
    6bbd:	72 72                	jb     0x6c31
    6bbf:	6f                   	outsw  %ds:(%si),(%dx)
    6bc0:	75 6e                	jne    0x6c30
    6bc2:	64 27                	fs daa
    6bc4:	20 6d 81             	and    %ch,-0x7f(%di)
    6bc7:	7a 69                	jp     0x6c32
    6bc9:	a7                   	cmpsw  %es:(%di),%ds:(%si)
    6bca:	69 20 64 69          	imul   $0x6964,(%bx,%si),%sp
    6bce:	6e                   	outsb  %ds:(%si),(%dx)
    6bcf:	6c                   	insb   (%dx),%es:(%di)
    6bd0:	65 79 65             	gs jns 0x6c38
    6bd3:	6d                   	insw   (%dx),%es:(%di)
    6bd4:	65 7a 73             	gs jp  0x6c4a
    6bd7:	69 6e 69 7a 2e       	imul   $0x2e7a,0x69(%bp),%bp
    6bdc:	20 20                	and    %ah,(%bx,%si)
    6bde:	20 20                	and    %ah,(%bx,%si)
    6be0:	20 20                	and    %ah,(%bx,%si)
    6be2:	20 20                	and    %ah,(%bx,%si)
    6be4:	20 20                	and    %ah,(%bx,%si)
    6be6:	20 20                	and    %ah,(%bx,%si)
    6be8:	20 20                	and    %ah,(%bx,%si)
    6bea:	20 20                	and    %ah,(%bx,%si)
    6bec:	20 20                	and    %ah,(%bx,%si)
    6bee:	20 20                	and    %ah,(%bx,%si)
    6bf0:	20 20                	and    %ah,(%bx,%si)
    6bf2:	20 20                	and    %ah,(%bx,%si)
    6bf4:	20 20                	and    %ah,(%bx,%si)
    6bf6:	20 20                	and    %ah,(%bx,%si)
    6bf8:	20 20                	and    %ah,(%bx,%si)
    6bfa:	20 20                	and    %ah,(%bx,%si)
    6bfc:	20 20                	and    %ah,(%bx,%si)
    6bfe:	20 00                	and    %al,(%bx,%si)
    6c00:	53                   	push   %bx
    6c01:	74 65                	je     0x6c68
    6c03:	72 65                	jb     0x6c6a
    6c05:	6f                   	outsw  %ds:(%si),(%dx)
    6c06:	00 77 4d             	add    %dh,0x4d(%bx)
    6c09:	6f                   	outsw  %ds:(%si),(%dx)
    6c0a:	6e                   	outsb  %ds:(%si),(%dx)
    6c0b:	6f                   	outsw  %ds:(%si),(%dx)
    6c0c:	00 53 42             	add    %dl,0x42(%bp,%di)
    6c0f:	75 20                	jne    0x6c31
    6c11:	73 65                	jae    0x6c78
    6c13:	87 65 6e             	xchg   %sp,0x6e(%di)
    6c16:	65 6b 20 73          	imul   $0x73,%gs:(%bx,%si),%sp
    6c1a:	65 73 69             	gs jae 0x6c86
    6c1d:	6e                   	outsb  %ds:(%si),(%dx)
    6c1e:	20 87 61 6c          	and    %al,0x6c61(%bx)
    6c22:	8d 6e 6d             	lea    0x6d(%bp),%bp
    6c25:	61                   	popa
    6c26:	20 64 75             	and    %ah,0x75(%si)
    6c29:	7a 65                	jp     0x6c90
    6c2b:	79 69                	jns    0x6c96
    6c2d:	6e                   	outsb  %ds:(%si),(%dx)
    6c2e:	69 20 67 94          	imul   $0x9467,(%bx,%si),%sp
    6c32:	73 74                	jae    0x6ca8
    6c34:	65 72 69             	gs jb  0x6ca0
    6c37:	72 2e                	jb     0x6c67
    6c39:	20 4f 72             	and    %cl,0x72(%bx)
    6c3c:	61                   	popa
    6c3d:	6e                   	outsb  %ds:(%si),(%dx)
    6c3e:	20 6e 65             	and    %ch,0x65(%bp)
    6c41:	20 6b 61             	and    %ch,0x61(%bp,%di)
    6c44:	64 61                	fs popa
    6c46:	72 20                	jb     0x6c68
    6c48:	79 81                	jns    0x6bcb
    6c4a:	6b 73 65 6b          	imul   $0x6b,0x65(%bp,%di),%si
    6c4e:	73 65                	jae    0x6cb5
    6c50:	20 73 65             	and    %dh,0x65(%bp,%di)
    6c53:	73 20                	jae    0x6c75
    6c55:	6b 61 6c 69          	imul   $0x69,0x6c(%bx,%di),%sp
    6c59:	74 65                	je     0x6cc0
    6c5b:	73 69                	jae    0x6cc6
    6c5d:	20 6f 20             	and    %ch,0x20(%bx)
    6c60:	6b 61 64 61          	imul   $0x61,0x64(%bx,%di),%sp
    6c64:	72 20                	jb     0x6c86
    6c66:	69 79 69 20 6f       	imul   $0x6f20,0x69(%bx,%di),%di
    6c6b:	6c                   	insb   (%dx),%es:(%di)
    6c6c:	75 72                	jne    0x6ce0
    6c6e:	2e 20 41 6d          	and    %al,%cs:0x6d(%bx,%di)
    6c72:	61                   	popa
    6c73:	20 79 81             	and    %bh,-0x7f(%bx,%di)
    6c76:	6b 73 65 6b          	imul   $0x6b,0x65(%bp,%di),%si
    6c7a:	20 6f 72             	and    %ch,0x72(%bx)
    6c7d:	61                   	popa
    6c7e:	6e                   	outsb  %ds:(%si),(%dx)
    6c7f:	6c                   	insb   (%dx),%es:(%di)
    6c80:	61                   	popa
    6c81:	72 20                	jb     0x6ca3
    6c83:	64 61                	fs popa
    6c85:	68 61 20             	push   $0x2061
    6c88:	87 6f 6b             	xchg   %bp,0x6b(%bx)
    6c8b:	20 73 65             	and    %dh,0x65(%bp,%di)
    6c8e:	73 20                	jae    0x6cb0
    6c90:	76 65                	jbe    0x6cf7
    6c92:	72 69                	jb     0x6cfd
    6c94:	73 69                	jae    0x6cff
    6c96:	20 69 9f             	and    %ch,-0x61(%bx,%di)
    6c99:	6c                   	insb   (%dx),%es:(%di)
    6c9a:	65 6d                	gs insw (%dx),%es:(%di)
    6c9c:	69 20 67 65          	imul   $0x6567,(%bx,%si),%sp
    6ca0:	72 65                	jb     0x6d07
    6ca2:	6b 74 69 72          	imul   $0x72,0x69(%si),%si
    6ca6:	64 69 a7 69 6e 64 65 	imul   $0x6564,%fs:0x6e69(%bx),%sp
    6cad:	6e                   	outsb  %ds:(%si),(%dx)
    6cae:	20 64 61             	and    %ah,0x61(%si)
    6cb1:	68 61 20             	push   $0x2061
    6cb4:	87 6f 6b             	xchg   %bp,0x6b(%bx)
    6cb7:	20 43 50             	and    %al,0x50(%bp,%di)
    6cba:	55                   	push   %bp
    6cbb:	20 67 81             	and    %ah,-0x7f(%bx)
    6cbe:	63 81 20 69          	arpl   %ax,0x6920(%bx,%di)
    6cc2:	73 74                	jae    0x6d38
    6cc4:	65 72 2e             	gs jb  0x6cf5
    6cc7:	20 20                	and    %ah,(%bx,%si)
    6cc9:	20 20                	and    %ah,(%bx,%si)
    6ccb:	00 53 6f             	add    %dl,0x6f(%bp,%di)
    6cce:	75 6e                	jne    0x6d3e
    6cd0:	64 20 42 6c          	and    %al,%fs:0x6c(%bp,%si)
    6cd4:	61                   	popa
    6cd5:	73 74                	jae    0x6d4b
    6cd7:	65 72 20             	gs jb  0x6cfa
    6cda:	31 36 20 73          	xor    %si,0x7320
    6cde:	81 72 81 63 81       	xorw   $0x8163,-0x7f(%bp,%si)
    6ce3:	00 53 6f             	add    %dl,0x6f(%bp,%di)
    6ce6:	75 6e                	jne    0x6d56
    6ce8:	64 20 42 6c          	and    %al,%fs:0x6c(%bp,%si)
    6cec:	61                   	popa
    6ced:	73 74                	jae    0x6d63
    6cef:	65 72 20             	gs jb  0x6d12
    6cf2:	31 36 20 73          	xor    %si,0x7320
    6cf6:	81 72 81 63 81       	xorw   $0x8163,-0x7f(%bp,%si)
    6cfb:	2e 20 53 42          	and    %dl,%cs:0x42(%bp,%di)
    6cff:	31 36 20 76          	xor    %si,0x7620
    6d03:	65 20 53 42          	and    %dl,%gs:0x42(%bp,%di)
    6d07:	31 36 20 75          	xor    %si,0x7520
    6d0b:	79 75                	jns    0x6d82
    6d0d:	6d                   	insw   (%dx),%es:(%di)
    6d0e:	6c                   	insb   (%dx),%es:(%di)
    6d0f:	75 20                	jne    0x6d31
    6d11:	6b 61 72 74          	imul   $0x74,0x72(%bx,%di),%sp
    6d15:	6c                   	insb   (%dx),%es:(%di)
    6d16:	61                   	popa
    6d17:	72 8d                	jb     0x6ca6
    6d19:	20 64 65             	and    %ah,0x65(%si)
    6d1c:	73 74                	jae    0x6d92
    6d1e:	65 6b 6c 65 72       	imul   $0x72,%gs:0x65(%si),%bp
    6d23:	2e 20 20             	and    %ah,%cs:(%bx,%si)
    6d26:	20 20                	and    %ah,(%bx,%si)
    6d28:	20 20                	and    %ah,(%bx,%si)
    6d2a:	20 20                	and    %ah,(%bx,%si)
    6d2c:	20 20                	and    %ah,(%bx,%si)
    6d2e:	20 20                	and    %ah,(%bx,%si)
    6d30:	20 20                	and    %ah,(%bx,%si)
    6d32:	20 20                	and    %ah,(%bx,%si)
    6d34:	20 20                	and    %ah,(%bx,%si)
    6d36:	20 20                	and    %ah,(%bx,%si)
    6d38:	20 20                	and    %ah,(%bx,%si)
    6d3a:	20 20                	and    %ah,(%bx,%si)
    6d3c:	20 20                	and    %ah,(%bx,%si)
    6d3e:	20 20                	and    %ah,(%bx,%si)
    6d40:	20 20                	and    %ah,(%bx,%si)
    6d42:	20 20                	and    %ah,(%bx,%si)
    6d44:	20 20                	and    %ah,(%bx,%si)
    6d46:	20 20                	and    %ah,(%bx,%si)
    6d48:	20 20                	and    %ah,(%bx,%si)
    6d4a:	20 20                	and    %ah,(%bx,%si)
    6d4c:	20 20                	and    %ah,(%bx,%si)
    6d4e:	20 00                	and    %al,(%bx,%si)
    6d50:	4b                   	dec    %bx
    6d51:	61                   	popa
    6d52:	72 74                	jb     0x6dc8
    6d54:	20 69 87             	and    %ch,-0x79(%bx,%di)
    6d57:	69 6e 20 61 6e       	imul   $0x6e61,0x20(%bp),%bp
    6d5c:	61                   	popa
    6d5d:	20 49 2f             	and    %cl,0x2f(%bx,%di)
    6d60:	4f                   	dec    %di
    6d61:	20 61 64             	and    %ah,0x64(%bx,%di)
    6d64:	72 65                	jb     0x6dcb
    6d66:	73 69                	jae    0x6dd1
    6d68:	6e                   	outsb  %ds:(%si),(%dx)
    6d69:	69 20 73 65          	imul   $0x6573,(%bx,%si),%sp
    6d6d:	87 69 6e             	xchg   %bp,0x6e(%bx,%di)
    6d70:	2e 20 20             	and    %ah,%cs:(%bx,%si)
    6d73:	20 20                	and    %ah,(%bx,%si)
    6d75:	20 20                	and    %ah,(%bx,%si)
    6d77:	20 00                	and    %al,(%bx,%si)
    6d79:	6f                   	outsw  %ds:(%si),(%dx)
    6d7a:	42                   	inc    %dx
    6d7b:	75 20                	jne    0x6d9d
    6d7d:	53                   	push   %bx
    6d7e:	42                   	inc    %dx
    6d7f:	31 36 27 6e          	xor    %si,0x6e27
    6d83:	8d 7a 8d             	lea    -0x73(%bp,%si),%di
    6d86:	6e                   	outsb  %ds:(%si),(%dx)
    6d87:	20 79 81             	and    %bh,-0x7f(%bx,%di)
    6d8a:	6b 73 65 6b          	imul   $0x6b,0x65(%bp,%di),%si
    6d8e:	20 44 4d             	and    %al,0x4d(%si)
    6d91:	41                   	inc    %cx
    6d92:	20 6b 61             	and    %ch,0x61(%bp,%di)
    6d95:	6e                   	outsb  %ds:(%si),(%dx)
    6d96:	61                   	popa
    6d97:	6c                   	insb   (%dx),%es:(%di)
    6d98:	8d 64 8d             	lea    -0x73(%si),%sp
    6d9b:	72 2e                	jb     0x6dcb
    6d9d:	20 20                	and    %ah,(%bx,%si)
    6d9f:	20 20                	and    %ah,(%bx,%si)
    6da1:	20 20                	and    %ah,(%bx,%si)
    6da3:	20 00                	and    %al,(%bx,%si)
    6da5:	64 27                	fs daa
    6da7:	45                   	inc    %bp
    6da8:	27                   	daa
    6da9:	76 65                	jbe    0x6e10
    6dab:	74 20                	je     0x6dcd
    6dad:	73 65                	jae    0x6e14
    6daf:	87 65 6e             	xchg   %sp,0x6e(%di)
    6db2:	65 a7                	cmpsw  %es:(%di),%gs:(%si)
    6db4:	69 6e 69 20 73       	imul   $0x7320,0x69(%bp),%bp
    6db9:	61                   	popa
    6dba:	64 65 63 65 20       	fs arpl %sp,%gs:0x20(%di)
    6dbf:	73 69                	jae    0x6e2a
    6dc1:	73 74                	jae    0x6e37
    6dc3:	65 6d                	gs insw (%dx),%es:(%di)
    6dc5:	69 6e 69 7a 20       	imul   $0x207a,0x69(%bp),%bp
    6dca:	61                   	popa
    6dcb:	75 74                	jne    0x6e41
    6dcd:	6f                   	outsw  %ds:(%si),(%dx)
    6dce:	69 6e 69 74 20       	imul   $0x2074,0x69(%bp),%bp
    6dd3:	44                   	inc    %sp
    6dd4:	4d                   	dec    %bp
    6dd5:	41                   	inc    %cx
    6dd6:	20 6d 6f             	and    %ch,0x6f(%di)
    6dd9:	64 75 6e             	fs jne 0x6e4a
    6ddc:	64 61                	fs popa
    6dde:	20 87 61 6c          	and    %al,0x6c61(%bx)
    6de2:	8d 9f 6d 61          	lea    0x616d(%bx),%bx
    6de6:	7a 73                	jp     0x6e5b
    6de8:	61                   	popa
    6de9:	20 73 65             	and    %dh,0x65(%bp,%di)
    6dec:	87 69 6e             	xchg   %bp,0x6e(%bx,%di)
    6def:	2e 20 49 52          	and    %cl,%cs:0x52(%bx,%di)
    6df3:	51                   	push   %cx
    6df4:	20 6b 6f             	and    %ch,0x6f(%bp,%di)
    6df7:	6e                   	outsb  %ds:(%si),(%dx)
    6df8:	74 72                	je     0x6e6c
    6dfa:	6f                   	outsw  %ds:(%si),(%dx)
    6dfb:	6c                   	insb   (%dx),%es:(%di)
    6dfc:	6c                   	insb   (%dx),%es:(%di)
    6dfd:	81 20 44 4d          	andw   $0x4d44,(%bx,%si)
    6e01:	41                   	inc    %cx
    6e02:	20 73 65             	and    %dh,0x65(%bp,%di)
    6e05:	73 6c                	jae    0x6e73
    6e07:	65 72 64             	gs jb  0x6e6e
    6e0a:	65 20 87 8d 74       	and    %al,%gs:0x748d(%bx)
    6e0f:	8d 72 74             	lea    0x74(%bp,%si),%si
    6e12:	8d 6c 61             	lea    0x61(%si),%bp
    6e15:	72 61                	jb     0x6e78
    6e17:	20 73 65             	and    %dh,0x65(%bp,%di)
    6e1a:	62 65 70             	bound  %sp,0x70(%di)
    6e1d:	20 6f 6c             	and    %ch,0x6c(%bx)
    6e20:	61                   	popa
    6e21:	62 69 6c             	bound  %bp,0x6c(%bx,%di)
    6e24:	69 72 2e 20 20       	imul   $0x2020,0x2e(%bp,%si),%si
    6e29:	20 20                	and    %ah,(%bx,%si)
    6e2b:	20 20                	and    %ah,(%bx,%si)
    6e2d:	20 20                	and    %ah,(%bx,%si)
    6e2f:	20 20                	and    %ah,(%bx,%si)
    6e31:	20 20                	and    %ah,(%bx,%si)
    6e33:	20 20                	and    %ah,(%bx,%si)
    6e35:	20 20                	and    %ah,(%bx,%si)
    6e37:	20 20                	and    %ah,(%bx,%si)
    6e39:	20 20                	and    %ah,(%bx,%si)
    6e3b:	20 20                	and    %ah,(%bx,%si)
    6e3d:	20 20                	and    %ah,(%bx,%si)
    6e3f:	20 20                	and    %ah,(%bx,%si)
    6e41:	20 20                	and    %ah,(%bx,%si)
    6e43:	20 20                	and    %ah,(%bx,%si)
    6e45:	20 20                	and    %ah,(%bx,%si)
    6e47:	00 49 52             	add    %cl,0x52(%bx,%di)
    6e4a:	51                   	push   %cx
    6e4b:	20 53 42             	and    %dl,0x42(%bp,%di)
    6e4e:	31 36 27 64          	xor    %si,0x6427
    6e52:	61                   	popa
    6e53:	20 68 65             	and    %ch,0x65(%bx,%si)
    6e56:	72 20                	jb     0x6e78
    6e58:	7a 61                	jp     0x6ebb
    6e5a:	6d                   	insw   (%dx),%es:(%di)
    6e5b:	61                   	popa
    6e5c:	6e                   	outsb  %ds:(%si),(%dx)
    6e5d:	20 67 65             	and    %ah,0x65(%bx)
    6e60:	72 65                	jb     0x6ec7
    6e62:	6b 6c 69 64          	imul   $0x64,0x69(%si),%bp
    6e66:	69 72 00 20 45       	imul   $0x4520,0x0(%bp,%si),%si
    6e6b:	a7                   	cmpsw  %es:(%di),%ds:(%si)
    6e6c:	65 72 20             	gs jb  0x6e8f
    6e6f:	73 65                	jae    0x6ed6
    6e71:	73 20                	jae    0x6e93
    6e73:	64 81 7a 65 79 69    	cmpw   $0x6979,%fs:0x65(%bp,%si)
    6e79:	20 87 6f 6b          	and    %al,0x6b6f(%bx)
    6e7d:	20 61 7a             	and    %ah,0x7a(%bx,%di)
    6e80:	20 67 94             	and    %ah,-0x6c(%bx)
    6e83:	7a 81                	jp     0x6e06
    6e85:	6b 81 79 6f 72       	imul   $0x72,0x6f79(%bx,%di),%ax
    6e8a:	73 61                	jae    0x6eed
    6e8c:	20 76 65             	and    %dh,0x65(%bp)
    6e8f:	20 62 75             	and    %ah,0x75(%bp,%si)
    6e92:	6e                   	outsb  %ds:(%si),(%dx)
    6e93:	75 20                	jne    0x6eb5
    6e95:	64 81 7a 65 6c 74    	cmpw   $0x746c,%fs:0x65(%bp,%si)
    6e9b:	65 6d                	gs insw (%dx),%es:(%di)
    6e9d:	69 79 6f 72 73       	imul   $0x7372,0x6f(%bx,%di),%di
    6ea2:	61                   	popa
    6ea3:	6e                   	outsb  %ds:(%si),(%dx)
    6ea4:	8d 7a 2c             	lea    0x2c(%bp,%si),%di
    6ea7:	20 62 75             	and    %ah,0x75(%bp,%si)
    6eaa:	20 61 6d             	and    %ah,0x6d(%bx,%di)
    6ead:	70 6c                	jo     0x6f1b
    6eaf:	69 66 69 6b 61       	imul   $0x616b,0x69(%bp),%sp
    6eb4:	73 79                	jae    0x6f2f
    6eb6:	6f                   	outsw  %ds:(%si),(%dx)
    6eb7:	6e                   	outsb  %ds:(%si),(%dx)
    6eb8:	20 6d 6f             	and    %ch,0x6f(%di)
    6ebb:	64 6c                	fs insb (%dx),%es:(%di)
    6ebd:	61                   	popa
    6ebe:	72 8d                	jb     0x6e4d
    6ec0:	6e                   	outsb  %ds:(%si),(%dx)
    6ec1:	64 61                	fs popa
    6ec3:	6e                   	outsb  %ds:(%si),(%dx)
    6ec4:	20 62 69             	and    %ah,0x69(%bp,%si)
    6ec7:	72 69                	jb     0x6f32
    6ec9:	6e                   	outsb  %ds:(%si),(%dx)
    6eca:	69 20 64 65          	imul   $0x6564,(%bx,%si),%sp
    6ece:	6e                   	outsb  %ds:(%si),(%dx)
    6ecf:	65 79 65             	gs jns 0x6f37
    6ed2:	62 69 6c             	bound  %bp,0x6c(%bx,%di)
    6ed5:	69 72 73 69 6e       	imul   $0x6e69,0x73(%bp,%si),%si
    6eda:	69 7a 2e 20 41       	imul   $0x4120,0x2e(%bp,%si),%di
    6edf:	75 74                	jne    0x6f55
    6ee1:	6f                   	outsw  %ds:(%si),(%dx)
    6ee2:	20 6d 6f             	and    %ch,0x6f(%di)
    6ee5:	64 75 20             	fs jne 0x6f08
    6ee8:	61                   	popa
    6ee9:	6d                   	insw   (%dx),%es:(%di)
    6eea:	70 6c                	jo     0x6f58
    6eec:	69 66 69 6b 61       	imul   $0x616b,0x69(%bp),%sp
    6ef1:	73 79                	jae    0x6f6c
    6ef3:	6f                   	outsw  %ds:(%si),(%dx)
    6ef4:	6e                   	outsb  %ds:(%si),(%dx)
    6ef5:	75 20                	jne    0x6f17
    6ef7:	73 65                	jae    0x6f5e
    6ef9:	73 20                	jae    0x6f1b
    6efb:	6b 61 6e 61          	imul   $0x61,0x6e(%bx,%di),%sp
    6eff:	6c                   	insb   (%dx),%es:(%di)
    6f00:	6c                   	insb   (%dx),%es:(%di)
    6f01:	61                   	popa
    6f02:	72 8d                	jb     0x6e91
    6f04:	6e                   	outsb  %ds:(%si),(%dx)
    6f05:	8d 6e 20             	lea    0x20(%bp),%bp
    6f08:	73 61                	jae    0x6f6b
    6f0a:	79 8d                	jns    0x6e99
    6f0c:	73 8d                	jae    0x6e9b
    6f0e:	6e                   	outsb  %ds:(%si),(%dx)
    6f0f:	61                   	popa
    6f10:	20 67 94             	and    %ah,-0x6c(%bx)
    6f13:	72 65                	jb     0x6f7a
    6f15:	20 6f 74             	and    %ch,0x74(%bx)
    6f18:	6f                   	outsw  %ds:(%si),(%dx)
    6f19:	6d                   	insw   (%dx),%es:(%di)
    6f1a:	61                   	popa
    6f1b:	74 69                	je     0x6f86
    6f1d:	6b 20 6f             	imul   $0x6f,(%bx,%si),%sp
    6f20:	6c                   	insb   (%dx),%es:(%di)
    6f21:	61                   	popa
    6f22:	72 61                	jb     0x6f85
    6f24:	6b 20 61             	imul   $0x61,(%bx,%si),%sp
    6f27:	79 61                	jns    0x6f8a
    6f29:	72 6c                	jb     0x6f97
    6f2b:	61                   	popa
    6f2c:	72 2e                	jb     0x6f5c
    6f2e:	20 41 7a             	and    %al,0x7a(%bx,%di)
    6f31:	20 61 6d             	and    %ah,0x6d(%bx,%di)
    6f34:	70 6c                	jo     0x6fa2
    6f36:	69 66 69 6b 61       	imul   $0x616b,0x69(%bp),%sp
    6f3b:	73 79                	jae    0x6fb6
    6f3d:	6f                   	outsw  %ds:(%si),(%dx)
    6f3e:	6e                   	outsb  %ds:(%si),(%dx)
    6f3f:	20 61 7a             	and    %ah,0x7a(%bx,%di)
    6f42:	20 62 69             	and    %ah,0x69(%bp,%si)
    6f45:	72 20                	jb     0x6f67
    6f47:	43                   	inc    %bx
    6f48:	50                   	push   %ax
    6f49:	55                   	push   %bp
    6f4a:	20 67 81             	and    %ah,-0x7f(%bx)
    6f4d:	63 81 20 68          	arpl   %ax,0x6820(%bx,%di)
    6f51:	61                   	popa
    6f52:	72 63                	jb     0x6fb7
    6f54:	61                   	popa
    6f55:	72 20                	jb     0x6f77
    6f57:	66 61                	popal
    6f59:	6b 61 74 20          	imul   $0x20,0x74(%bx,%di),%sp
    6f5d:	62 61 7a             	bound  %sp,0x7a(%bx,%di)
    6f60:	8d 20                	lea    (%bx,%si),%sp
    6f62:	87 8d 74 8d          	xchg   %cx,-0x728c(%di)
    6f66:	72 74                	jb     0x6fdc
    6f68:	8d 6c 61             	lea    0x61(%si),%bp
    6f6b:	72 20                	jb     0x6f8d
    6f6d:	64 75 79             	fs jne 0x6fe9
    6f70:	61                   	popa
    6f71:	62 69 6c             	bound  %bp,0x6c(%bx,%di)
    6f74:	69 72 73 69 6e       	imul   $0x6e69,0x73(%bp,%si),%si
    6f79:	69 7a 2e 20 4f       	imul   $0x4f20,0x2e(%bp,%si),%di
    6f7e:	72 74                	jb     0x6ff4
    6f80:	61                   	popa
    6f81:	20 76 65             	and    %dh,0x65(%bp)
    6f84:	20 80 6f 6b          	and    %al,0x6b6f(%bx,%si)
    6f88:	20 61 6d             	and    %ah,0x6d(%bx,%di)
    6f8b:	70 6c                	jo     0x6ff9
    6f8d:	69 66 69 6b 61       	imul   $0x616b,0x69(%bp),%sp
    6f92:	73 79                	jae    0x700d
    6f94:	6f                   	outsw  %ds:(%si),(%dx)
    6f95:	6e                   	outsb  %ds:(%si),(%dx)
    6f96:	20 6d 6f             	and    %ch,0x6f(%di)
    6f99:	64 6c                	fs insb (%dx),%es:(%di)
    6f9b:	61                   	popa
    6f9c:	72 8d                	jb     0x6f2b
    6f9e:	20 87 8d 74          	and    %al,0x748d(%bx)
    6fa2:	8d 72 74             	lea    0x74(%bp,%si),%si
    6fa5:	8d 6c 61             	lea    0x61(%si),%bp
    6fa8:	72 8d                	jb     0x6f37
    6faa:	20 61 7a             	and    %ah,0x7a(%bx,%di)
    6fad:	61                   	popa
    6fae:	6c                   	insb   (%dx),%es:(%di)
    6faf:	74 8d                	je     0x6f3e
    6fb1:	72 20                	jb     0x6fd3
    6fb3:	66 61                	popal
    6fb5:	6b 61 74 20          	imul   $0x20,0x74(%bx,%di),%sp
    6fb9:	64 61                	fs popa
    6fbb:	68 61 20             	push   $0x2061
    6fbe:	66 61                	popal
    6fc0:	7a 6c                	jp     0x702e
    6fc2:	61                   	popa
    6fc3:	20 43 50             	and    %al,0x50(%bp,%di)
    6fc6:	55                   	push   %bp
    6fc7:	20 67 81             	and    %ah,-0x7f(%bx)
    6fca:	63 81 6e 65          	arpl   %ax,0x656e(%bx,%di)
    6fce:	20 69 68             	and    %ch,0x68(%bx,%di)
    6fd1:	74 69                	je     0x703c
    6fd3:	79 61                	jns    0x7036
    6fd5:	87 20                	xchg   %sp,(%bx,%si)
    6fd7:	64 75 79             	fs jne 0x7053
    6fda:	61                   	popa
    6fdb:	72 6c                	jb     0x7049
    6fdd:	61                   	popa
    6fde:	72 2e                	jb     0x700e
    6fe0:	20 20                	and    %ah,(%bx,%si)
    6fe2:	20 20                	and    %ah,(%bx,%si)
    6fe4:	20 20                	and    %ah,(%bx,%si)
    6fe6:	20 20                	and    %ah,(%bx,%si)
    6fe8:	20 20                	and    %ah,(%bx,%si)
    6fea:	20 20                	and    %ah,(%bx,%si)
    6fec:	20 20                	and    %ah,(%bx,%si)
    6fee:	20 20                	and    %ah,(%bx,%si)
    6ff0:	20 20                	and    %ah,(%bx,%si)
    6ff2:	20 20                	and    %ah,(%bx,%si)
    6ff4:	20 20                	and    %ah,(%bx,%si)
    6ff6:	20 20                	and    %ah,(%bx,%si)
    6ff8:	20 20                	and    %ah,(%bx,%si)
    6ffa:	20 20                	and    %ah,(%bx,%si)
    6ffc:	20 20                	and    %ah,(%bx,%si)
    6ffe:	20 20                	and    %ah,(%bx,%si)
    7000:	20 20                	and    %ah,(%bx,%si)
    7002:	20 20                	and    %ah,(%bx,%si)
    7004:	20 20                	and    %ah,(%bx,%si)
    7006:	20 20                	and    %ah,(%bx,%si)
    7008:	20 20                	and    %ah,(%bx,%si)
    700a:	20 20                	and    %ah,(%bx,%si)
    700c:	20 20                	and    %ah,(%bx,%si)
    700e:	20 20                	and    %ah,(%bx,%si)
    7010:	20 20                	and    %ah,(%bx,%si)
    7012:	20 20                	and    %ah,(%bx,%si)
    7014:	20 20                	and    %ah,(%bx,%si)
    7016:	20 20                	and    %ah,(%bx,%si)
    7018:	20 20                	and    %ah,(%bx,%si)
    701a:	20 20                	and    %ah,(%bx,%si)
    701c:	20 20                	and    %ah,(%bx,%si)
    701e:	20 20                	and    %ah,(%bx,%si)
    7020:	20 20                	and    %ah,(%bx,%si)
    7022:	20 20                	and    %ah,(%bx,%si)
    7024:	20 20                	and    %ah,(%bx,%si)
    7026:	20 20                	and    %ah,(%bx,%si)
    7028:	20 20                	and    %ah,(%bx,%si)
    702a:	20 20                	and    %ah,(%bx,%si)
    702c:	20 20                	and    %ah,(%bx,%si)
    702e:	00 72 53             	add    %dh,0x53(%bp,%si)
    7031:	74 65                	je     0x7098
    7033:	72 65                	jb     0x709a
    7035:	6f                   	outsw  %ds:(%si),(%dx)
    7036:	20 76 65             	and    %dh,0x65(%bp)
    7039:	79 61                	jns    0x709c
    703b:	20 6d 6f             	and    %ch,0x6f(%di)
    703e:	6e                   	outsb  %ds:(%si),(%dx)
    703f:	6f                   	outsw  %ds:(%si),(%dx)
    7040:	20 73 65             	and    %dh,0x65(%bp,%di)
    7043:	87 69 6e             	xchg   %bp,0x6e(%bx,%di)
    7046:	2e 20 4d 6f          	and    %cl,%cs:0x6f(%di)
    704a:	6e                   	outsb  %ds:(%si),(%dx)
    704b:	6f                   	outsw  %ds:(%si),(%dx)
    704c:	20 73 65             	and    %dh,0x65(%bp,%di)
    704f:	73 20                	jae    0x7071
    7051:	64 61                	fs popa
    7053:	68 61 20             	push   $0x2061
    7056:	69 79 69 20 70       	imul   $0x7020,0x69(%bx,%di),%di
    705b:	65 72 66             	gs jb  0x70c4
    705e:	6f                   	outsw  %ds:(%si),(%dx)
    705f:	72 6d                	jb     0x70ce
    7061:	61                   	popa
    7062:	6e                   	outsb  %ds:(%si),(%dx)
    7063:	73 20                	jae    0x7085
    7065:	67 94                	addr32 xchg %ax,%sp
    7067:	73 74                	jae    0x70dd
    7069:	65 72 69             	gs jb  0x70d5
    706c:	72 20                	jb     0x708e
    706e:	66 61                	popal
    7070:	6b 61 74 20          	imul   $0x20,0x74(%bx,%di),%sp
    7074:	73 74                	jae    0x70ea
    7076:	65 72 65             	gs jb  0x70de
    7079:	6f                   	outsw  %ds:(%si),(%dx)
    707a:	20 73 65             	and    %dh,0x65(%bp,%di)
    707d:	73 20                	jae    0x709f
    707f:	65 66 65 6b 74 6c 65 	gs imul $0x65,%gs:0x6c(%si),%esi
    7086:	72 69                	jb     0x70f1
    7088:	20 76 65             	and    %dh,0x65(%bp)
    708b:	79 61                	jns    0x70ee
    708d:	20 27                	and    %ah,(%bx)
    708f:	73 75                	jae    0x7106
    7091:	72 72                	jb     0x7105
    7093:	6f                   	outsw  %ds:(%si),(%dx)
    7094:	75 6e                	jne    0x7104
    7096:	64 27                	fs daa
    7098:	20 6d 81             	and    %ch,-0x7f(%di)
    709b:	7a 69                	jp     0x7106
    709d:	a7                   	cmpsw  %es:(%di),%ds:(%si)
    709e:	69 20 64 69          	imul   $0x6964,(%bx,%si),%sp
    70a2:	6e                   	outsb  %ds:(%si),(%dx)
    70a3:	6c                   	insb   (%dx),%es:(%di)
    70a4:	65 79 65             	gs jns 0x710c
    70a7:	6d                   	insw   (%dx),%es:(%di)
    70a8:	65 7a 73             	gs jp  0x711e
    70ab:	69 6e 69 7a 2e       	imul   $0x2e7a,0x69(%bp),%bp
    70b0:	20 20                	and    %ah,(%bx,%si)
    70b2:	20 20                	and    %ah,(%bx,%si)
    70b4:	20 20                	and    %ah,(%bx,%si)
    70b6:	20 20                	and    %ah,(%bx,%si)
    70b8:	20 20                	and    %ah,(%bx,%si)
    70ba:	20 20                	and    %ah,(%bx,%si)
    70bc:	20 20                	and    %ah,(%bx,%si)
    70be:	20 20                	and    %ah,(%bx,%si)
    70c0:	20 20                	and    %ah,(%bx,%si)
    70c2:	20 20                	and    %ah,(%bx,%si)
    70c4:	20 20                	and    %ah,(%bx,%si)
    70c6:	20 20                	and    %ah,(%bx,%si)
    70c8:	20 20                	and    %ah,(%bx,%si)
    70ca:	20 20                	and    %ah,(%bx,%si)
    70cc:	20 20                	and    %ah,(%bx,%si)
    70ce:	20 20                	and    %ah,(%bx,%si)
    70d0:	20 20                	and    %ah,(%bx,%si)
    70d2:	20 00                	and    %al,(%bx,%si)
    70d4:	42                   	inc    %dx
    70d5:	75 20                	jne    0x70f7
    70d7:	73 65                	jae    0x713e
    70d9:	87 65 6e             	xchg   %sp,0x6e(%di)
    70dc:	65 6b 20 73          	imul   $0x73,%gs:(%bx,%si),%sp
    70e0:	65 73 69             	gs jae 0x714c
    70e3:	6e                   	outsb  %ds:(%si),(%dx)
    70e4:	20 87 61 6c          	and    %al,0x6c61(%bx)
    70e8:	8d 6e 6d             	lea    0x6d(%bp),%bp
    70eb:	61                   	popa
    70ec:	20 64 75             	and    %ah,0x75(%si)
    70ef:	7a 65                	jp     0x7156
    70f1:	79 69                	jns    0x715c
    70f3:	6e                   	outsb  %ds:(%si),(%dx)
    70f4:	69 20 67 94          	imul   $0x9467,(%bx,%si),%sp
    70f8:	73 74                	jae    0x716e
    70fa:	65 72 69             	gs jb  0x7166
    70fd:	72 2e                	jb     0x712d
    70ff:	20 4f 72             	and    %cl,0x72(%bx)
    7102:	61                   	popa
    7103:	6e                   	outsb  %ds:(%si),(%dx)
    7104:	20 6e 65             	and    %ch,0x65(%bp)
    7107:	20 6b 61             	and    %ch,0x61(%bp,%di)
    710a:	64 61                	fs popa
    710c:	72 20                	jb     0x712e
    710e:	79 81                	jns    0x7091
    7110:	6b 73 65 6b          	imul   $0x6b,0x65(%bp,%di),%si
    7114:	73 65                	jae    0x717b
    7116:	20 73 65             	and    %dh,0x65(%bp,%di)
    7119:	73 20                	jae    0x713b
    711b:	6b 61 6c 69          	imul   $0x69,0x6c(%bx,%di),%sp
    711f:	74 65                	je     0x7186
    7121:	73 69                	jae    0x718c
    7123:	20 6f 20             	and    %ch,0x20(%bx)
    7126:	6b 61 64 61          	imul   $0x61,0x64(%bx,%di),%sp
    712a:	72 20                	jb     0x714c
    712c:	69 79 69 20 6f       	imul   $0x6f20,0x69(%bx,%di),%di
    7131:	6c                   	insb   (%dx),%es:(%di)
    7132:	75 72                	jne    0x71a6
    7134:	2e 20 41 6d          	and    %al,%cs:0x6d(%bx,%di)
    7138:	61                   	popa
    7139:	20 79 81             	and    %bh,-0x7f(%bx,%di)
    713c:	6b 73 65 6b          	imul   $0x6b,0x65(%bp,%di),%si
    7140:	20 6f 72             	and    %ch,0x72(%bx)
    7143:	61                   	popa
    7144:	6e                   	outsb  %ds:(%si),(%dx)
    7145:	6c                   	insb   (%dx),%es:(%di)
    7146:	61                   	popa
    7147:	72 20                	jb     0x7169
    7149:	64 61                	fs popa
    714b:	68 61 20             	push   $0x2061
    714e:	87 6f 6b             	xchg   %bp,0x6b(%bx)
    7151:	20 73 65             	and    %dh,0x65(%bp,%di)
    7154:	73 20                	jae    0x7176
    7156:	76 65                	jbe    0x71bd
    7158:	72 69                	jb     0x71c3
    715a:	73 69                	jae    0x71c5
    715c:	20 69 9f             	and    %ch,-0x61(%bx,%di)
    715f:	6c                   	insb   (%dx),%es:(%di)
    7160:	65 6d                	gs insw (%dx),%es:(%di)
    7162:	69 20 67 65          	imul   $0x6567,(%bx,%si),%sp
    7166:	72 65                	jb     0x71cd
    7168:	6b 74 69 72          	imul   $0x72,0x69(%si),%si
    716c:	64 69 a7 69 6e 64 65 	imul   $0x6564,%fs:0x6e69(%bx),%sp
    7173:	6e                   	outsb  %ds:(%si),(%dx)
    7174:	20 64 61             	and    %ah,0x61(%si)
    7177:	68 61 20             	push   $0x2061
    717a:	87 6f 6b             	xchg   %bp,0x6b(%bx)
    717d:	20 43 50             	and    %al,0x50(%bp,%di)
    7180:	55                   	push   %bp
    7181:	20 67 81             	and    %ah,-0x7f(%bx)
    7184:	63 81 20 69          	arpl   %ax,0x6920(%bx,%di)
    7188:	73 74                	jae    0x71fe
    718a:	65 72 2e             	gs jb  0x71bb
    718d:	20 20                	and    %ah,(%bx,%si)
    718f:	20 20                	and    %ah,(%bx,%si)
    7191:	00 45 78             	add    %al,0x78(%di)
    7194:	74 72                	je     0x7208
    7196:	61                   	popa
    7197:	20 79 81             	and    %bh,-0x7f(%bx,%di)
    719a:	6b 73 65 6b          	imul   $0x6b,0x65(%bp,%di),%si
    719e:	20 6b 61             	and    %ch,0x61(%bp,%di)
    71a1:	6c                   	insb   (%dx),%es:(%di)
    71a2:	69 74 65 28 34       	imul   $0x3428,0x65(%si),%si
    71a7:	34 6b                	xor    $0x6b,%al
    71a9:	48                   	dec    %ax
    71aa:	7a 29                	jp     0x71d5
    71ac:	00 6c 59             	add    %ch,0x59(%si)
    71af:	81 6b 73 65 6b       	subw   $0x6b65,0x73(%bp,%di)
    71b4:	20 6b 61             	and    %ch,0x61(%bp,%di)
    71b7:	6c                   	insb   (%dx),%es:(%di)
    71b8:	69 74 65 28 33       	imul   $0x3328,0x65(%si),%si
    71bd:	32 6b 48             	xor    0x48(%bp,%di),%ch
    71c0:	7a 29                	jp     0x71eb
    71c2:	00 75 4f             	add    %dh,0x4f(%di)
    71c5:	72 74                	jb     0x723b
    71c7:	61                   	popa
    71c8:	6c                   	insb   (%dx),%es:(%di)
    71c9:	61                   	popa
    71ca:	6d                   	insw   (%dx),%es:(%di)
    71cb:	61                   	popa
    71cc:	20 6b 61             	and    %ch,0x61(%bp,%di)
    71cf:	6c                   	insb   (%dx),%es:(%di)
    71d0:	69 74 65 20 28       	imul   $0x2820,0x65(%si),%si
    71d5:	32 32                	xor    (%bp,%si),%dh
    71d7:	6b 48 7a 29          	imul   $0x29,0x7a(%bx,%si),%cx
    71db:	00 44 81             	add    %al,-0x7f(%si)
    71de:	9f                   	lahf
    71df:	81 6b 20 6b 61       	subw   $0x616b,0x20(%bp,%di)
    71e4:	6c                   	insb   (%dx),%es:(%di)
    71e5:	69 74 65 28 31       	imul   $0x3128,0x65(%si),%si
    71ea:	36 6b 48 7a 29       	imul   $0x29,%ss:0x7a(%bx,%si),%cx
    71ef:	00 4d 43             	add    %cl,0x43(%di)
    71f2:	50                   	push   %ax
    71f3:	4f                   	dec    %di
    71f4:	75 74                	jne    0x726a
    71f6:	70 75                	jo     0x726d
    71f8:	74 42                	je     0x723c
    71fa:	75 66                	jne    0x7262
    71fc:	66 65 72 00          	data32 gs jb 0x7200
    7200:	47                   	inc    %di
    7201:	65 74 44             	gs je  0x7248
    7204:	53                   	push   %bx
    7205:	4d                   	dec    %bp
    7206:	49                   	dec    %cx
    7207:	54                   	push   %sp
    7208:	69 6d 65 00 4d       	imul   $0x4d00,0x65(%di),%bp
    720d:	43                   	inc    %bx
    720e:	50                   	push   %ax
    720f:	53                   	push   %bx
    7210:	61                   	popa
    7211:	6d                   	insw   (%dx),%es:(%di)
    7212:	70 6c                	jo     0x7280
    7214:	65 52                	gs push %dx
    7216:	65 61                	gs popa
    7218:	6c                   	insb   (%dx),%es:(%di)
    7219:	41                   	inc    %cx
    721a:	64 64 72 65          	fs fs jb 0x7283
    721e:	73 73                	jae    0x7293
    7220:	00 65 4d             	add    %ah,0x4d(%di)
    7223:	43                   	inc    %bx
    7224:	50                   	push   %ax
    7225:	45                   	inc    %bp
    7226:	6e                   	outsb  %ds:(%si),(%dx)
    7227:	61                   	popa
    7228:	62 6c 65             	bound  %bp,0x65(%si)
    722b:	56                   	push   %si
    722c:	69 72 74 75 61       	imul   $0x6175,0x74(%bp,%si),%si
    7231:	6c                   	insb   (%dx),%es:(%di)
    7232:	53                   	push   %bx
    7233:	61                   	popa
    7234:	6d                   	insw   (%dx),%es:(%di)
    7235:	70 6c                	jo     0x72a3
    7237:	65 73 00             	gs jae 0x723a
    723a:	4d                   	dec    %bp
    723b:	43                   	inc    %bx
    723c:	50                   	push   %ax
    723d:	44                   	inc    %sp
    723e:	69 73 61 62 6c       	imul   $0x6c62,0x61(%bp,%di),%si
    7243:	65 56                	gs push %si
    7245:	69 72 74 75 61       	imul   $0x6175,0x74(%bp,%si),%si
    724a:	6c                   	insb   (%dx),%es:(%di)
    724b:	53                   	push   %bx
    724c:	61                   	popa
    724d:	6d                   	insw   (%dx),%es:(%di)
    724e:	70 6c                	jo     0x72bc
    7250:	65 73 00             	gs jae 0x7253
    7253:	61                   	popa
    7254:	53                   	push   %bx
    7255:	44                   	inc    %sp
    7256:	49                   	dec    %cx
    7257:	47                   	inc    %di
    7258:	65 74 42             	gs je  0x729d
    725b:	75 66                	jne    0x72c3
    725d:	66 65 72 50          	data32 gs jb 0x72b1
    7261:	6f                   	outsw  %ds:(%si),(%dx)
    7262:	73 69                	jae    0x72cd
    7264:	74 69                	je     0x72cf
    7266:	6f                   	outsw  %ds:(%si),(%dx)
    7267:	6e                   	outsb  %ds:(%si),(%dx)
    7268:	00 00                	add    %al,(%bx,%si)
    726a:	42                   	inc    %dx
    726b:	4c                   	dec    %sp
    726c:	41                   	inc    %cx
    726d:	53                   	push   %bx
    726e:	54                   	push   %sp
    726f:	45                   	inc    %bp
    7270:	52                   	push   %dx
    7271:	00 44 44             	add    %al,0x44(%si)
    7274:	53                   	push   %bx
    7275:	41                   	inc    %cx
    7276:	63 63 65             	arpl   %sp,0x65(%bp,%di)
    7279:	73 73                	jae    0x72ee
    727b:	52                   	push   %dx
    727c:	65 73 6f             	gs jae 0x72ee
    727f:	75 72                	jne    0x72f3
    7281:	63 65 00             	arpl   %sp,0x0(%di)
    7284:	44                   	inc    %sp
    7285:	44                   	inc    %sp
    7286:	53                   	push   %bx
    7287:	52                   	push   %dx
    7288:	65 67 69 73 74 65 72 	imul   $0x7265,%gs:0x74(%ebx),%si
    728f:	52                   	push   %dx
    7290:	65 73 6f             	gs jae 0x7302
    7293:	75 72                	jne    0x7307
    7295:	63 65 00             	arpl   %sp,0x0(%di)
    7298:	44                   	inc    %sp
    7299:	44                   	inc    %sp
    729a:	53                   	push   %bx
    729b:	52                   	push   %dx
    729c:	65 67 69 73 74 65 72 	imul   $0x7265,%gs:0x74(%ebx),%si
    72a3:	46                   	inc    %si
    72a4:	75 6e                	jne    0x7314
    72a6:	63 74 69             	arpl   %si,0x69(%si)
    72a9:	6f                   	outsw  %ds:(%si),(%dx)
    72aa:	6e                   	outsb  %ds:(%si),(%dx)
    72ab:	00 44 44             	add    %al,0x44(%si)
    72ae:	53                   	push   %bx
    72af:	52                   	push   %dx
    72b0:	65 6d                	gs insw (%dx),%es:(%di)
    72b2:	6f                   	outsw  %ds:(%si),(%dx)
    72b3:	76 65                	jbe    0x731a
    72b5:	46                   	inc    %si
    72b6:	75 6e                	jne    0x7326
    72b8:	63 74 69             	arpl   %si,0x69(%si)
    72bb:	6f                   	outsw  %ds:(%si),(%dx)
    72bc:	6e                   	outsb  %ds:(%si),(%dx)
    72bd:	00 44 44             	add    %al,0x44(%si)
    72c0:	53                   	push   %bx
    72c1:	52                   	push   %dx
    72c2:	65 6d                	gs insw (%dx),%es:(%di)
    72c4:	6f                   	outsw  %ds:(%si),(%dx)
    72c5:	76 65                	jbe    0x732c
    72c7:	52                   	push   %dx
    72c8:	65 73 6f             	gs jae 0x733a
    72cb:	75 72                	jne    0x733f
    72cd:	63 65 00             	arpl   %sp,0x0(%di)
    72d0:	4d                   	dec    %bp
    72d1:	65 6d                	gs insw (%dx),%es:(%di)
    72d3:	41                   	inc    %cx
    72d4:	6c                   	insb   (%dx),%es:(%di)
    72d5:	6c                   	insb   (%dx),%es:(%di)
    72d6:	6f                   	outsw  %ds:(%si),(%dx)
    72d7:	63 00                	arpl   %ax,(%bx,%si)
    72d9:	72 4d                	jb     0x7328
    72db:	65 6d                	gs insw (%dx),%es:(%di)
    72dd:	43                   	inc    %bx
    72de:	61                   	popa
    72df:	6c                   	insb   (%dx),%es:(%di)
    72e0:	6c                   	insb   (%dx),%es:(%di)
    72e1:	6f                   	outsw  %ds:(%si),(%dx)
    72e2:	63 00                	arpl   %ax,(%bx,%si)
    72e4:	4d                   	dec    %bp
    72e5:	65 6d                	gs insw (%dx),%es:(%di)
    72e7:	52                   	push   %dx
    72e8:	65 61                	gs popa
    72ea:	6c                   	insb   (%dx),%es:(%di)
    72eb:	6c                   	insb   (%dx),%es:(%di)
    72ec:	6f                   	outsw  %ds:(%si),(%dx)
    72ed:	63 00                	arpl   %ax,(%bx,%si)
    72ef:	53                   	push   %bx
    72f0:	4d                   	dec    %bp
    72f1:	65 6d                	gs insw (%dx),%es:(%di)
    72f3:	46                   	inc    %si
    72f4:	72 65                	jb     0x735b
    72f6:	65 00 63 64          	add    %ah,%gs:0x64(%bp,%di)
    72fa:	69 52 65 67 69       	imul   $0x6967,0x65(%bp,%si),%dx
    72ff:	73 74                	jae    0x7375
    7301:	65 72 00             	gs jb  0x7304
    7304:	53                   	push   %bx
    7305:	65 74 56             	gs je  0x735e
    7308:	65 63 74 6f          	arpl   %si,%gs:0x6f(%si)
    730c:	72 00                	jb     0x730e
    730e:	47                   	inc    %di
    730f:	65 74 45             	gs je  0x7357
    7312:	6e                   	outsb  %ds:(%si),(%dx)
    7313:	76 53                	jbe    0x7368
    7315:	74 72                	je     0x7389
    7317:	69 6e 67 00 00       	imul   $0x0,0x67(%bp),%bp
    731c:	53                   	push   %bx
    731d:	44                   	inc    %sp
    731e:	49                   	dec    %cx
    731f:	44                   	inc    %sp
    7320:	65 74 65             	gs je  0x7388
    7323:	63 74 44             	arpl   %si,0x44(%si)
    7326:	65 76 69             	gs jbe 0x7392
    7329:	63 65 73             	arpl   %sp,0x73(%di)
    732c:	00 00                	add    %al,(%bx,%si)
    732e:	53                   	push   %bx
    732f:	44                   	inc    %sp
    7330:	49                   	dec    %cx
    7331:	51                   	push   %cx
    7332:	75 65                	jne    0x7399
    7334:	72 79                	jb     0x73af
    7336:	44                   	inc    %sp
    7337:	65 76 69             	gs jbe 0x73a3
    733a:	63 65 43             	arpl   %sp,0x43(%di)
    733d:	6f                   	outsw  %ds:(%si),(%dx)
    733e:	75 6e                	jne    0x73ae
    7340:	74 00                	je     0x7342
    7342:	53                   	push   %bx
    7343:	44                   	inc    %sp
    7344:	49                   	dec    %cx
    7345:	51                   	push   %cx
    7346:	75 65                	jne    0x73ad
    7348:	72 79                	jb     0x73c3
    734a:	44                   	inc    %sp
    734b:	65 76 69             	gs jbe 0x73b7
    734e:	63 65 00             	arpl   %sp,0x0(%di)
    7351:	63 53 44             	arpl   %dx,0x44(%bp,%di)
    7354:	49                   	dec    %cx
    7355:	49                   	dec    %cx
    7356:	6e                   	outsb  %ds:(%si),(%dx)
    7357:	69 74 44 65 76       	imul   $0x7665,0x44(%si),%si
    735c:	69 63 65 00 53       	imul   $0x5300,0x65(%bp,%di),%sp
    7361:	44                   	inc    %sp
    7362:	49                   	dec    %cx
    7363:	53                   	push   %bx
    7364:	74 61                	je     0x73c7
    7366:	72 74                	jb     0x73dc
    7368:	4f                   	dec    %di
    7369:	75 74                	jne    0x73df
    736b:	70 75                	jo     0x73e2
    736d:	74 00                	je     0x736f
    736f:	76 53                	jbe    0x73c4
    7371:	44                   	inc    %sp
    7372:	49                   	dec    %cx
    7373:	53                   	push   %bx
    7374:	74 6f                	je     0x73e5
    7376:	70 4f                	jo     0x73c7
    7378:	75 74                	jne    0x73ee
    737a:	70 75                	jo     0x73f1
    737c:	74 00                	je     0x737e
    737e:	53                   	push   %bx
    737f:	44                   	inc    %sp
    7380:	49                   	dec    %cx
    7381:	43                   	inc    %bx
    7382:	6c                   	insb   (%dx),%es:(%di)
    7383:	6f                   	outsw  %ds:(%si),(%dx)
    7384:	73 65                	jae    0x73eb
    7386:	44                   	inc    %sp
    7387:	65 76 69             	gs jbe 0x73f3
    738a:	63 65 00             	arpl   %sp,0x0(%di)
