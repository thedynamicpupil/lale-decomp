
lale/IST.EXE:     file format binary


Disassembly of section .data:

000442c8 <.data+0x442c8>:
   442c8:	c7 46 f8 03 00       	movw   $0x3,-0x8(%bp)
   442cd:	eb 3f                	jmp    0x4430e
   442cf:	8b 5e f8             	mov    -0x8(%bp),%bx
   442d2:	6b db 06             	imul   $0x6,%bx,%bx
   442d5:	8b 87 da 5b          	mov    0x5bda(%bx),%ax
   442d9:	8b 5e f8             	mov    -0x8(%bp),%bx
   442dc:	6b db 06             	imul   $0x6,%bx,%bx
   442df:	89 87 f2 5b          	mov    %ax,0x5bf2(%bx)
   442e3:	8b 5e f8             	mov    -0x8(%bp),%bx
   442e6:	6b db 06             	imul   $0x6,%bx,%bx
   442e9:	8b 87 dc 5b          	mov    0x5bdc(%bx),%ax
   442ed:	8b 5e f8             	mov    -0x8(%bp),%bx
   442f0:	6b db 06             	imul   $0x6,%bx,%bx
   442f3:	89 87 f4 5b          	mov    %ax,0x5bf4(%bx)
   442f7:	8b 5e f8             	mov    -0x8(%bp),%bx
   442fa:	6b db 06             	imul   $0x6,%bx,%bx
   442fd:	8b 87 d8 5b          	mov    0x5bd8(%bx),%ax
   44301:	8b 5e f8             	mov    -0x8(%bp),%bx
   44304:	6b db 06             	imul   $0x6,%bx,%bx
   44307:	89 87 f0 5b          	mov    %ax,0x5bf0(%bx)
   4430b:	ff 4e f8             	decw   -0x8(%bp)
   4430e:	83 7e f8 01          	cmpw   $0x1,-0x8(%bp)
   44312:	7d bb                	jge    0x442cf
   44314:	6a 28                	push   $0x28
   44316:	9a ca 2d 10 00       	lcall  $0x10,$0x2dca
   4431b:	59                   	pop    %cx
   4431c:	9a 66 00 10 01       	lcall  $0x110,$0x66
   44321:	c7 46 f8 03 00       	movw   $0x3,-0x8(%bp)
   44326:	e9 aa 00             	jmp    0x443d3
   44329:	8b 5e f8             	mov    -0x8(%bp),%bx
   4432c:	6b db 06             	imul   $0x6,%bx,%bx
   4432f:	8b 87 f2 5b          	mov    0x5bf2(%bx),%ax
   44333:	8b 5e f8             	mov    -0x8(%bp),%bx
   44336:	6b db 06             	imul   $0x6,%bx,%bx
   44339:	3b 87 da 5b          	cmp    0x5bda(%bx),%ax
   4433d:	75 2c                	jne    0x4436b
   4433f:	8b 5e f8             	mov    -0x8(%bp),%bx
   44342:	6b db 06             	imul   $0x6,%bx,%bx
   44345:	8b 87 f4 5b          	mov    0x5bf4(%bx),%ax
   44349:	8b 5e f8             	mov    -0x8(%bp),%bx
   4434c:	6b db 06             	imul   $0x6,%bx,%bx
   4434f:	3b 87 dc 5b          	cmp    0x5bdc(%bx),%ax
   44353:	75 16                	jne    0x4436b
   44355:	8b 5e f8             	mov    -0x8(%bp),%bx
   44358:	6b db 06             	imul   $0x6,%bx,%bx
   4435b:	8b 87 f0 5b          	mov    0x5bf0(%bx),%ax
   4435f:	8b 5e f8             	mov    -0x8(%bp),%bx
   44362:	6b db 06             	imul   $0x6,%bx,%bx
   44365:	3b 87 d8 5b          	cmp    0x5bd8(%bx),%ax
   44369:	74 65                	je     0x443d0
   4436b:	6a 03                	push   $0x3
   4436d:	9a 1e 34 00 00       	lcall  $0x0,$0x341e
   44372:	59                   	pop    %cx
   44373:	c7 46 f8 03 00       	movw   $0x3,-0x8(%bp)
   44378:	eb 4b                	jmp    0x443c5
   4437a:	8b 5e f8             	mov    -0x8(%bp),%bx
   4437d:	6b db 06             	imul   $0x6,%bx,%bx
   44380:	ff b7 d8 5b          	push   0x5bd8(%bx)
   44384:	8b 5e f8             	mov    -0x8(%bp),%bx
   44387:	6b db 06             	imul   $0x6,%bx,%bx
   4438a:	ff b7 f0 5b          	push   0x5bf0(%bx)
   4438e:	8b 5e f8             	mov    -0x8(%bp),%bx
   44391:	6b db 06             	imul   $0x6,%bx,%bx
   44394:	ff b7 dc 5b          	push   0x5bdc(%bx)
   44398:	8b 5e f8             	mov    -0x8(%bp),%bx
   4439b:	6b db 06             	imul   $0x6,%bx,%bx
   4439e:	ff b7 f4 5b          	push   0x5bf4(%bx)
   443a2:	8b 5e f8             	mov    -0x8(%bp),%bx
   443a5:	6b db 06             	imul   $0x6,%bx,%bx
   443a8:	ff b7 da 5b          	push   0x5bda(%bx)
   443ac:	8b 5e f8             	mov    -0x8(%bp),%bx
   443af:	6b db 06             	imul   $0x6,%bx,%bx
   443b2:	ff b7 f2 5b          	push   0x5bf2(%bx)
   443b6:	1e                   	push   %ds
   443b7:	68 13 5f             	push   $0x5f13
   443ba:	9a 53 42 00 00       	lcall  $0x0,$0x4253
   443bf:	83 c4 10             	add    $0x10,%sp
   443c2:	ff 4e f8             	decw   -0x8(%bp)
   443c5:	83 7e f8 01          	cmpw   $0x1,-0x8(%bp)
   443c9:	7d af                	jge    0x4437a
   443cb:	9a d7 29 00 00       	lcall  $0x0,$0x29d7
   443d0:	ff 4e f8             	decw   -0x8(%bp)
   443d3:	83 7e f8 01          	cmpw   $0x1,-0x8(%bp)
   443d7:	7c 03                	jl     0x443dc
   443d9:	e9 4d ff             	jmp    0x44329
   443dc:	b8 88 01             	mov    $0x188,%ax
   443df:	8e c0                	mov    %ax,%es
   443e1:	26 a1 1a 73          	mov    %es:0x731a,%ax
   443e5:	f7 d8                	neg    %ax
   443e7:	50                   	push   %ax
   443e8:	b8 88 01             	mov    $0x188,%ax
   443eb:	8e c0                	mov    %ax,%es
   443ed:	26 a1 18 73          	mov    %es:0x7318,%ax
   443f1:	f7 d8                	neg    %ax
   443f3:	50                   	push   %ax
   443f4:	68 e8 03             	push   $0x3e8
   443f7:	9a 3f 07 30 00       	lcall  $0x30,$0x73f
   443fc:	83 c4 06             	add    $0x6,%sp
   443ff:	b8 88 01             	mov    $0x188,%ax
   44402:	8e c0                	mov    %ax,%es
   44404:	26 80 3e d0 73 00    	cmpb   $0x0,%es:0x73d0
   4440a:	74 50                	je     0x4445c
   4440c:	9a 96 12 68 00       	lcall  $0x68,$0x1296
   44411:	b8 88 01             	mov    $0x188,%ax
   44414:	8e c0                	mov    %ax,%es
   44416:	26 a1 75 bb          	mov    %es:0xbb75,%ax
   4441a:	26 0b 06 77 bb       	or     %es:-0x4489,%ax
   4441f:	74 3b                	je     0x4445c
   44421:	b8 88 01             	mov    $0x188,%ax
   44424:	8e c0                	mov    %ax,%es
   44426:	26 ff 36 77 bb       	push   %es:-0x4489
   4442b:	26 ff 36 75 bb       	push   %es:-0x448b
   44430:	9a 03 00 80 00       	lcall  $0x80,$0x3
   44435:	b8 88 01             	mov    $0x188,%ax
   44438:	8e c0                	mov    %ax,%es
   4443a:	26 ff 36 77 bb       	push   %es:-0x4489
   4443f:	26 ff 36 75 bb       	push   %es:-0x448b
   44444:	9a da 00 58 00       	lcall  $0x58,$0xda
   44449:	b8 88 01             	mov    $0x188,%ax
   4444c:	8e c0                	mov    %ax,%es
   4444e:	26 c7 06 77 bb 00 00 	movw   $0x0,%es:-0x4489
   44455:	26 c7 06 75 bb 00 00 	movw   $0x0,%es:-0x448b
   4445c:	c7 46 f8 03 00       	movw   $0x3,-0x8(%bp)
   44461:	e9 aa 00             	jmp    0x4450e
   44464:	8b 5e f8             	mov    -0x8(%bp),%bx
   44467:	6b db 06             	imul   $0x6,%bx,%bx
   4446a:	8b 87 f2 5b          	mov    0x5bf2(%bx),%ax
   4446e:	8b 5e f8             	mov    -0x8(%bp),%bx
   44471:	6b db 06             	imul   $0x6,%bx,%bx
   44474:	3b 87 da 5b          	cmp    0x5bda(%bx),%ax
   44478:	75 2c                	jne    0x444a6
   4447a:	8b 5e f8             	mov    -0x8(%bp),%bx
   4447d:	6b db 06             	imul   $0x6,%bx,%bx
   44480:	8b 87 f4 5b          	mov    0x5bf4(%bx),%ax
   44484:	8b 5e f8             	mov    -0x8(%bp),%bx
   44487:	6b db 06             	imul   $0x6,%bx,%bx
   4448a:	3b 87 dc 5b          	cmp    0x5bdc(%bx),%ax
   4448e:	75 16                	jne    0x444a6
   44490:	8b 5e f8             	mov    -0x8(%bp),%bx
   44493:	6b db 06             	imul   $0x6,%bx,%bx
   44496:	8b 87 f0 5b          	mov    0x5bf0(%bx),%ax
   4449a:	8b 5e f8             	mov    -0x8(%bp),%bx
   4449d:	6b db 06             	imul   $0x6,%bx,%bx
   444a0:	3b 87 d8 5b          	cmp    0x5bd8(%bx),%ax
   444a4:	74 65                	je     0x4450b
   444a6:	6a 03                	push   $0x3
   444a8:	9a 1e 34 00 00       	lcall  $0x0,$0x341e
   444ad:	59                   	pop    %cx
   444ae:	c7 46 f8 03 00       	movw   $0x3,-0x8(%bp)
   444b3:	eb 4b                	jmp    0x44500
   444b5:	8b 5e f8             	mov    -0x8(%bp),%bx
   444b8:	6b db 06             	imul   $0x6,%bx,%bx
   444bb:	ff b7 d8 5b          	push   0x5bd8(%bx)
   444bf:	8b 5e f8             	mov    -0x8(%bp),%bx
   444c2:	6b db 06             	imul   $0x6,%bx,%bx
   444c5:	ff b7 f0 5b          	push   0x5bf0(%bx)
   444c9:	8b 5e f8             	mov    -0x8(%bp),%bx
   444cc:	6b db 06             	imul   $0x6,%bx,%bx
   444cf:	ff b7 dc 5b          	push   0x5bdc(%bx)
   444d3:	8b 5e f8             	mov    -0x8(%bp),%bx
   444d6:	6b db 06             	imul   $0x6,%bx,%bx
   444d9:	ff b7 f4 5b          	push   0x5bf4(%bx)
   444dd:	8b 5e f8             	mov    -0x8(%bp),%bx
   444e0:	6b db 06             	imul   $0x6,%bx,%bx
   444e3:	ff b7 da 5b          	push   0x5bda(%bx)
   444e7:	8b 5e f8             	mov    -0x8(%bp),%bx
   444ea:	6b db 06             	imul   $0x6,%bx,%bx
   444ed:	ff b7 f2 5b          	push   0x5bf2(%bx)
   444f1:	1e                   	push   %ds
   444f2:	68 5a 5f             	push   $0x5f5a
   444f5:	9a 53 42 00 00       	lcall  $0x0,$0x4253
   444fa:	83 c4 10             	add    $0x10,%sp
   444fd:	ff 4e f8             	decw   -0x8(%bp)
   44500:	83 7e f8 01          	cmpw   $0x1,-0x8(%bp)
   44504:	7d af                	jge    0x444b5
   44506:	9a d7 29 00 00       	lcall  $0x0,$0x29d7
   4450b:	ff 4e f8             	decw   -0x8(%bp)
   4450e:	83 7e f8 01          	cmpw   $0x1,-0x8(%bp)
   44512:	7c 03                	jl     0x44517
   44514:	e9 4d ff             	jmp    0x44464
   44517:	9a 38 01 38 01       	lcall  $0x138,$0x138
   4451c:	6a 00                	push   $0x0
   4451e:	b8 88 01             	mov    $0x188,%ax
   44521:	8e c0                	mov    %ax,%es
   44523:	26 ff 36 6b bb       	push   %es:-0x4495
   44528:	9a 2a 00 18 01       	lcall  $0x118,$0x2a
   4452d:	83 c4 04             	add    $0x4,%sp
   44530:	9a 7a 00 18 01       	lcall  $0x118,$0x7a
   44535:	b8 88 01             	mov    $0x188,%ax
   44538:	8e c0                	mov    %ax,%es
   4453a:	26 c7 06 c8 b9 00 00 	movw   $0x0,%es:-0x4638
   44541:	c7 46 fe 01 00       	movw   $0x1,-0x2(%bp)
   44546:	eb 55                	jmp    0x4459d
   44548:	c7 46 fc 01 00       	movw   $0x1,-0x4(%bp)
   4454d:	eb 1c                	jmp    0x4456b
   4454f:	8b 5e fc             	mov    -0x4(%bp),%bx
   44552:	6b db 28             	imul   $0x28,%bx,%bx
   44555:	8b 46 fe             	mov    -0x2(%bp),%ax
   44558:	d1 e0                	shl    $1,%ax
   4455a:	03 d8                	add    %ax,%bx
   4455c:	b8 88 01             	mov    $0x188,%ax
   4455f:	8e c0                	mov    %ax,%es
   44561:	26 c7 87 88 a0 00 00 	movw   $0x0,%es:-0x5f78(%bx)
   44568:	ff 46 fc             	incw   -0x4(%bp)
   4456b:	83 7e fc 1d          	cmpw   $0x1d,-0x4(%bp)
   4456f:	7c de                	jl     0x4454f
   44571:	c7 46 fc 01 00       	movw   $0x1,-0x4(%bp)
   44576:	eb 1c                	jmp    0x44594
