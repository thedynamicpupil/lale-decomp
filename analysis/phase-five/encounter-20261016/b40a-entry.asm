
lale/IST.EXE:     file format binary


Disassembly of section .data:

0005505a <.data+0x5505a>:
   5505a:	55                   	push   %bp
   5505b:	8b ec                	mov    %sp,%bp
   5505d:	83 ec 6c             	sub    $0x6c,%sp
   55060:	56                   	push   %si
   55061:	c7 46 f0 00 00       	movw   $0x0,-0x10(%bp)
   55066:	c7 06 22 63 00 00    	movw   $0x0,0x6322
   5506c:	8d 46 94             	lea    -0x6c(%bp),%ax
   5506f:	16                   	push   %ss
   55070:	50                   	push   %ax
   55071:	68 88 01             	push   $0x188
   55074:	68 2c 96             	push   $0x962c
   55077:	b9 48 00             	mov    $0x48,%cx
   5507a:	9a 7a 12 00 00       	lcall  $0x0,$0x127a
   5507f:	68 88 01             	push   $0x188
   55082:	68 2c 96             	push   $0x962c
   55085:	68 88 01             	push   $0x188
   55088:	68 4c 97             	push   $0x974c
   5508b:	b9 48 00             	mov    $0x48,%cx
   5508e:	9a 7a 12 00 00       	lcall  $0x0,$0x127a
   55093:	b8 c8 fe             	mov    $0xfec8,%ax
   55096:	a3 7e d5             	mov    %ax,0xd57e
   55099:	a3 80 d5             	mov    %ax,0xd580
   5509c:	b8 88 01             	mov    $0x188,%ax
   5509f:	8e c0                	mov    %ax,%es
   550a1:	26 c7 06 5e 3d 00 00 	movw   $0x0,%es:0x3d5e
   550a8:	b8 88 01             	mov    $0x188,%ax
   550ab:	33 d2                	xor    %dx,%dx
   550ad:	8e c0                	mov    %ax,%es
   550af:	26 89 16 6e 3d       	mov    %dx,%es:0x3d6e
   550b4:	8b c2                	mov    %dx,%ax
   550b6:	ba 88 01             	mov    $0x188,%dx
   550b9:	8e c2                	mov    %dx,%es
   550bb:	26 a3 72 3d          	mov    %ax,%es:0x3d72
   550bf:	ba 88 01             	mov    $0x188,%dx
   550c2:	8e c2                	mov    %dx,%es
   550c4:	26 a3 70 3d          	mov    %ax,%es:0x3d70
   550c8:	9a 52 00 18 01       	lcall  $0x118,$0x52
   550cd:	68 00 01             	push   $0x100
   550d0:	6a 00                	push   $0x0
   550d2:	1e                   	push   %ds
   550d3:	68 80 68             	push   $0x6880
   550d6:	9a 2a 00 48 01       	lcall  $0x148,$0x2a
   550db:	83 c4 08             	add    $0x8,%sp
   550de:	1e                   	push   %ds
   550df:	68 8b 68             	push   $0x688b
   550e2:	68 21 0c             	push   $0xc21
   550e5:	68 88 01             	push   $0x188
   550e8:	68 26 de             	push   $0xde26
   550eb:	9a 81 0a 20 00       	lcall  $0x20,$0xa81
   550f0:	83 c4 0a             	add    $0xa,%sp
   550f3:	6a 00                	push   $0x0
   550f5:	b8 88 01             	mov    $0x188,%ax
   550f8:	8e c0                	mov    %ax,%es
   550fa:	26 c4 1e 2f e5       	les    %es:-0x1ad1,%bx
   550ff:	26 ff 37             	push   %es:(%bx)
   55102:	6a 00                	push   $0x0
   55104:	6a 00                	push   $0x0
   55106:	68 80 7f             	push   $0x7f80
   55109:	9a 88 06 98 00       	lcall  $0x98,$0x688
   5510e:	52                   	push   %dx
   5510f:	50                   	push   %ax
   55110:	9a 13 1a 28 00       	lcall  $0x28,$0x1a13
   55115:	83 c4 06             	add    $0x6,%sp
   55118:	68 88 01             	push   $0x188
   5511b:	68 26 de             	push   $0xde26
   5511e:	9a 22 0b 20 00       	lcall  $0x20,$0xb22
   55123:	83 c4 04             	add    $0x4,%sp
   55126:	b8 88 01             	mov    $0x188,%ax
   55129:	8e c0                	mov    %ax,%es
   5512b:	26 83 3e 18 73 00    	cmpw   $0x0,%es:0x7318
   55131:	75 25                	jne    0x55158
   55133:	b8 88 01             	mov    $0x188,%ax
   55136:	8e c0                	mov    %ax,%es
   55138:	26 a1 1e 73          	mov    %es:0x731e,%ax
   5513c:	ba 88 01             	mov    $0x188,%dx
   5513f:	8e c2                	mov    %dx,%es
   55141:	26 01 06 70 3d       	add    %ax,%es:0x3d70
   55146:	b8 88 01             	mov    $0x188,%ax
   55149:	8e c0                	mov    %ax,%es
   5514b:	26 a1 20 73          	mov    %es:0x7320,%ax
   5514f:	ba 88 01             	mov    $0x188,%dx
   55152:	8e c2                	mov    %dx,%es
   55154:	26 a3 72 3d          	mov    %ax,%es:0x3d72
   55158:	b8 88 01             	mov    $0x188,%ax
   5515b:	8e c0                	mov    %ax,%es
   5515d:	26 80 3e d0 73 00    	cmpb   $0x0,%es:0x73d0
   55163:	74 0c                	je     0x55171
   55165:	b8 88 01             	mov    $0x188,%ax
   55168:	8e c0                	mov    %ax,%es
   5516a:	26 a1 4d bb          	mov    %es:0xbb4d,%ax
   5516e:	89 46 e0             	mov    %ax,-0x20(%bp)
   55171:	b8 88 01             	mov    $0x188,%ax
   55174:	8e c0                	mov    %ax,%es
   55176:	26 80 3e d0 73 00    	cmpb   $0x0,%es:0x73d0
   5517c:	75 03                	jne    0x55181
   5517e:	e9 99 00             	jmp    0x5521a
   55181:	b8 88 01             	mov    $0x188,%ax
   55184:	8e c0                	mov    %ax,%es
   55186:	26 80 3e 37 bb 00    	cmpb   $0x0,%es:-0x44c9
   5518c:	75 03                	jne    0x55191
   5518e:	e9 89 00             	jmp    0x5521a
   55191:	6a 00                	push   $0x0
   55193:	6a 01                	push   $0x1
   55195:	6a 00                	push   $0x0
   55197:	68 00 80             	push   $0x8000
   5519a:	9a 79 17 00 00       	lcall  $0x0,$0x1779
   5519f:	99                   	cwtd
   551a0:	d1 e0                	shl    $1,%ax
   551a2:	d1 d2                	rcl    $1,%dx
   551a4:	52                   	push   %dx
   551a5:	50                   	push   %ax
   551a6:	9a df 12 00 00       	lcall  $0x0,$0x12df
   551ab:	0b c0                	or     %ax,%ax
   551ad:	74 05                	je     0x551b4
   551af:	b8 0c 00             	mov    $0xc,%ax
   551b2:	eb 03                	jmp    0x551b7
   551b4:	b8 10 00             	mov    $0x10,%ax
   551b7:	50                   	push   %ax
   551b8:	9a 43 00 28 01       	lcall  $0x128,$0x43
   551bd:	83 c4 06             	add    $0x6,%sp
   551c0:	b8 88 01             	mov    $0x188,%ax
   551c3:	8e c0                	mov    %ax,%es
   551c5:	26 80 3e 38 bb 00    	cmpb   $0x0,%es:-0x44c8
   551cb:	74 25                	je     0x551f2
   551cd:	b8 88 01             	mov    $0x188,%ax
   551d0:	8e c0                	mov    %ax,%es
   551d2:	26 83 3e 4d bb 0c    	cmpw   $0xc,%es:-0x44b3
   551d8:	75 0d                	jne    0x551e7
   551da:	b8 88 01             	mov    $0x188,%ax
   551dd:	8e c0                	mov    %ax,%es
   551df:	26 83 2e 72 3d 1e    	subw   $0x1e,%es:0x3d72
   551e5:	eb 0b                	jmp    0x551f2
   551e7:	b8 88 01             	mov    $0x188,%ax
   551ea:	8e c0                	mov    %ax,%es
   551ec:	26 83 2e 72 3d 19    	subw   $0x19,%es:0x3d72
   551f2:	b8 88 01             	mov    $0x188,%ax
   551f5:	8e c0                	mov    %ax,%es
   551f7:	26 a1 72 3d          	mov    %es:0x3d72,%ax
   551fb:	ba 88 01             	mov    $0x188,%dx
   551fe:	8e c2                	mov    %dx,%es
   55200:	26 01 06 1a 73       	add    %ax,%es:0x731a
   55205:	6a ff                	push   $0xffff
   55207:	6a ff                	push   $0xffff
   55209:	b8 88 01             	mov    $0x188,%ax
   5520c:	8e c0                	mov    %ax,%es
   5520e:	26 a1 1a 73          	mov    %es:0x731a,%ax
   55212:	99                   	cwtd
   55213:	52                   	push   %dx
   55214:	50                   	push   %ax
   55215:	9a 25 16 68 00       	lcall  $0x68,$0x1625
   5521a:	b8 88 01             	mov    $0x188,%ax
   5521d:	8e c0                	mov    %ax,%es
   5521f:	26 a0 24 73          	mov    %es:0x7324,%al
   55223:	b4 00                	mov    $0x0,%ah
   55225:	89 46 e2             	mov    %ax,-0x1e(%bp)
   55228:	c7 06 2a 63 01 00    	movw   $0x1,0x632a
   5522e:	c7 06 2c 63 02 00    	movw   $0x2,0x632c
   55234:	c7 06 4a d5 00 00    	movw   $0x0,-0x2ab6
