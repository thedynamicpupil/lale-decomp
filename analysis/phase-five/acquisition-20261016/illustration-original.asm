
analysis/phase-five/acquisition-20261016/illustration-original.bin:     file format binary


Disassembly of section .data:

000481c7 <.data>:
   481c7:	55                   	push   %bp
   481c8:	8b ec                	mov    %sp,%bp
   481ca:	83 ec 16             	sub    $0x16,%sp
   481cd:	9a b9 1e 10 00       	lcall  $0x10,$0x1eb9
   481d2:	6a 01                	push   $0x1
   481d4:	9a 2f 00 18 01       	lcall  $0x118,$0x2f
   481d9:	59                   	pop    %cx
   481da:	6a 02                	push   $0x2
   481dc:	9a ca 00 10 01       	lcall  $0x110,$0xca
   481e1:	59                   	pop    %cx
   481e2:	8a 46 06             	mov    0x6(%bp),%al
   481e5:	b4 00                	mov    $0x0,%ah
   481e7:	50                   	push   %ax
   481e8:	1e                   	push   %ds
   481e9:	68 35 62             	push   $0x6235
   481ec:	16                   	push   %ss
   481ed:	8d 46 ea             	lea    -0x16(%bp),%ax
   481f0:	50                   	push   %ax
   481f1:	9a b4 48 00 00       	lcall  $0x0,$0x48b4
   481f6:	83 c4 0a             	add    $0xa,%sp
   481f9:	6a 55                	push   $0x55
   481fb:	16                   	push   %ss
   481fc:	8d 46 ea             	lea    -0x16(%bp),%ax
   481ff:	50                   	push   %ax
   48200:	6a 01                	push   $0x1
   48202:	9a 20 00 48 01       	lcall  $0x148,$0x20
   48207:	83 c4 08             	add    $0x8,%sp
   4820a:	1e                   	push   %ds
   4820b:	68 40 62             	push   $0x6240
   4820e:	16                   	push   %ss
   4820f:	8d 46 ea             	lea    -0x16(%bp),%ax
   48212:	50                   	push   %ax
   48213:	9a 34 00 48 01       	lcall  $0x148,$0x34
   48218:	83 c4 08             	add    $0x8,%sp
   4821b:	89 56 fc             	mov    %dx,-0x4(%bp)
   4821e:	89 46 fa             	mov    %ax,-0x6(%bp)
   48221:	52                   	push   %dx
   48222:	50                   	push   %ax
   48223:	6a 02                	push   $0x2
   48225:	9a 25 00 70 01       	lcall  $0x170,$0x25
   4822a:	89 46 fe             	mov    %ax,-0x2(%bp)
   4822d:	3d ff ff             	cmp    $0xffff,%ax
   48230:	75 03                	jne    0x48235
   48232:	e9 8d 00             	jmp    0x482c2
   48235:	ff 76 fe             	push   -0x2(%bp)
   48238:	9a 2a 00 70 01       	lcall  $0x170,$0x2a
   4823d:	68 80 00             	push   $0x80
   48240:	6a 00                	push   $0x0
   48242:	ff 76 fc             	push   -0x4(%bp)
   48245:	ff 76 fa             	push   -0x6(%bp)
   48248:	9a 2a 00 48 01       	lcall  $0x148,$0x2a
   4824d:	83 c4 08             	add    $0x8,%sp
   48250:	b8 88 01             	mov    $0x188,%ax
   48253:	8e c0                	mov    %ax,%es
   48255:	26 ff 06 18 73       	incw   %es:0x7318
   4825a:	6a 00                	push   $0x0
   4825c:	6a ff                	push   $0xffff
   4825e:	6a 00                	push   $0x0
   48260:	9a 3f 07 30 00       	lcall  $0x30,$0x73f
   48265:	83 c4 06             	add    $0x6,%sp
   48268:	1e                   	push   %ds
   48269:	68 45 62             	push   $0x6245
   4826c:	68 d6 06             	push   $0x6d6
   4826f:	68 88 01             	push   $0x188
   48272:	68 26 de             	push   $0xde26
   48275:	9a 81 0a 20 00       	lcall  $0x20,$0xa81
   4827a:	83 c4 0a             	add    $0xa,%sp
   4827d:	6a 00                	push   $0x0
   4827f:	b8 88 01             	mov    $0x188,%ax
   48282:	8e c0                	mov    %ax,%es
   48284:	26 c4 1e 2f e5       	les    %es:-0x1ad1,%bx
   48289:	26 ff 37             	push   %es:(%bx)
   4828c:	6a 00                	push   $0x0
   4828e:	6a 00                	push   $0x0
   48290:	68 80 7f             	push   $0x7f80
   48293:	9a 88 06 98 00       	lcall  $0x98,$0x688
   48298:	52                   	push   %dx
   48299:	50                   	push   %ax
   4829a:	9a 13 1a 28 00       	lcall  $0x28,$0x1a13
   4829f:	83 c4 06             	add    $0x6,%sp
   482a2:	68 88 01             	push   $0x188
   482a5:	68 26 de             	push   $0xde26
   482a8:	9a 22 0b 20 00       	lcall  $0x20,$0xb22
   482ad:	83 c4 04             	add    $0x4,%sp
   482b0:	c6 06 c2 5b 01       	movb   $0x1,0x5bc2
   482b5:	9a 3e 00 18 01       	lcall  $0x118,$0x3e
   482ba:	ff 76 fe             	push   -0x2(%bp)
   482bd:	9a 2a 00 70 01       	lcall  $0x170,$0x2a
   482c2:	ff 76 fc             	push   -0x4(%bp)
   482c5:	ff 76 fa             	push   -0x6(%bp)
   482c8:	9a c2 24 00 00       	lcall  $0x0,$0x24c2
   482cd:	83 c4 04             	add    $0x4,%sp
   482d0:	b8 88 01             	mov    $0x188,%ax
   482d3:	8e c0                	mov    %ax,%es
   482d5:	26 81 3e fb 3a c8 00 	cmpw   $0xc8,%es:0x3afb
   482dc:	74 03                	je     0x482e1
   482de:	e9 58 01             	jmp    0x48439
   482e1:	b8 88 01             	mov    $0x188,%ax
   482e4:	8e c0                	mov    %ax,%es
   482e6:	26 81 3e fd 3a c8 00 	cmpw   $0xc8,%es:0x3afd
   482ed:	74 03                	je     0x482f2
   482ef:	e9 47 01             	jmp    0x48439
   482f2:	6a 0e                	push   $0xe
   482f4:	9a c7 05 30 00       	lcall  $0x30,$0x5c7
   482f9:	59                   	pop    %cx
   482fa:	0a c0                	or     %al,%al
   482fc:	74 05                	je     0x48303
   482fe:	9a 04 02 30 00       	lcall  $0x30,$0x204
   48303:	b8 88 01             	mov    $0x188,%ax
   48306:	8e c0                	mov    %ax,%es
   48308:	26 83 3e 43 e5 64    	cmpw   $0x64,%es:-0x1abd
   4830e:	7e 72                	jle    0x48382
   48310:	b8 88 01             	mov    $0x188,%ax
   48313:	8e c0                	mov    %ax,%es
   48315:	26 83 3e 45 e5 64    	cmpw   $0x64,%es:-0x1abb
   4831b:	7e 65                	jle    0x48382
   4831d:	68 e0 01             	push   $0x1e0
   48320:	68 41 03             	push   $0x341
   48323:	6a 41                	push   $0x41
   48325:	6a 55                	push   $0x55
   48327:	6a 00                	push   $0x0
   48329:	6a 00                	push   $0x0
   4832b:	b8 88 01             	mov    $0x188,%ax
   4832e:	8e c0                	mov    %ax,%es
   48330:	26 81 3e 45 e5 c8 00 	cmpw   $0xc8,%es:-0x1abb
   48337:	7e 05                	jle    0x4833e
   48339:	b8 c8 00             	mov    $0xc8,%ax
   4833c:	eb 09                	jmp    0x48347
   4833e:	b8 88 01             	mov    $0x188,%ax
   48341:	8e c0                	mov    %ax,%es
   48343:	26 a1 45 e5          	mov    %es:0xe545,%ax
   48347:	50                   	push   %ax
   48348:	b8 88 01             	mov    $0x188,%ax
   4834b:	8e c0                	mov    %ax,%es
   4834d:	26 81 3e 43 e5 c8 00 	cmpw   $0xc8,%es:-0x1abd
   48354:	7e 05                	jle    0x4835b
   48356:	b8 c8 00             	mov    $0xc8,%ax
   48359:	eb 09                	jmp    0x48364
   4835b:	b8 88 01             	mov    $0x188,%ax
   4835e:	8e c0                	mov    %ax,%es
   48360:	26 a1 43 e5          	mov    %es:0xe543,%ax
   48364:	50                   	push   %ax
   48365:	6a 00                	push   $0x0
   48367:	6a 00                	push   $0x0
   48369:	9a 30 04 28 00       	lcall  $0x28,$0x430
   4836e:	83 c4 14             	add    $0x14,%sp
   48371:	6a 34                	push   $0x34
   48373:	6a 30                	push   $0x30
   48375:	6a 41                	push   $0x41
   48377:	9a 2f 00 10 01       	lcall  $0x110,$0x2f
   4837c:	83 c4 06             	add    $0x6,%sp
   4837f:	e9 a7 00             	jmp    0x48429
   48382:	6a 00                	push   $0x0
   48384:	b8 88 01             	mov    $0x188,%ax
   48387:	8e c0                	mov    %ax,%es
   48389:	26 ff 36 49 e5       	push   %es:-0x1ab7
   4838e:	26 ff 36 47 e5       	push   %es:-0x1ab9
   48393:	9a ab 04 20 00       	lcall  $0x20,$0x4ab
   48398:	83 c4 06             	add    $0x6,%sp
   4839b:	bb 88 01             	mov    $0x188,%bx
   4839e:	8e c3                	mov    %bx,%es
   483a0:	26 89 16 6e e5       	mov    %dx,%es:-0x1a92
   483a5:	26 a3 6c e5          	mov    %ax,%es:0xe56c
   483a9:	1e                   	push   %ds
   483aa:	68 54 62             	push   $0x6254
   483ad:	68 ea 06             	push   $0x6ea
   483b0:	68 88 01             	push   $0x188
   483b3:	68 26 de             	push   $0xde26
   483b6:	9a 81 0a 20 00       	lcall  $0x20,$0xa81
   483bb:	83 c4 0a             	add    $0xa,%sp
   483be:	b8 88 01             	mov    $0x188,%ax
   483c1:	8e c0                	mov    %ax,%es
   483c3:	26 c4 1e 2f e5       	les    %es:-0x1ad1,%bx
   483c8:	26 ff 37             	push   %es:(%bx)
   483cb:	6a 00                	push   $0x0
   483cd:	6a 00                	push   $0x0
   483cf:	b8 88 01             	mov    $0x188,%ax
   483d2:	8e c0                	mov    %ax,%es
   483d4:	26 c4 1e 2f e5       	les    %es:-0x1ad1,%bx
   483d9:	26 ff 77 04          	push   %es:0x4(%bx)
   483dd:	9a 88 06 98 00       	lcall  $0x98,$0x688
   483e2:	52                   	push   %dx
   483e3:	50                   	push   %ax
   483e4:	b8 88 01             	mov    $0x188,%ax
   483e7:	8e c0                	mov    %ax,%es
   483e9:	26 c4 1e 6c e5       	les    %es:-0x1a94,%bx
   483ee:	26 ff 77 02          	push   %es:0x2(%bx)
   483f2:	26 ff 37             	push   %es:(%bx)
   483f5:	9a 00 05 e0 01       	lcall  $0x1e0,$0x500
   483fa:	83 c4 08             	add    $0x8,%sp
   483fd:	68 88 01             	push   $0x188
   48400:	68 26 de             	push   $0xde26
   48403:	9a 22 0b 20 00       	lcall  $0x20,$0xb22
   48408:	83 c4 04             	add    $0x4,%sp
   4840b:	1e                   	push   %ds
   4840c:	68 63 62             	push   $0x6263
   4840f:	68 ed 06             	push   $0x6ed
   48412:	b8 88 01             	mov    $0x188,%ax
   48415:	8e c0                	mov    %ax,%es
   48417:	26 ff 36 6e e5       	push   %es:-0x1a92
   4841c:	26 ff 36 6c e5       	push   %es:-0x1a94
   48421:	9a 60 03 20 00       	lcall  $0x20,$0x360
   48426:	83 c4 0a             	add    $0xa,%sp
   48429:	68 18 01             	push   $0x118
   4842c:	68 84 00             	push   $0x84
   4842f:	9a a1 04 30 00       	lcall  $0x30,$0x4a1
   48434:	83 c4 04             	add    $0x4,%sp
   48437:	eb 4c                	jmp    0x48485
   48439:	6a 00                	push   $0x0
   4843b:	6a 41                	push   $0x41
   4843d:	6a 55                	push   $0x55
   4843f:	b8 88 01             	mov    $0x188,%ax
   48442:	8e c0                	mov    %ax,%es
   48444:	26 ff 36 a5 e4       	push   %es:-0x1b5b
   48449:	b8 88 01             	mov    $0x188,%ax
   4844c:	8e c0                	mov    %ax,%es
   4844e:	26 ff 36 a3 e4       	push   %es:-0x1b5d
   48453:	6a 00                	push   $0x0
   48455:	6a 00                	push   $0x0
   48457:	b8 88 01             	mov    $0x188,%ax
   4845a:	8e c0                	mov    %ax,%es
   4845c:	26 ff 36 45 e5       	push   %es:-0x1abb
   48461:	b8 88 01             	mov    $0x188,%ax
   48464:	8e c0                	mov    %ax,%es
   48466:	26 ff 36 43 e5       	push   %es:-0x1abd
   4846b:	6a 00                	push   $0x0
   4846d:	6a 00                	push   $0x0
   4846f:	9a 5a 0c 28 00       	lcall  $0x28,$0xc5a
   48474:	83 c4 16             	add    $0x16,%sp
   48477:	6a 34                	push   $0x34
   48479:	6a 30                	push   $0x30
   4847b:	6a 41                	push   $0x41
   4847d:	9a 2f 00 10 01       	lcall  $0x110,$0x2f
   48482:	83 c4 06             	add    $0x6,%sp
   48485:	1e                   	push   %ds
   48486:	68 72 62             	push   $0x6272
   48489:	68 f6 06             	push   $0x6f6
   4848c:	68 88 01             	push   $0x188
   4848f:	68 47 e5             	push   $0xe547
   48492:	9a 2f 02 40 00       	lcall  $0x40,$0x22f
   48497:	83 c4 0a             	add    $0xa,%sp
   4849a:	80 7e 08 00          	cmpb   $0x0,0x8(%bp)
   4849e:	74 08                	je     0x484a8
   484a0:	6a 32                	push   $0x32
   484a2:	9a ca 2d 10 00       	lcall  $0x10,$0x2dca
   484a7:	59                   	pop    %cx
   484a8:	6a 02                	push   $0x2
   484aa:	9a c5 00 10 01       	lcall  $0x110,$0xc5
   484af:	59                   	pop    %cx
   484b0:	c9                   	leave
   484b1:	cb                   	lret
   484b2:	55                   	push   %bp
   484b3:	8b ec                	mov    %sp,%bp
   484b5:	8a 46 10             	mov    0x10(%bp),%al
   484b8:	50                   	push   %ax
   484b9:	8a 46 0e             	mov    0xe(%bp),%al
   484bc:	50                   	push   %ax
   484bd:	ff 76 0c             	push   0xc(%bp)
   484c0:	ff 76 0a             	push   0xa(%bp)
   484c3:	ff 76 08             	push   0x8(%bp)
   484c6:	ff 76 06             	push   0x6(%bp)
   484c9:	9a 51 0a 30 00       	lcall  $0x30,$0xa51
   484ce:	83 c4 0c             	add    $0xc,%sp
   484d1:	5d                   	pop    %bp
   484d2:	cb                   	lret
