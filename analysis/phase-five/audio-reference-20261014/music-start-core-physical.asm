
lale/IST.EXE:     file format binary


Disassembly of section .data:

00012392 <.data+0x12392>:
   12392:	c8 00 00 00          	enter  $0x0,$0x0
   12396:	1e                   	push   %ds
   12397:	56                   	push   %si
   12398:	57                   	push   %di
   12399:	b8 e0 16             	mov    $0x16e0,%ax
   1239c:	8e d8                	mov    %ax,%ds
   1239e:	b8 ff ff             	mov    $0xffff,%ax
   123a1:	f6 06 91 85 01       	testb  $0x1,-0x7a6f
   123a6:	0f 84 ce 01          	je     0x12578
   123aa:	fc                   	cld
   123ab:	1e                   	push   %ds
   123ac:	1e                   	push   %ds
   123ad:	07                   	pop    %es
   123ae:	bf e8 7b             	mov    $0x7be8,%di
   123b1:	c5 76 12             	lds    0x12(%bp),%si
   123b4:	8c d8                	mov    %ds,%ax
   123b6:	0b c6                	or     %si,%ax
   123b8:	75 07                	jne    0x123c1
   123ba:	1f                   	pop    %ds
   123bb:	b8 ff ff             	mov    $0xffff,%ax
   123be:	e9 b7 01             	jmp    0x12578
   123c1:	b9 5c 00             	mov    $0x5c,%cx
   123c4:	f3 a4                	rep movsb %ds:(%si),%es:(%di)
   123c6:	1f                   	pop    %ds
   123c7:	80 3e e8 7b 00       	cmpb   $0x0,0x7be8
   123cc:	0f 84 a8 01          	je     0x12578
   123d0:	b8 fe ff             	mov    $0xfffe,%ax
   123d3:	66 8b 56 0e          	mov    0xe(%bp),%edx
   123d7:	3a 16 37 7c          	cmp    0x7c37,%dl
   123db:	0f 83 99 01          	jae    0x12578
   123df:	66 8b 56 0a          	mov    0xa(%bp),%edx
   123e3:	3a 16 37 7c          	cmp    0x7c37,%dl
   123e7:	0f 87 8d 01          	ja     0x12578
   123eb:	c6 06 50 7c 00       	movb   $0x0,0x7c50
   123f0:	bf 91 7c             	mov    $0x7c91,%di
   123f3:	1e                   	push   %ds
   123f4:	07                   	pop    %es
   123f5:	b9 a0 05             	mov    $0x5a0,%cx
   123f8:	2a c0                	sub    %al,%al
   123fa:	f3 aa                	rep stos %al,%es:(%di)
   123fc:	c6 06 66 7c 40       	movb   $0x40,0x7c66
   12401:	80 3e e8 7b 02       	cmpb   $0x2,0x7be8
   12406:	74 05                	je     0x1240d
   12408:	c6 06 66 7c 40       	movb   $0x40,0x7c66
   1240d:	c6 06 68 7c 00       	movb   $0x0,0x7c68
   12412:	c6 06 56 7c 00       	movb   $0x0,0x7c56
   12417:	c7 06 59 7c 00 00    	movw   $0x0,0x7c59
   1241d:	c6 06 67 7c 00       	movb   $0x0,0x7c67
   12422:	c7 06 57 7c 00 00    	movw   $0x0,0x7c57
   12428:	c7 06 6b 7c 00 00    	movw   $0x0,0x7c6b
   1242e:	a0 43 7c             	mov    0x7c43,%al
   12431:	a2 64 7c             	mov    %al,0x7c64
   12434:	a0 42 7c             	mov    0x7c42,%al
   12437:	a2 65 7c             	mov    %al,0x7c65
   1243a:	2a e4                	sub    %ah,%ah
   1243c:	6b c0 32             	imul   $0x32,%ax,%ax
   1243f:	2b d2                	sub    %dx,%dx
   12441:	b9 7d 00             	mov    $0x7d,%cx
   12444:	f7 f1                	div    %cx
   12446:	a3 a0 85             	mov    %ax,0x85a0
   12449:	66 8b 46 0e          	mov    0xe(%bp),%eax
   1244d:	a2 53 7c             	mov    %al,0x7c53
   12450:	a2 55 7c             	mov    %al,0x7c55
   12453:	66 8b 46 0a          	mov    0xa(%bp),%eax
   12457:	a2 54 7c             	mov    %al,0x7c54
   1245a:	66 8b 46 06          	mov    0x6(%bp),%eax
   1245e:	a3 51 7c             	mov    %ax,0x7c51
   12461:	66 a1 38 7c          	mov    0x7c38,%eax
   12465:	66 a3 5c 7c          	mov    %eax,0x7c5c
   12469:	66 a1 33 7c          	mov    0x7c33,%eax
   1246d:	66 a3 60 7c          	mov    %eax,0x7c60
   12471:	a0 11 7c             	mov    0x7c11,%al
   12474:	2a e4                	sub    %ah,%ah
   12476:	a3 6d 7c             	mov    %ax,0x7c6d
   12479:	66 2b c9             	sub    %ecx,%ecx
   1247c:	8b 0e 6d 7c          	mov    0x7c6d,%cx
   12480:	66 2b db             	sub    %ebx,%ebx
   12483:	66 0f be 87 12 7c    	movsbl 0x7c12(%bx),%eax
   12489:	66 50                	push   %eax
   1248b:	53                   	push   %bx
   1248c:	51                   	push   %cx
   1248d:	66 53                	push   %ebx
   1248f:	66 50                	push   %eax
   12491:	0e                   	push   %cs
   12492:	e8 b0 04             	call   0x12945
   12495:	59                   	pop    %cx
   12496:	5b                   	pop    %bx
   12497:	66 58                	pop    %eax
   12499:	88 87 6f 7c          	mov    %al,0x7c6f(%bx)
   1249d:	43                   	inc    %bx
   1249e:	e2 e3                	loop   0x12483
   124a0:	e8 d3 f8             	call   0x11d76
   124a3:	8b 0e 6d 7c          	mov    0x7c6d,%cx
   124a7:	66 2b db             	sub    %ebx,%ebx
   124aa:	51                   	push   %cx
   124ab:	53                   	push   %bx
   124ac:	66 53                	push   %ebx
   124ae:	0e                   	push   %cs
   124af:	e8 b5 02             	call   0x12767
   124b2:	5b                   	pop    %bx
   124b3:	59                   	pop    %cx
   124b4:	43                   	inc    %bx
   124b5:	e2 f3                	loop   0x124aa
   124b7:	0f b6 0e 32 7c       	movzbw 0x7c32,%cx
   124bc:	c4 36 60 7c          	les    0x7c60,%si
   124c0:	2b db                	sub    %bx,%bx
   124c2:	06                   	push   %es
   124c3:	56                   	push   %si
   124c4:	51                   	push   %cx
   124c5:	53                   	push   %bx
   124c6:	6b db 41             	imul   $0x41,%bx,%bx
   124c9:	03 f3                	add    %bx,%si
   124cb:	06                   	push   %es
   124cc:	56                   	push   %si
   124cd:	2b d2                	sub    %dx,%dx
   124cf:	2b c0                	sub    %ax,%ax
   124d1:	66 26 83 7c 2e 00    	cmpl   $0x0,%es:0x2e(%si)
   124d7:	74 47                	je     0x12520
   124d9:	26 83 7c 30 ff       	cmpw   $0xffff,%es:0x30(%si)
   124de:	75 29                	jne    0x12509
   124e0:	06                   	push   %es
   124e1:	56                   	push   %si
   124e2:	66 26 0f b7 44 2e    	movzwl %es:0x2e(%si),%eax
   124e8:	66 50                	push   %eax
   124ea:	66 6a 00             	pushl  $0x0
   124ed:	ff 1e a6 85          	lcall  *-0x7a5a
   124f1:	5e                   	pop    %si
   124f2:	07                   	pop    %es
   124f3:	66 6a 00             	pushl  $0x0
   124f6:	52                   	push   %dx
   124f7:	50                   	push   %ax
   124f8:	66 26 ff 74 2e       	pushl  %es:0x2e(%si)
   124fd:	66 26 ff 74 32       	pushl  %es:0x32(%si)
   12502:	9a 94 02 ae 0e       	lcall  $0xeae,$0x294
   12507:	eb 17                	jmp    0x12520
   12509:	66 6a 00             	pushl  $0x0
   1250c:	66 26 ff 74 2e       	pushl  %es:0x2e(%si)
   12511:	66 26 ff 74 2e       	pushl  %es:0x2e(%si)
   12516:	66 26 ff 74 32       	pushl  %es:0x32(%si)
   1251b:	9a 94 02 ae 0e       	lcall  $0xeae,$0x294
   12520:	5e                   	pop    %si
   12521:	07                   	pop    %es
   12522:	5b                   	pop    %bx
   12523:	59                   	pop    %cx
   12524:	5e                   	pop    %si
   12525:	07                   	pop    %es
   12526:	43                   	inc    %bx
   12527:	85 c0                	test   %ax,%ax
   12529:	75 21                	jne    0x1254c
   1252b:	e2 95                	loop   0x124c2
   1252d:	c6 06 50 7c 01       	movb   $0x1,0x7c50
   12532:	9a 5e 00 45 11       	lcall  $0x1145,$0x5e
   12537:	66 c1 e2 10          	shl    $0x10,%edx
   1253b:	66 25 ff ff 00 00    	and    $0xffff,%eax
   12541:	66 0b c2             	or     %edx,%eax
   12544:	66 a3 a2 85          	mov    %eax,0x85a2
   12548:	2b c0                	sub    %ax,%ax
   1254a:	eb 2c                	jmp    0x12578
   1254c:	0f b6 0e 32 7c       	movzbw 0x7c32,%cx
   12551:	c4 36 60 7c          	les    0x7c60,%si
   12555:	66 26 83 7c 2e 00    	cmpl   $0x0,%es:0x2e(%si)
   1255b:	74 13                	je     0x12570
   1255d:	06                   	push   %es
   1255e:	56                   	push   %si
   1255f:	51                   	push   %cx
   12560:	66 6a 00             	pushl  $0x0
   12563:	66 26 ff 74 2e       	pushl  %es:0x2e(%si)
   12568:	9a e4 02 ae 0e       	lcall  $0xeae,$0x2e4
   1256d:	59                   	pop    %cx
   1256e:	5e                   	pop    %si
   1256f:	07                   	pop    %es
   12570:	83 c6 41             	add    $0x41,%si
   12573:	e2 e0                	loop   0x12555
   12575:	b8 fe ff             	mov    $0xfffe,%ax
   12578:	5f                   	pop    %di
   12579:	5e                   	pop    %si
   1257a:	1f                   	pop    %ds
   1257b:	c9                   	leave
   1257c:	ca 10 00             	lret   $0x10
   1257f:	c8 00 00 00          	enter  $0x0,$0x0
   12583:	1e                   	push   %ds
   12584:	b8 e0 16             	mov    $0x16e0,%ax
   12587:	8e d8                	mov    %ax,%ds
   12589:	b8 ff ff             	mov    $0xffff,%ax
   1258c:	f6 06 91 85 01       	testb  $0x1,-0x7a6f
   12591:	74 22                	je     0x125b5
   12593:	c4 5e 0a             	les    0xa(%bp),%bx
   12596:	26 80 3f 00          	cmpb   $0x0,%es:(%bx)
   1259a:	74 19                	je     0x125b5
   1259c:	66 2b c0             	sub    %eax,%eax
   1259f:	66 26 0f b6 57 4f    	movzbl %es:0x4f(%bx),%edx
   125a5:	66 ff 76 0a          	pushl  0xa(%bp)
   125a9:	66 50                	push   %eax
   125ab:	66 52                	push   %edx
   125ad:	66 ff 76 06          	pushl  0x6(%bp)
   125b1:	0e                   	push   %cs
   125b2:	e8 dd fd             	call   0x12392
   125b5:	1f                   	pop    %ds
   125b6:	c9                   	leave
   125b7:	ca 08 00             	lret   $0x8
