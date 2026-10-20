
lale/IST.EXE:     file format binary


Disassembly of section .data:

0000f32f <.data+0xf32f>:
    f32f:	c8 08 00 00          	enter  $0x8,$0x0
    f333:	a1 18 73             	mov    0x7318,%ax
    f336:	03 46 08             	add    0x8(%bp),%ax
    f339:	3b 06 1e 73          	cmp    0x731e,%ax
    f33d:	7e 0a                	jle    0xf349
    f33f:	a1 1e 73             	mov    0x731e,%ax
    f342:	2b 06 18 73          	sub    0x7318,%ax
    f346:	89 46 08             	mov    %ax,0x8(%bp)
    f349:	a1 18 73             	mov    0x7318,%ax
    f34c:	03 46 08             	add    0x8(%bp),%ax
    f34f:	7d 08                	jge    0xf359
    f351:	a1 18 73             	mov    0x7318,%ax
    f354:	f7 d8                	neg    %ax
    f356:	89 46 08             	mov    %ax,0x8(%bp)
    f359:	a1 1a 73             	mov    0x731a,%ax
    f35c:	03 46 0a             	add    0xa(%bp),%ax
    f35f:	3b 06 20 73          	cmp    0x7320,%ax
    f363:	7e 0a                	jle    0xf36f
    f365:	a1 20 73             	mov    0x7320,%ax
    f368:	2b 06 1a 73          	sub    0x731a,%ax
    f36c:	89 46 0a             	mov    %ax,0xa(%bp)
    f36f:	a1 1a 73             	mov    0x731a,%ax
    f372:	03 46 0a             	add    0xa(%bp),%ax
    f375:	7d 08                	jge    0xf37f
    f377:	a1 1a 73             	mov    0x731a,%ax
    f37a:	f7 d8                	neg    %ax
    f37c:	89 46 0a             	mov    %ax,0xa(%bp)
    f37f:	b8 e0 16             	mov    $0x16e0,%ax
    f382:	8e c0                	mov    %ax,%es
    f384:	26 a1 4a e7          	mov    %es:0xe74a,%ax
    f388:	89 46 fa             	mov    %ax,-0x6(%bp)
    f38b:	c7 46 fe 00 00       	movw   $0x0,-0x2(%bp)
    f390:	e9 c0 00             	jmp    0xf453
    f393:	83 7e 08 00          	cmpw   $0x0,0x8(%bp)
    f397:	74 64                	je     0xf3fd
    f399:	6a 00                	push   $0x0
    f39b:	ff 76 06             	push   0x6(%bp)
    f39e:	8b 46 fe             	mov    -0x2(%bp),%ax
    f3a1:	99                   	cwtd
    f3a2:	50                   	push   %ax
    f3a3:	8b 46 08             	mov    0x8(%bp),%ax
    f3a6:	52                   	push   %dx
    f3a7:	99                   	cwtd
    f3a8:	59                   	pop    %cx
    f3a9:	5b                   	pop    %bx
    f3aa:	9a 42 12 00 00       	lcall  $0x0,$0x1242
    f3af:	52                   	push   %dx
    f3b0:	50                   	push   %ax
    f3b1:	9a df 12 00 00       	lcall  $0x0,$0x12df
    f3b6:	8b 16 18 73          	mov    0x7318,%dx
    f3ba:	03 d0                	add    %ax,%dx
    f3bc:	89 56 fc             	mov    %dx,-0x4(%bp)
    f3bf:	c7 46 f8 00 00       	movw   $0x0,-0x8(%bp)
    f3c4:	eb 21                	jmp    0xf3e7
    f3c6:	c4 1e ef e5          	les    -0x1a11,%bx
    f3ca:	03 5e f8             	add    -0x8(%bp),%bx
    f3cd:	26 8a 07             	mov    %es:(%bx),%al
    f3d0:	b4 00                	mov    $0x0,%ah
    f3d2:	f7 6e fc             	imulw  -0x4(%bp)
    f3d5:	99                   	cwtd
    f3d6:	f7 3e 1e 73          	idivw  0x731e
    f3da:	c4 1e eb e5          	les    -0x1a15,%bx
    f3de:	03 5e f8             	add    -0x8(%bp),%bx
    f3e1:	26 88 07             	mov    %al,%es:(%bx)
    f3e4:	ff 46 f8             	incw   -0x8(%bp)
    f3e7:	81 7e f8 00 03       	cmpw   $0x300,-0x8(%bp)
    f3ec:	72 d8                	jb     0xf3c6
    f3ee:	ff 36 ed e5          	push   -0x1a13
    f3f2:	ff 36 eb e5          	push   -0x1a15
    f3f6:	0e                   	push   %cs
    f3f7:	e8 46 f8             	call   0xec40
    f3fa:	83 c4 04             	add    $0x4,%sp
    f3fd:	83 7e 0a 00          	cmpw   $0x0,0xa(%bp)
    f401:	74 41                	je     0xf444
    f403:	b8 e0 16             	mov    $0x16e0,%ax
    f406:	8e c0                	mov    %ax,%es
    f408:	26 80 3e d0 73 00    	cmpb   $0x0,%es:0x73d0
    f40e:	74 34                	je     0xf444
    f410:	6a ff                	push   $0xffff
    f412:	6a ff                	push   $0xffff
    f414:	6a 00                	push   $0x0
    f416:	ff 76 06             	push   0x6(%bp)
    f419:	8b 46 0a             	mov    0xa(%bp),%ax
    f41c:	99                   	cwtd
    f41d:	50                   	push   %ax
    f41e:	8b 46 fe             	mov    -0x2(%bp),%ax
    f421:	52                   	push   %dx
    f422:	99                   	cwtd
    f423:	59                   	pop    %cx
    f424:	5b                   	pop    %bx
    f425:	9a 42 12 00 00       	lcall  $0x0,$0x1242
    f42a:	52                   	push   %dx
    f42b:	50                   	push   %ax
    f42c:	9a df 12 00 00       	lcall  $0x0,$0x12df
    f431:	50                   	push   %ax
    f432:	a1 1a 73             	mov    0x731a,%ax
    f435:	52                   	push   %dx
    f436:	99                   	cwtd
    f437:	5b                   	pop    %bx
    f438:	59                   	pop    %cx
    f439:	03 c1                	add    %cx,%ax
    f43b:	13 d3                	adc    %bx,%dx
    f43d:	52                   	push   %dx
    f43e:	50                   	push   %ax
    f43f:	9a 25 16 f6 0e       	lcall  $0xef6,$0x1625
    f444:	b8 e0 16             	mov    $0x16e0,%ax
    f447:	8e c0                	mov    %ax,%es
    f449:	26 a1 4a e7          	mov    %es:0xe74a,%ax
    f44d:	2b 46 fa             	sub    -0x6(%bp),%ax
    f450:	89 46 fe             	mov    %ax,-0x2(%bp)
    f453:	8b 46 fe             	mov    -0x2(%bp),%ax
    f456:	3b 46 06             	cmp    0x6(%bp),%ax
    f459:	73 03                	jae    0xf45e
    f45b:	e9 35 ff             	jmp    0xf393
    f45e:	83 7e 08 00          	cmpw   $0x0,0x8(%bp)
    f462:	74 53                	je     0xf4b7
    f464:	c7 46 f8 00 00       	movw   $0x0,-0x8(%bp)
    f469:	eb 36                	jmp    0xf4a1
    f46b:	a1 1e 73             	mov    0x731e,%ax
    f46e:	99                   	cwtd
    f46f:	52                   	push   %dx
    f470:	50                   	push   %ax
    f471:	c4 1e ef e5          	les    -0x1a11,%bx
    f475:	03 5e f8             	add    -0x8(%bp),%bx
    f478:	26 8a 07             	mov    %es:(%bx),%al
    f47b:	b4 00                	mov    $0x0,%ah
    f47d:	33 c9                	xor    %cx,%cx
    f47f:	50                   	push   %ax
    f480:	a1 18 73             	mov    0x7318,%ax
    f483:	03 46 08             	add    0x8(%bp),%ax
    f486:	99                   	cwtd
    f487:	5b                   	pop    %bx
    f488:	9a 42 12 00 00       	lcall  $0x0,$0x1242
    f48d:	52                   	push   %dx
    f48e:	50                   	push   %ax
    f48f:	9a df 12 00 00       	lcall  $0x0,$0x12df
    f494:	c4 1e eb e5          	les    -0x1a15,%bx
    f498:	03 5e f8             	add    -0x8(%bp),%bx
    f49b:	26 88 07             	mov    %al,%es:(%bx)
    f49e:	ff 46 f8             	incw   -0x8(%bp)
    f4a1:	81 7e f8 00 03       	cmpw   $0x300,-0x8(%bp)
    f4a6:	72 c3                	jb     0xf46b
    f4a8:	ff 36 ed e5          	push   -0x1a13
    f4ac:	ff 36 eb e5          	push   -0x1a15
    f4b0:	0e                   	push   %cs
    f4b1:	e8 8c f7             	call   0xec40
    f4b4:	83 c4 04             	add    $0x4,%sp
    f4b7:	83 7e 0a 00          	cmpw   $0x0,0xa(%bp)
    f4bb:	74 1f                	je     0xf4dc
    f4bd:	b8 e0 16             	mov    $0x16e0,%ax
    f4c0:	8e c0                	mov    %ax,%es
    f4c2:	26 80 3e d0 73 00    	cmpb   $0x0,%es:0x73d0
    f4c8:	74 12                	je     0xf4dc
    f4ca:	6a ff                	push   $0xffff
    f4cc:	6a ff                	push   $0xffff
    f4ce:	a1 1a 73             	mov    0x731a,%ax
    f4d1:	03 46 0a             	add    0xa(%bp),%ax
    f4d4:	99                   	cwtd
    f4d5:	52                   	push   %dx
    f4d6:	50                   	push   %ax
    f4d7:	9a 25 16 f6 0e       	lcall  $0xef6,$0x1625
    f4dc:	8b 46 08             	mov    0x8(%bp),%ax
    f4df:	01 06 18 73          	add    %ax,0x7318
    f4e3:	8b 46 0a             	mov    0xa(%bp),%ax
    f4e6:	01 06 1a 73          	add    %ax,0x731a
    f4ea:	c9                   	leave
    f4eb:	cb                   	lret
