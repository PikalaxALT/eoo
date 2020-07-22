	.include "asm/macros.inc"
	.include "global.inc"

	.text

	arm_func_start FUN_037F8000
FUN_037F8000: ; 0x037F8000
	stmdb sp!, {r3, lr}
	bl FUN_0237E0C8
	bl FUN_0237E18C
	ldmia sp!, {r3, lr}
	bx lr
	arm_func_end FUN_037F8000

	arm_func_start NitroMain
NitroMain: ; 0x037F8014
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, lr}
	sub sp, sp, #0x14c
	bl FUN_037F9A50
	bl FUN_037F9220
	add r2, sp, #4
	mov r0, #0x20
	mov r1, #2
	ldr r5, _037F8388 ; =0x027FFC80
	bl FUN_0380142C
	ldr r0, [sp, #4]
	add r2, sp, #0x64
	mov r0, r0, lsl #3
	str r0, [sp, #4]
	mov r1, #0x74
	bl FUN_0380142C
	ldr r0, [sp, #4]
	mov r1, #0x74
	add r0, r0, #0x100
	add r2, sp, #0xd8
	bl FUN_0380142C
	mov r7, #0
	mov r2, r7
	b _037F8118
_037F8070:
	add r1, sp, #0x64
	mov r0, #0x74
	mla r3, r2, r0, r1
	mov ip, #0
	ldr lr, _037F838C ; =0x0000FFFF
	ldr r0, _037F8390 ; =0x03801C38
	add r6, r3, #0x70
	mov r8, ip
	b _037F80DC
_037F8094:
	cmp ip, #0
	ldreqh r4, [r3]
	and r1, lr, #0xf
	mov sb, r4, asr ip
	mov r1, r1, lsl #1
	ldrh sl, [r0, r1]
	and sb, sb, #0xf
	mov r1, lr, lsl #0xc
	add ip, ip, #4
	cmp ip, #0x10
	mov sb, sb, lsl #1
	eor lr, sl, r1, lsr #16
	ldrh r1, [r0, sb]
	movhs ip, r8
	eor r1, lr, r1
	mov r1, r1, lsl #0x10
	mov lr, r1, lsr #0x10
	addhs r3, r3, #2
_037F80DC:
	cmp r3, r6
	blo _037F8094
	add r1, sp, #0x64
	mov r0, #0x74
	mla r1, r2, r0, r1
	ldrh r0, [r1, #0x72]
	cmp lr, r0
	bne _037F810C
	ldrh r0, [r1, #0x70]
	cmp r0, #0x80
	movlo r0, #1
	orrlo r7, r7, r0, lsl r2
_037F810C:
	add r0, r2, #1
	mov r0, r0, lsl #0x10
	mov r2, r0, lsr #0x10
_037F8118:
	cmp r2, #2
	blo _037F8070
	cmp r7, #1
	cmpne r7, #2
	beq _037F815C
	cmp r7, #3
	bne _037F8158
	ldrh r1, [sp, #0xd4]
	add r0, sp, #0x100
	add r1, r1, #1
	ldrh r0, [r0, #0x48]
	and r1, r1, #0x7f
	cmp r1, r0
	moveq r7, #2
	movne r7, #1
	b _037F815C
_037F8158:
	mov r7, #0
_037F815C:
	cmp r7, #0
	mov r2, #0x74
	beq _037F8180
	add r0, sp, #0x64
	sub r1, r7, #1
	mla r0, r1, r2, r0
	mov r1, r5
	bl FUN_037FAF80
	b _037F818C
_037F8180:
	mov r1, r5
	mov r0, #0
	bl FUN_037FAF6C
_037F818C:
	add r2, sp, #8
	mov r0, #0x36
	mov r1, #6
	bl FUN_0380142C
	mov r6, #0
	add r3, sp, #8
	add r2, sp, #0xe
	b _037F81CC
_037F81AC:
	mov r1, r6, lsr #0x1f
	rsb r0, r1, r6, lsl #31
	add r4, r6, #1
	add r0, r1, r0, ror #31
	sub r0, r4, r0, lsl #1
	ldrb r0, [r3, r0]
	strb r0, [r2, r6]
	mov r6, r4
_037F81CC:
	cmp r6, #6
	blt _037F81AC
	add r0, sp, #0xe
	add r1, r5, #0x74
	mov r2, #6
	bl FUN_037FB078
	add r2, sp, #0
	mov r0, #0x3c
	mov r1, #2
	bl FUN_0380142C
	ldrh r0, [sp]
	mov r0, r0, lsl #0xf
	mov r0, r0, lsr #0x10
	bl FUN_03801D14
	strh r0, [r5, #0x7a]
	ldr r0, _037F8394 ; =FUN_037F8000
	bl FUN_0237E104
	mov r0, #8
	bl FUN_037F9B9C
	mov r4, r0
	mov r0, #8
	bl FUN_037F9B88
	mov r1, r0
	mov r2, r4
	mov r0, #8
	mov r3, #1
	bl FUN_037F9CFC
	mov r4, r0
	mov r0, #8
	bl FUN_037F9B9C
	sub r2, r0, r4
	mov r0, r4
	mov r1, #0
	bl FUN_037FAFE4
	mov r1, r4
	mov r0, #8
	bl FUN_037F9A88
	mov r0, #8
	bl FUN_037F9B9C
	mov r4, r0
	mov r0, #8
	bl FUN_037F9B88
	mov r1, r0
	mov r2, r4
	mov r0, #8
	bl FUN_037F9C54
	movs r4, r0
	bpl _037F8290
	bl FUN_037FAEA0
_037F8290:
	mov r1, r4
	mov r0, #8
	bl FUN_037F9DA4
	bl FUN_037FB56C
	ldr r1, _037F8398 ; =FUN_037F83B0
	mov r0, #1
	bl FUN_037F8868
	mov r0, #1
	bl FUN_037F87B0
	ldr r3, _037F839C ; =0x04000004
	mov r0, #1
	ldrh r1, [r3]
	add r2, r3, #0x204
	ldrh r1, [r3]
	orr r1, r1, #8
	strh r1, [r3]
	ldrh r1, [r2]
	strh r0, [r2]
	bl FUN_037FAD64
	mvn r0, #0
	bl FUN_037FB6E0
	mov r0, #0xf
	bl FUN_037FB6EC
	mov r0, #0xc
	bl FUN_037FF19C
	ldr r0, _037F83A0 ; =0x038025C8
	ldr r1, _037F83A4 ; =0x038025C8
	str r0, [sp, #0x34]
	mov r0, #0x400
	str r0, [sp, #0x38]
	mov r0, #9
	str r1, [sp, #0x30]
	ldr r1, _037F83A8 ; =0x03802004
	str r0, [sp, #0x3c]
	str r1, [sp, #0x5c]
	str r0, [sp, #0x24]
	str r0, [sp, #0x20]
	mov r0, #0
	str r0, [sp, #0x50]
	mov r0, #8
	str r0, [sp, #0x54]
	str r0, [sp, #0x2c]
	str r0, [sp, #0x28]
	mov r0, #0x1c0
	str r0, [sp, #0x60]
	mov r0, #7
	str r0, [sp, #0x1c]
	str r0, [sp, #0x18]
	mov r0, #3
	str r0, [sp, #0x14]
	add r0, sp, #0x30
	add r1, sp, #0x14
	str r4, [sp, #0x58]
	bl FUN_023808C8
	mov r0, #2
	bl FUN_037FD0DC
	ldr r0, _037F83AC ; =0x03802E58
	mov r1, #0x1f
	ldr r0, [r0, #4]
	bl FUN_037F8DD4
_037F8380:
	bl FUN_037FADDC
	b _037F8380
	.align 2, 0
_037F8388: .word 0x027FFC80
_037F838C: .word 0x0000FFFF
_037F8390: .word 0x03801C38
_037F8394: .word FUN_037F8000
_037F8398: .word FUN_037F83B0
_037F839C: .word 0x04000004
_037F83A0: .word 0x038025C8
_037F83A4: .word 0x038025C8
_037F83A8: .word 0x03802004
_037F83AC: .word 0x03802E58
	arm_func_end NitroMain

	arm_func_start FUN_037F83B0
FUN_037F83B0: ; 0x037F83B0
	stmdb sp!, {r3, lr}
	ldr r3, _037F83F0 ; =0x0380FFF8
	ldr r1, _037F83F4 ; =0x03802000
	ldr r2, [r3]
	ldr r0, _037F83F8 ; =0x03803F24
	orr r2, r2, #1
	str r2, [r3]
	ldr r2, [r1]
	ldr r0, [r0]
	add r2, r2, #1
	str r2, [r1]
	cmp r0, #0
	beq _037F83E8
	bl FUN_037FE784
_037F83E8:
	ldmia sp!, {r3, lr}
	bx lr
	.align 2, 0
_037F83F0: .word 0x0380FFF8
_037F83F4: .word 0x03802000
_037F83F8: .word 0x03803F24
	arm_func_end FUN_037F83B0

	arm_func_start FUN_037F83FC
FUN_037F83FC: ; 0x037F83FC
	stmdb sp!, {lr}
	mov ip, #0x4000000
	add ip, ip, #0x210
	ldr r1, [ip, #-8]
	cmp r1, #0
	ldmeqia sp!, {pc}
	ldmia ip, {r1, r2}
	ands r1, r1, r2
	ldmeqia sp!, {pc}
	mov r3, #1
	mov r0, #0
_037F8428:
	ands r2, r1, r3, lsl r0
	addeq r0, r0, #1
	beq _037F8428
	str r2, [ip, #4]
	ldr r1, _037F8448 ; =0x03801F04
	ldr r0, [r1, r0, lsl #2]
	ldr lr, _037F844C ; =FUN_037F8450
	bx r0
	.align 2, 0
_037F8448: .word 0x03801F04
_037F844C: .word FUN_037F8450
	arm_func_end FUN_037F83FC

	arm_func_start FUN_037F8450
FUN_037F8450: ; 0x037F8450
	ldr ip, _037F856C ; =0x03802DC8
	mov r3, #0
	ldr ip, [ip]
	mov r2, #1
	cmp ip, #0
	beq _037F84A0
_037F8468:
	str r2, [ip, #0x48]
	str r3, [ip, #0x5c]
	str r3, [ip, #0x60]
	ldr r0, [ip, #0x64]
	str r3, [ip, #0x64]
	mov ip, r0
	cmp ip, #0
	bne _037F8468
	ldr ip, _037F856C ; =0x03802DC8
	str r3, [ip]
	str r3, [ip, #4]
	ldr ip, _037F8570 ; =0x03802E58
	mov r1, #1
	strh r1, [ip]
_037F84A0:
	ldr ip, _037F8570 ; =0x03802E58
	ldrh r1, [ip]
	cmp r1, #0
	ldreq pc, [sp], #4
	mov r1, #0
	strh r1, [ip]
	mov r3, #0xd2
	msr cpsr_c, r3
	add r2, ip, #8
	ldr r1, [r2]
_037F84C8:
	cmp r1, #0
	ldrneh r0, [r1, #0x48]
	cmpne r0, #1
	ldrne r1, [r1, #0x4c]
	bne _037F84C8
	cmp r1, #0
	bne _037F84F0
_037F84E4:
	mov r3, #0x92
	msr cpsr_c, r3
	ldr pc, [sp], #4
_037F84F0:
	ldr r0, [ip, #4]
	cmp r1, r0
	beq _037F84E4
	ldr r3, [ip, #0xc]
	cmp r3, #0
	beq _037F8518
	stmdb sp!, {r0, r1, ip}
	mov lr, pc
	bx r3
	arm_func_end FUN_037F8450

	arm_func_start FUN_037F8514
FUN_037F8514: ; 0x037F8514
	ldmia sp!, {r0, r1, ip}
_037F8518:
	str r1, [ip, #4]
	mrs r2, spsr
	str r2, [r0, #0]!
	ldmib sp!, {r2, r3}
	stmib r0!, {r2, r3}
	ldmib sp!, {r2, r3, ip, lr}
	stmib r0!, {r2, r3, r4, r5, r6, r7, r8, sb, sl, fp, ip, sp, lr} ^
	stmib r0!, {lr}
	mov r3, #0xd3
	msr cpsr_c, r3
	stmib r0!, {sp}
	ldr sp, [r1, #0x44]
	mov r3, #0xd2
	msr cpsr_c, r3
	ldr r2, [r1, #0]!
	msr spsr_fc, r2
	ldr lr, [r1, #0x40]
	ldmib r1!, {r0, r1, r2, r3, r4, r5, r6, r7, r8, sb, sl, fp, ip, sp, lr} ^
	mov r0, r0
	stmda sp!, {r0, r1, r2, r3, ip, lr}
	ldmia sp!, {pc}
	.align 2, 0
_037F856C: .word 0x03802DC8
_037F8570: .word 0x03802E58
	arm_func_end FUN_037F8514

	arm_func_start FUN_037F8574
FUN_037F8574: ; 0x037F8574
	stmdb sp!, {r4, r5, r6, lr}
	mov r5, r0
	mov r4, r1
	bl FUN_037FAD78
	cmp r5, #0
	ldrne r3, _037F85C8 ; =0x0380FFF8
	ldrne r2, [r3]
	mvnne r1, r4
	andne r1, r2, r1
	strne r1, [r3]
	bl FUN_037FAD8C
	ldr r6, _037F85CC ; =0x03802DC8
	ldr r5, _037F85C8 ; =0x0380FFF8
	b _037F85B4
_037F85AC:
	mov r0, r6
	bl FUN_037F8F80
_037F85B4:
	ldr r0, [r5]
	ands r0, r4, r0
	beq _037F85AC
	ldmia sp!, {r4, r5, r6, lr}
	bx lr
	.align 2, 0
_037F85C8: .word 0x0380FFF8
_037F85CC: .word 0x03802DC8
	arm_func_end FUN_037F8574

	arm_func_start FUN_037F85D0
FUN_037F85D0: ; 0x037F85D0
	stmdb sp!, {lr}
	sub sp, sp, #4
	ldr r0, _037F861C ; =0x03802DD0
	ldr r2, [r0, #0x60]
	ldr r1, _037F8620 ; =0x027FFC3C
	ldr r0, [r1]
	add r0, r0, #1
	str r0, [r1]
	cmp r2, #0
	beq _037F8600
	mov lr, pc
	bx r2
_037F8600:
	ldr r1, _037F8624 ; =0x0380FFF8
	ldr r0, [r1]
	orr r0, r0, #1
	str r0, [r1]
	add sp, sp, #4
	ldmia sp!, {lr}
	bx lr
	.align 2, 0
_037F861C: .word 0x03802DD0
_037F8620: .word 0x027FFC3C
_037F8624: .word 0x0380FFF8
	arm_func_end FUN_037F85D0

	arm_func_start FUN_037F8628
FUN_037F8628: ; 0x037F8628
	mov r0, #7
	ldr ip, _037F8634 ; =FUN_037F86A8
	bx ip
	.align 2, 0
_037F8634: .word FUN_037F86A8
	arm_func_end FUN_037F8628

	arm_func_start FUN_037F8638
FUN_037F8638: ; 0x037F8638
	mov r0, #6
	ldr ip, _037F8644 ; =FUN_037F86A8
	bx ip
	.align 2, 0
_037F8644: .word FUN_037F86A8
	arm_func_end FUN_037F8638

	arm_func_start FUN_037F8648
FUN_037F8648: ; 0x037F8648
	mov r0, #5
	ldr ip, _037F8654 ; =FUN_037F86A8
	bx ip
	.align 2, 0
_037F8654: .word FUN_037F86A8
	arm_func_end FUN_037F8648

	arm_func_start FUN_037F8658
FUN_037F8658: ; 0x037F8658
	mov r0, #4
	ldr ip, _037F8664 ; =FUN_037F86A8
	bx ip
	.align 2, 0
_037F8664: .word FUN_037F86A8
	arm_func_end FUN_037F8658

	arm_func_start FUN_037F8668
FUN_037F8668: ; 0x037F8668
	mov r0, #3
	ldr ip, _037F8674 ; =FUN_037F86A8
	bx ip
	.align 2, 0
_037F8674: .word FUN_037F86A8
	arm_func_end FUN_037F8668

	arm_func_start FUN_037F8678
FUN_037F8678: ; 0x037F8678
	mov r0, #2
	ldr ip, _037F8684 ; =FUN_037F86A8
	bx ip
	.align 2, 0
_037F8684: .word FUN_037F86A8
	arm_func_end FUN_037F8678

	arm_func_start FUN_037F8688
FUN_037F8688: ; 0x037F8688
	mov r0, #1
	ldr ip, _037F8694 ; =FUN_037F86A8
	bx ip
	.align 2, 0
_037F8694: .word FUN_037F86A8
	arm_func_end FUN_037F8688

	arm_func_start FUN_037F8698
FUN_037F8698: ; 0x037F8698
	mov r0, #0
	ldr ip, _037F86A4 ; =FUN_037F86A8
	bx ip
	.align 2, 0
_037F86A4: .word FUN_037F86A8
	arm_func_end FUN_037F8698

	arm_func_start FUN_037F86A8
FUN_037F86A8: ; 0x037F86A8
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	mov r3, #1
	mov r2, r0, lsl #1
	ldr r1, _037F8728 ; =_03801EF0
	ldrh r1, [r1, r2]
	mov r5, r3, lsl r1
	mov r1, #0xc
	mul r4, r0, r1
	ldr r2, _037F872C ; =0x03802DD0
	ldr r1, [r2, r4]
	mov r0, #0
	str r0, [r2, r4]
	cmp r1, #0
	beq _037F86F4
	ldr r0, _037F8730 ; =0x03802DD8
	ldr r0, [r0, r4]
	mov lr, pc
	bx r1
_037F86F4:
	ldr r1, _037F8734 ; =0x0380FFF8
	ldr r0, [r1]
	orr r0, r0, r5
	str r0, [r1]
	ldr r0, _037F8738 ; =0x03802DD4
	ldr r0, [r0, r4]
	cmp r0, #0
	bne _037F871C
	mov r0, r5
	bl FUN_037F8774
_037F871C:
	add sp, sp, #4
	ldmia sp!, {r4, r5, lr}
	bx lr
	.align 2, 0
_037F8728: .word _03801EF0
_037F872C: .word 0x03802DD0
_037F8730: .word 0x03802DD8
_037F8734: .word 0x0380FFF8
_037F8738: .word 0x03802DD4
	arm_func_end FUN_037F86A8

	arm_func_start FUN_037F873C
FUN_037F873C: ; 0x037F873C
	bx lr
	arm_func_end FUN_037F873C

	arm_func_start FUN_037F8740
FUN_037F8740: ; 0x037F8740
	ldr ip, _037F876C ; =0x04000208
	ldrh r3, [ip]
	mov r1, #0
	strh r1, [ip]
	ldr r2, _037F8770 ; =0x04000214
	ldr r1, [r2]
	str r0, [r2]
	ldrh r0, [ip]
	strh r3, [ip]
	mov r0, r1
	bx lr
	.align 2, 0
_037F876C: .word 0x04000208
_037F8770: .word 0x04000214
	arm_func_end FUN_037F8740

	arm_func_start FUN_037F8774
FUN_037F8774: ; 0x037F8774
	ldr ip, _037F87A8 ; =0x04000208
	ldrh r3, [ip]
	mov r1, #0
	strh r1, [ip]
	ldr r2, _037F87AC ; =0x04000210
	ldr r1, [r2]
	mvn r0, r0
	and r0, r1, r0
	str r0, [r2]
	ldrh r0, [ip]
	strh r3, [ip]
	mov r0, r1
	bx lr
	.align 2, 0
_037F87A8: .word 0x04000208
_037F87AC: .word 0x04000210
	arm_func_end FUN_037F8774

	arm_func_start FUN_037F87B0
FUN_037F87B0: ; 0x037F87B0
	ldr ip, _037F87E0 ; =0x04000208
	ldrh r3, [ip]
	mov r1, #0
	strh r1, [ip]
	ldr r2, _037F87E4 ; =0x04000210
	ldr r1, [r2]
	orr r0, r1, r0
	str r0, [r2]
	ldrh r0, [ip]
	strh r3, [ip]
	mov r0, r1
	bx lr
	.align 2, 0
_037F87E0: .word 0x04000208
_037F87E4: .word 0x04000210
	arm_func_end FUN_037F87B0

	arm_func_start FUN_037F87E8
FUN_037F87E8: ; 0x037F87E8
	ldr ip, _037F8814 ; =0x04000208
	ldrh r3, [ip]
	mov r1, #0
	strh r1, [ip]
	ldr r2, _037F8818 ; =0x04000210
	ldr r1, [r2]
	str r0, [r2]
	ldrh r0, [ip]
	strh r3, [ip]
	mov r0, r1
	bx lr
	.align 2, 0
_037F8814: .word 0x04000208
_037F8818: .word 0x04000210
	arm_func_end FUN_037F87E8

	arm_func_start FUN_037F881C
FUN_037F881C: ; 0x037F881C
	stmdb sp!, {r4, lr}
	mov r3, #0xc
	mul r4, r0, r3
	ldr r3, _037F885C ; =0x03802E00
	str r1, [r3, r4]
	ldr r1, _037F8860 ; =0x03802E08
	str r2, [r1, r4]
	mov r1, #1
	add r0, r0, #3
	mov r0, r1, lsl r0
	bl FUN_037F87B0
	mov r1, #1
	ldr r0, _037F8864 ; =0x03802E04
	str r1, [r0, r4]
	ldmia sp!, {r4, lr}
	bx lr
	.align 2, 0
_037F885C: .word 0x03802E00
_037F8860: .word 0x03802E08
_037F8864: .word 0x03802E04
	arm_func_end FUN_037F881C

	arm_func_start FUN_037F8868
FUN_037F8868: ; 0x037F8868
	stmdb sp!, {r4, r5, r6, r7, r8, sb, lr}
	sub sp, sp, #4
	mov sb, #0
	mov r7, sb
	ldr lr, _037F8904 ; =0x03801F04
	ldr r4, _037F8908 ; =0x03802E30
	ldr r6, _037F890C ; =0x03802DD0
	mov ip, sb
	mov r3, #1
	mov r2, #0xc
_037F8890:
	ands r5, r0, #1
	beq _037F88E8
	mov r8, r7
	cmp sb, #8
	blt _037F88B4
	cmp sb, #0xb
	suble r5, sb, #8
	mlale r8, r5, r2, r6
	ble _037F88D8
_037F88B4:
	cmp sb, #3
	blt _037F88CC
	cmp sb, #6
	addle r5, sb, #1
	mlale r8, r5, r2, r6
	ble _037F88D8
_037F88CC:
	cmp sb, #0
	moveq r8, r4
	strne r1, [lr, sb, lsl #2]
_037F88D8:
	cmp r8, #0
	strne r1, [r8]
	strne ip, [r8, #8]
	strne r3, [r8, #4]
_037F88E8:
	mov r0, r0, lsr #1
	add sb, sb, #1
	cmp sb, #0x19
	blt _037F8890
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, r8, sb, lr}
	bx lr
	.align 2, 0
_037F8904: .word 0x03801F04
_037F8908: .word 0x03802E30
_037F890C: .word 0x03802DD0
	arm_func_end FUN_037F8868

	arm_func_start FUN_037F8910
FUN_037F8910: ; 0x037F8910
	mov r1, #0
	ldr r0, _037F892C ; =0x03802DC8
	str r1, [r0, #4]
	str r1, [r0]
	ldr r0, _037F8930 ; =0x027FFC3C
	str r1, [r0]
	bx lr
	.align 2, 0
_037F892C: .word 0x03802DC8
_037F8930: .word 0x027FFC3C
	arm_func_end FUN_037F8910

	arm_func_start FUN_037F8934
FUN_037F8934: ; 0x037F8934
	ldr r1, _037F893C ; =FUN_037F8A38
	bx r1
	.align 2, 0
_037F893C: .word FUN_037F8A38
	arm_func_end FUN_037F8934

	arm_func_start FUN_037F8940
FUN_037F8940: ; 0x037F8940
	ldr r3, _037F89D0 ; =0x027FFFB8
	ldr r1, [r3]
	mov r2, #0
	mov r0, #0x80000000
_037F8950:
	tst r1, r0
	bne _037F896C
	add r2, r2, #1
	cmp r2, #0x20
	beq _037F896C
	mov r0, r0, lsr #1
	b _037F8950
_037F896C:
	cmp r2, #0x20
	movne r0, #0x80
	bne _037F89B4
	add r3, r3, #4
	ldr r1, [r3]
	mov r2, #0
	mov r0, #0x80000000
_037F8988:
	tst r1, r0
	bne _037F89A4
	add r2, r2, #1
	cmp r2, #0x20
	beq _037F89A4
	mov r0, r0, lsr #1
	b _037F8988
_037F89A4:
	cmp r2, #0x20
	ldr r0, _037F89D4 ; =0xFFFFFFFD
	bxeq lr
	mov r0, #0xa0
_037F89B4:
	add r0, r0, r2
	mov r1, #0x80000000
	mov r1, r1, lsr r2
	ldr r2, [r3]
	bic r2, r2, r1
	str r2, [r3]
	bx lr
	.align 2, 0
_037F89D0: .word 0x027FFFB8
_037F89D4: .word 0xFFFFFFFD
	arm_func_end FUN_037F8940

	arm_func_start FUN_037F89D8
FUN_037F89D8: ; 0x037F89D8
	ldr r3, _037F8A04 ; =0x027FFFB8
	cmp r0, #0xa0
	addpl r3, r3, #4
	subpl r0, r0, #0xa0
	submi r0, r0, #0x80
	mov r1, #0x80000000
	mov r1, r1, lsr r0
	ldr r2, [r3]
	orr r2, r2, r1
	str r2, [r3]
	bx lr
	.align 2, 0
_037F8A04: .word 0x027FFFB8
	arm_func_end FUN_037F89D8

	arm_func_start FUN_037F8A08
FUN_037F8A08: ; 0x037F8A08
	ldrh r0, [r0, #4]
	bx lr
	arm_func_end FUN_037F8A08

	arm_func_start FUN_037F8A10
FUN_037F8A10: ; 0x037F8A10
	bx lr
	arm_func_end FUN_037F8A10

	arm_func_start FUN_037F8A14
FUN_037F8A14: ; 0x037F8A14
	bx lr
	arm_func_end FUN_037F8A14

	arm_func_start FUN_037F8A18
FUN_037F8A18: ; 0x037F8A18
	ldr r1, _037F8A2C ; =0x027FFFE8
	ldr r2, _037F8A30 ; =FUN_037F8A14
	mov r3, #1
	ldr ip, _037F8A34 ; =FUN_037F8A78
	bx ip
	.align 2, 0
_037F8A2C: .word 0x027FFFE8
_037F8A30: .word FUN_037F8A14
_037F8A34: .word FUN_037F8A78
	arm_func_end FUN_037F8A18

	arm_func_start FUN_037F8A38
FUN_037F8A38: ; 0x037F8A38
	ldr r1, _037F8A4C ; =0x027FFFE8
	ldr r2, _037F8A50 ; =FUN_037F8A10
	mov r3, #1
	ldr ip, _037F8A54 ; =FUN_037F8AFC
	bx ip
	.align 2, 0
_037F8A4C: .word 0x027FFFE8
_037F8A50: .word FUN_037F8A10
_037F8A54: .word FUN_037F8AFC
	arm_func_end FUN_037F8A38

	arm_func_start FUN_037F8A58
FUN_037F8A58: ; 0x037F8A58
	ldr r1, _037F8A6C ; =0x027FFFE8
	ldr r2, _037F8A70 ; =FUN_037F8A14
	mov r3, #1
	ldr ip, _037F8A74 ; =FUN_037F8B88
	bx ip
	.align 2, 0
_037F8A6C: .word 0x027FFFE8
_037F8A70: .word FUN_037F8A14
_037F8A74: .word FUN_037F8B88
	arm_func_end FUN_037F8A58

	arm_func_start FUN_037F8A78
FUN_037F8A78: ; 0x037F8A78
	stmdb sp!, {r4, r5, r6, r7, r8, sb, lr}
	sub sp, sp, #4
	mov sb, r0
	mov r8, r1
	mov r7, r2
	movs r6, r3
	beq _037F8AA0
	bl FUN_037FADA4
	mov r5, r0
	b _037F8AA8
_037F8AA0:
	bl FUN_037FAD78
	mov r5, r0
_037F8AA8:
	mov r0, sb
	mov r1, r8
	bl FUN_037FB1A8
	movs r4, r0
	bne _037F8AD0
	cmp r7, #0
	beq _037F8ACC
	mov lr, pc
	bx r7
_037F8ACC:
	strh sb, [r8, #4]
_037F8AD0:
	cmp r6, #0
	beq _037F8AE4
	mov r0, r5
	bl FUN_037FADB8
	b _037F8AEC
_037F8AE4:
	mov r0, r5
	bl FUN_037FAD8C
_037F8AEC:
	mov r0, r4
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, r8, sb, lr}
	bx lr
	arm_func_end FUN_037F8A78

	arm_func_start FUN_037F8AFC
FUN_037F8AFC: ; 0x037F8AFC
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #4
	mov r7, r1
	mov r6, r2
	mov r5, r3
	ldrh r1, [r7, #4]
	cmp r0, r1
	mvnne r0, #1
	bne _037F8B7C
	cmp r5, #0
	beq _037F8B34
	bl FUN_037FADA4
	mov r4, r0
	b _037F8B3C
_037F8B34:
	bl FUN_037FAD78
	mov r4, r0
_037F8B3C:
	mov r0, #0
	strh r0, [r7, #4]
	cmp r6, #0
	beq _037F8B54
	mov lr, pc
	bx r6
_037F8B54:
	mov r0, #0
	str r0, [r7]
	cmp r5, #0
	beq _037F8B70
	mov r0, r4
	bl FUN_037FADB8
	b _037F8B78
_037F8B70:
	mov r0, r4
	bl FUN_037FAD8C
_037F8B78:
	mov r0, #0
_037F8B7C:
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, lr}
	bx lr
	arm_func_end FUN_037F8AFC

	arm_func_start FUN_037F8B88
FUN_037F8B88: ; 0x037F8B88
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	mov r8, r0
	mov r7, r1
	mov r6, r2
	mov r5, r3
	mov r4, #0x400
	b _037F8BAC
_037F8BA4:
	mov r0, r4
	bl FUN_037F8BD0
_037F8BAC:
	mov r0, r8
	mov r1, r7
	mov r2, r6
	mov r3, r5
	bl FUN_037F8A78
	cmp r0, #0
	bgt _037F8BA4
	ldmia sp!, {r4, r5, r6, r7, r8, lr}
	bx lr
	arm_func_end FUN_037F8B88

	arm_func_start FUN_037F8BD0
FUN_037F8BD0: ; 0x037F8BD0
	ldr ip, _037F8BD8 ; =SVC_WaitByLoop
	bx ip
	.align 2, 0
_037F8BD8: .word SVC_WaitByLoop
	arm_func_end FUN_037F8BD0

	arm_func_start FUN_037F8BDC
FUN_037F8BDC: ; 0x037F8BDC
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	ldr r0, _037F8C54 ; =0x03802E3C
	ldr r1, [r0]
	cmp r1, #0
	bne _037F8C48
	mov r1, #1
	str r1, [r0]
	mov r0, #0
	ldr r4, _037F8C58 ; =0x027FFFF0
	strh r0, [r4, #6]
	mov r5, #0x400
	b _037F8C18
_037F8C10:
	mov r0, r5
	bl FUN_037F8BD0
_037F8C18:
	ldrh r0, [r4, #4]
	cmp r0, #0x7f
	bne _037F8C10
	mvn r1, #0
	ldr r0, _037F8C5C ; =0x027FFFB8
	str r1, [r0]
	mov r0, #0x10000
	rsb r1, r0, #0
	ldr r0, _037F8C60 ; =0x027FFFBC
	str r1, [r0]
	mov r0, #0xbf
	strh r0, [r4, #6]
_037F8C48:
	add sp, sp, #4
	ldmia sp!, {r4, r5, lr}
	bx lr
	.align 2, 0
_037F8C54: .word 0x03802E3C
_037F8C58: .word 0x027FFFF0
_037F8C5C: .word 0x027FFFB8
_037F8C60: .word 0x027FFFBC
	arm_func_end FUN_037F8BDC

	arm_func_start FUN_037F8C64
FUN_037F8C64: ; 0x037F8C64
	str r1, [r0, #0x98]
	bx lr
	arm_func_end FUN_037F8C64

	arm_func_start FUN_037F8C6C
FUN_037F8C6C: ; 0x037F8C6C
	stmdb sp!, {r4, lr}
	bl FUN_037FAD78
	mov r4, #0
	ldr r1, _037F8CA0 ; =0x03802E44
	ldr r3, [r1]
	cmp r3, #0
	subne r2, r3, #1
	strne r2, [r1]
	movne r4, r3
	bl FUN_037FAD8C
	mov r0, r4
	ldmia sp!, {r4, lr}
	bx lr
	.align 2, 0
_037F8CA0: .word 0x03802E44
	arm_func_end FUN_037F8C6C

	arm_func_start FUN_037F8CA4
FUN_037F8CA4: ; 0x037F8CA4
	stmdb sp!, {r4, lr}
	bl FUN_037FAD78
	ldr r2, _037F8CD8 ; =0x03802E44
	ldr r3, [r2]
	mvn r1, #0
	cmp r3, r1
	addlo r1, r3, #1
	strlo r1, [r2]
	movlo r4, r3
	bl FUN_037FAD8C
	mov r0, r4
	ldmia sp!, {r4, lr}
	bx lr
	.align 2, 0
_037F8CD8: .word 0x03802E44
	arm_func_end FUN_037F8CA4

	arm_func_start FUN_037F8CDC
FUN_037F8CDC: ; 0x037F8CDC
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	mov r5, r0
	bl FUN_037FAD78
	ldr r1, _037F8D0C ; =0x03802E58
	ldr r4, [r1, #0xc]
	str r5, [r1, #0xc]
	bl FUN_037FAD8C
	mov r0, r4
	add sp, sp, #4
	ldmia sp!, {r4, r5, lr}
	bx lr
	.align 2, 0
_037F8D0C: .word 0x03802E58
	arm_func_end FUN_037F8CDC

	arm_func_start FUN_037F8D10
FUN_037F8D10: ; 0x037F8D10
	ldr r2, [r0]
	mov r1, #0
	str r1, [r0]
	str r1, [r2, #0x94]
	mov r0, r2
	ldr ip, _037F8D2C ; =FUN_037F8ED0
	bx ip
	.align 2, 0
_037F8D2C: .word FUN_037F8ED0
	arm_func_end FUN_037F8D10

	arm_func_start FUN_037F8D30
FUN_037F8D30: ; 0x037F8D30
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #0x34
	mov r5, r0
	add r0, sp, #8
	bl FUN_037FA61C
	ldr r0, _037F8DC8 ; =0x03802E50
	ldr r0, [r0]
	ldr r0, [r0]
	str r0, [sp, #4]
	bl FUN_037FAD78
	mov r4, r0
	add r0, sp, #8
	ldr r1, [sp, #4]
	str r0, [r1, #0x94]
	add r1, sp, #4
	str r1, [sp]
	mov r2, #0
	ldr r1, _037F8DCC ; =0x000082EA
	umull ip, r3, r5, r1
	mla r3, r5, r2, r3
	mla r3, r2, r1, r3
	mov r2, r3, lsr #6
	mov r1, ip, lsr #6
	orr r1, r1, r3, lsl #26
	ldr r3, _037F8DD0 ; =FUN_037F8D10
	bl FUN_037FA478
	mov r5, #0
	b _037F8DA8
_037F8DA0:
	mov r0, r5
	bl FUN_037F8F80
_037F8DA8:
	ldr r0, [sp, #4]
	cmp r0, #0
	bne _037F8DA0
	mov r0, r4
	bl FUN_037FAD8C
	add sp, sp, #0x34
	ldmia sp!, {r4, r5, lr}
	bx lr
	.align 2, 0
_037F8DC8: .word 0x03802E50
_037F8DCC: .word 0x000082EA
_037F8DD0: .word FUN_037F8D10
	arm_func_end FUN_037F8D30

	arm_func_start FUN_037F8DD4
FUN_037F8DD4: ; 0x037F8DD4
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	mov r6, r0
	mov r5, r1
	ldr r0, _037F8E7C ; =0x03802E58
	ldr r8, [r0, #8]
	mov r7, #0
	bl FUN_037FAD78
	mov r4, r0
	b _037F8E00
_037F8DF8:
	mov r7, r8
	ldr r8, [r8, #0x4c]
_037F8E00:
	cmp r8, #0
	beq _037F8E10
	cmp r8, r6
	bne _037F8DF8
_037F8E10:
	cmp r8, #0
	beq _037F8E24
	ldr r0, _037F8E80 ; =0x03802E68
	cmp r8, r0
	bne _037F8E34
_037F8E24:
	mov r0, r4
	bl FUN_037FAD8C
	mov r0, #0
	b _037F8E74
_037F8E34:
	ldr r0, [r8, #0x54]
	cmp r0, r5
	beq _037F8E68
	cmp r7, #0
	ldreq r1, [r6, #0x4c]
	ldreq r0, _037F8E7C ; =0x03802E58
	streq r1, [r0, #8]
	ldrne r0, [r6, #0x4c]
	strne r0, [r7, #0x4c]
	str r5, [r6, #0x54]
	mov r0, r6
	bl FUN_037F9450
	bl FUN_037F9328
_037F8E68:
	mov r0, r4
	bl FUN_037FAD8C
	mov r0, #1
_037F8E74:
	ldmia sp!, {r4, r5, r6, r7, r8, lr}
	bx lr
	.align 2, 0
_037F8E7C: .word 0x03802E58
_037F8E80: .word 0x03802E68
	arm_func_end FUN_037F8DD4

	arm_func_start FUN_037F8E84
FUN_037F8E84: ; 0x037F8E84
	stmdb sp!, {r4, lr}
	bl FUN_037FAD78
	mov r4, r0
	bl FUN_037F9328
	mov r0, r4
	bl FUN_037FAD8C
	ldmia sp!, {r4, lr}
	bx lr
	arm_func_end FUN_037F8E84

	arm_func_start FUN_037F8EA4
FUN_037F8EA4: ; 0x037F8EA4
	ldr r0, _037F8ECC ; =0x03802E58
	ldr r0, [r0, #8]
	b _037F8EB4
_037F8EB0:
	ldr r0, [r0, #0x4c]
_037F8EB4:
	cmp r0, #0
	bxeq lr
	ldr r1, [r0, #0x48]
	cmp r1, #1
	bne _037F8EB0
	bx lr
	.align 2, 0
_037F8ECC: .word 0x03802E58
	arm_func_end FUN_037F8EA4

	arm_func_start FUN_037F8ED0
FUN_037F8ED0: ; 0x037F8ED0
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	mov r5, r0
	bl FUN_037FAD78
	mov r4, r0
	mov r0, #1
	str r0, [r5, #0x48]
	bl FUN_037F9328
	mov r0, r4
	bl FUN_037FAD8C
	add sp, sp, #4
	ldmia sp!, {r4, r5, lr}
	bx lr
	arm_func_end FUN_037F8ED0

	arm_func_start FUN_037F8F04
FUN_037F8F04: ; 0x037F8F04
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #4
	mov r5, r0
	bl FUN_037FAD78
	mov r4, r0
	ldr r0, [r5]
	cmp r0, #0
	beq _037F8F6C
	mov r7, #1
	mov r6, #0
	b _037F8F4C
_037F8F30:
	mov r0, r5
	bl FUN_037F9548
	str r7, [r0, #0x48]
	str r6, [r0, #0x5c]
	str r6, [r0, #0x64]
	ldr r1, [r0, #0x64]
	str r1, [r0, #0x60]
_037F8F4C:
	ldr r0, [r5]
	cmp r0, #0
	bne _037F8F30
	mov r0, #0
	str r0, [r5, #4]
	ldr r0, [r5, #4]
	str r0, [r5]
	bl FUN_037F9328
_037F8F6C:
	mov r0, r4
	bl FUN_037FAD8C
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, lr}
	bx lr
	arm_func_end FUN_037F8F04

	arm_func_start FUN_037F8F80
FUN_037F8F80: ; 0x037F8F80
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r0
	bl FUN_037FAD78
	mov r5, r0
	ldr r0, _037F8FD0 ; =0x03802E50
	ldr r0, [r0]
	ldr r4, [r0]
	cmp r6, #0
	beq _037F8FB4
	str r6, [r4, #0x5c]
	mov r0, r6
	mov r1, r4
	bl FUN_037F957C
_037F8FB4:
	mov r0, #0
	str r0, [r4, #0x48]
	bl FUN_037F9328
	mov r0, r5
	bl FUN_037FAD8C
	ldmia sp!, {r4, r5, r6, lr}
	bx lr
	.align 2, 0
_037F8FD0: .word 0x03802E50
	arm_func_end FUN_037F8F80

	arm_func_start FUN_037F8FD4
FUN_037F8FD4: ; 0x037F8FD4
	stmdb sp!, {r4, lr}
	ldr r0, _037F9030 ; =0x03802E50
	ldr r0, [r0]
	ldr r4, [r0]
	bl FUN_037F8CA4
	mov r0, r4
	bl FUN_037F98FC
	ldr r0, [r4, #0x5c]
	cmp r0, #0
	beq _037F9004
	mov r1, r4
	bl FUN_037F94E8
_037F9004:
	mov r0, r4
	bl FUN_037F9408
	mov r0, #2
	str r0, [r4, #0x48]
	add r0, r4, #0x80
	bl FUN_037F8F04
	bl FUN_037F8C6C
	bl FUN_037F8E84
	bl FUN_037FAEA0
	ldmia sp!, {r4, lr}
	bx lr
	.align 2, 0
_037F9030: .word 0x03802E50
	arm_func_end FUN_037F8FD4

	arm_func_start FUN_037F9034
FUN_037F9034: ; 0x037F9034
	stmdb sp!, {lr}
	sub sp, sp, #4
	ldr r1, _037F9078 ; =0x03802E50
	ldr r1, [r1]
	ldr r3, [r1]
	ldr r2, [r3, #0x98]
	cmp r2, #0
	beq _037F9068
	mov r1, #0
	str r1, [r3, #0x98]
	mov lr, pc
	bx r2
	arm_func_end FUN_037F9034

	arm_func_start FUN_037F9064
FUN_037F9064: ; 0x037F9064
	bl FUN_037FAD78
_037F9068:
	bl FUN_037F8FD4
	add sp, sp, #4
	ldmia sp!, {lr}
	bx lr
	.align 2, 0
_037F9078: .word 0x03802E50
	arm_func_end FUN_037F9064

	arm_func_start FUN_037F907C
FUN_037F907C: ; 0x037F907C
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	mov r5, r0
	mov r4, r1
	ldr r1, _037F90DC ; =0x03802E40
	ldr r2, [r1]
	cmp r2, #0
	beq _037F90C8
	ldr r1, _037F90E0 ; =FUN_037F9034
	bl FUN_037F960C
	str r4, [r5, #4]
	ldr r0, [r5]
	orr r0, r0, #0x80
	str r0, [r5]
	mov r0, #1
	str r0, [r5, #0x48]
	mov r0, r5
	bl FUN_037F96AC
	b _037F90D0
_037F90C8:
	mov r0, r4
	bl FUN_037F9034
_037F90D0:
	add sp, sp, #4
	ldmia sp!, {r4, r5, lr}
	bx lr
	.align 2, 0
_037F90DC: .word 0x03802E40
_037F90E0: .word FUN_037F9034
	arm_func_end FUN_037F907C

	arm_func_start FUN_037F90E4
FUN_037F90E4: ; 0x037F90E4
	stmdb sp!, {lr}
	sub sp, sp, #4
	bl FUN_037FAD78
	ldr r0, _037F910C ; =0x03802E58
	ldr r0, [r0, #4]
	mov r1, #0
	bl FUN_037F907C
	add sp, sp, #4
	ldmia sp!, {lr}
	bx lr
	.align 2, 0
_037F910C: .word 0x03802E58
	arm_func_end FUN_037F90E4

	arm_func_start FUN_037F9110
FUN_037F9110: ; 0x037F9110
	stmdb sp!, {r4, r5, r6, r7, r8, sb, lr}
	sub sp, sp, #4
	mov sb, r0
	mov r8, r1
	mov r7, r2
	mov r6, r3
	bl FUN_037FAD78
	mov r4, r0
	bl FUN_037F95F4
	ldr r1, [sp, #0x24]
	str r1, [sb, #0x54]
	str r0, [sb, #0x50]
	mov r0, #0
	str r0, [sb, #0x48]
	str r0, [sb, #0x58]
	mov r0, sb
	bl FUN_037F9450
	str r6, [sb, #0x78]
	ldr r0, [sp, #0x20]
	sub r5, r6, r0
	str r5, [sb, #0x74]
	mov r2, #0
	str r2, [sb, #0x7c]
	ldr r1, _037F9214 ; =0xD73BFDF7
	ldr r0, [sb, #0x78]
	str r1, [r0, #-4]
	ldr r1, _037F9218 ; =0xFBDD37BB
	ldr r0, [sb, #0x74]
	str r1, [r0]
	str r2, [sb, #0x84]
	ldr r0, [sb, #0x84]
	str r0, [sb, #0x80]
	mov r0, sb
	mov r1, r8
	sub r2, r6, #4
	bl FUN_037F960C
	str r7, [sb, #4]
	ldr r0, _037F921C ; =FUN_037F90E4
	str r0, [sb, #0x3c]
	mov r0, #0
	add r1, r5, #4
	ldr r2, [sp, #0x20]
	sub r2, r2, #8
	bl FUN_037FAF6C
	mov r1, #0
	str r1, [sb, #0x68]
	str r1, [sb, #0x6c]
	str r1, [sb, #0x70]
	mov r0, sb
	bl FUN_037F8C64
	mov r0, #0
	str r0, [sb, #0x5c]
	str r0, [sb, #0x64]
	ldr r1, [sb, #0x64]
	str r1, [sb, #0x60]
	add r1, sb, #0x88
	mov r2, #0xc
	bl FUN_037FAF6C
	mov r0, #0
	str r0, [sb, #0x94]
	mov r0, r4
	bl FUN_037FAD8C
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, r8, sb, lr}
	bx lr
	.align 2, 0
_037F9214: .word 0xD73BFDF7
_037F9218: .word 0xFBDD37BB
_037F921C: .word FUN_037F90E4
	arm_func_end FUN_037F9110

	arm_func_start FUN_037F9220
FUN_037F9220: ; 0x037F9220
	stmdb sp!, {lr}
	sub sp, sp, #4
	ldr r0, _037F92F8 ; =0x03802E54
	ldr r1, [r0]
	cmp r1, #0
	bne _037F92EC
	mov r2, #1
	str r2, [r0]
	ldr r1, _037F92FC ; =0x03802E5C
	ldr r0, _037F9300 ; =0x03802E50
	str r1, [r0]
	mov r0, #0x10
	ldr r1, _037F9304 ; =0x03802F0C
	str r0, [r1, #0x54]
	mov r0, #0
	str r0, [r1, #0x50]
	str r2, [r1, #0x48]
	str r0, [r1, #0x4c]
	str r0, [r1, #0x58]
	ldr r0, _037F9308 ; =0x03802E58
	str r1, [r0, #8]
	str r1, [r0, #4]
	ldr r2, _037F930C ; =0x00000400
	cmp r2, #0
	ldrle r0, _037F9310 ; =FUN_037F8000
	suble r2, r0, r2
	ldrgt r1, _037F9314 ; =0x00000200
	ldrgt r0, _037F9318 ; =0x0380FF80
	subgt r0, r0, r1
	subgt r2, r0, r2
	ldr r1, _037F9314 ; =0x00000200
	ldr r0, _037F9318 ; =0x0380FF80
	sub r3, r0, r1
	ldr r1, _037F9304 ; =0x03802F0C
	str r3, [r1, #0x78]
	str r2, [r1, #0x74]
	mov r0, #0
	str r0, [r1, #0x7c]
	ldr r2, _037F931C ; =0xD73BFDF7
	str r2, [r3, #-4]
	ldr r3, _037F9320 ; =0xFBDD37BB
	ldr r2, [r1, #0x74]
	str r3, [r2]
	str r0, [r1, #0x84]
	str r0, [r1, #0x80]
	ldr r1, _037F9308 ; =0x03802E58
	strh r0, [r1]
	strh r0, [r1, #2]
	ldr r2, _037F9324 ; =0x027FFFA4
	str r1, [r2]
	bl FUN_037F8CDC
_037F92EC:
	add sp, sp, #4
	ldmia sp!, {lr}
	bx lr
	.align 2, 0
_037F92F8: .word 0x03802E54
_037F92FC: .word 0x03802E5C
_037F9300: .word 0x03802E50
_037F9304: .word 0x03802F0C
_037F9308: .word 0x03802E58
_037F930C: .word 0x00000400
_037F9310: .word FUN_037F8000
_037F9314: .word 0x00000200
_037F9318: .word 0x0380FF80
_037F931C: .word 0xD73BFDF7
_037F9320: .word 0xFBDD37BB
_037F9324: .word 0x027FFFA4
	arm_func_end FUN_037F9220

	arm_func_start FUN_037F9328
FUN_037F9328: ; 0x037F9328
	stmdb sp!, {r4, r5, r6, lr}
	ldr r0, _037F93F8 ; =0x03802E44
	ldr r0, [r0]
	cmp r0, #0
	bne _037F93F0
	ldr r4, _037F93FC ; =0x03802E58
	ldrh r0, [r4, #2]
	cmp r0, #0
	bne _037F9358
	bl FUN_037FADD0
	cmp r0, #0x12
	bne _037F9364
_037F9358:
	mov r0, #1
	strh r0, [r4]
	b _037F93F0
_037F9364:
	ldr r0, _037F9400 ; =0x03802E50
	ldr r0, [r0]
	ldr r6, [r0]
	bl FUN_037F8EA4
	mov r5, r0
	cmp r6, r5
	beq _037F93F0
	cmp r5, #0
	beq _037F93F0
	ldr r0, [r6, #0x48]
	cmp r0, #2
	beq _037F93A4
	mov r0, r6
	bl FUN_037F9678
	cmp r0, #0
	bne _037F93F0
_037F93A4:
	ldr r0, _037F9404 ; =0x03802E4C
	ldr r2, [r0]
	cmp r2, #0
	beq _037F93C4
	mov r0, r6
	mov r1, r5
	mov lr, pc
	bx r2
_037F93C4:
	ldr r2, [r4, #0xc]
	cmp r2, #0
	beq _037F93E0
	mov r0, r6
	mov r1, r5
	mov lr, pc
	bx r2
_037F93E0:
	ldr r0, _037F93FC ; =0x03802E58
	str r5, [r0, #4]
	mov r0, r5
	bl FUN_037F96AC
_037F93F0:
	ldmia sp!, {r4, r5, r6, lr}
	bx lr
	.align 2, 0
_037F93F8: .word 0x03802E44
_037F93FC: .word 0x03802E58
_037F9400: .word 0x03802E50
_037F9404: .word 0x03802E4C
	arm_func_end FUN_037F9328

	arm_func_start FUN_037F9408
FUN_037F9408: ; 0x037F9408
	ldr r1, _037F944C ; =0x03802E58
	ldr r2, [r1, #8]
	mov r1, #0
	b _037F9420
_037F9418:
	mov r1, r2
	ldr r2, [r2, #0x4c]
_037F9420:
	cmp r2, #0
	beq _037F9430
	cmp r2, r0
	bne _037F9418
_037F9430:
	cmp r1, #0
	ldreq r1, [r0, #0x4c]
	ldreq r0, _037F944C ; =0x03802E58
	streq r1, [r0, #8]
	ldrne r0, [r0, #0x4c]
	strne r0, [r1, #0x4c]
	bx lr
	.align 2, 0
_037F944C: .word 0x03802E58
	arm_func_end FUN_037F9408

	arm_func_start FUN_037F9450
FUN_037F9450: ; 0x037F9450
	stmdb sp!, {lr}
	sub sp, sp, #4
	ldr r1, _037F94B4 ; =0x03802E58
	ldr r3, [r1, #8]
	mov lr, r3
	mov ip, #0
	b _037F9474
_037F946C:
	mov ip, lr
	ldr lr, [lr, #0x4c]
_037F9474:
	cmp lr, #0
	beq _037F948C
	ldr r2, [lr, #0x54]
	ldr r1, [r0, #0x54]
	cmp r2, r1
	blo _037F946C
_037F948C:
	cmp ip, #0
	streq r3, [r0, #0x4c]
	ldreq r1, _037F94B4 ; =0x03802E58
	streq r0, [r1, #8]
	ldrne r1, [ip, #0x4c]
	strne r1, [r0, #0x4c]
	strne r0, [ip, #0x4c]
	add sp, sp, #4
	ldmia sp!, {lr}
	bx lr
	.align 2, 0
_037F94B4: .word 0x03802E58
	arm_func_end FUN_037F9450

	arm_func_start FUN_037F94B8
FUN_037F94B8: ; 0x037F94B8
	ldr r2, [r0]
	cmp r2, #0
	beq _037F94E0
	ldr r1, [r2, #0x10]
	str r1, [r0]
	cmp r1, #0
	movne r0, #0
	strne r0, [r1, #0x14]
	moveq r1, #0
	streq r1, [r0, #4]
_037F94E0:
	mov r0, r2
	bx lr
	arm_func_end FUN_037F94B8

	arm_func_start FUN_037F94E8
FUN_037F94E8: ; 0x037F94E8
	stmdb sp!, {lr}
	sub sp, sp, #4
	ldr r2, [r0]
	mov lr, r2
	b _037F9530
_037F94FC:
	ldr ip, [lr, #0x64]
	cmp lr, r1
	bne _037F952C
	ldr r3, [lr, #0x60]
	cmp r2, lr
	streq ip, [r0]
	strne ip, [r3, #0x64]
	ldr r1, [r0, #4]
	cmp r1, lr
	streq r3, [r0, #4]
	strne r3, [ip, #0x60]
	b _037F9538
_037F952C:
	mov lr, ip
_037F9530:
	cmp lr, #0
	bne _037F94FC
_037F9538:
	mov r0, lr
	add sp, sp, #4
	ldmia sp!, {lr}
	bx lr
	arm_func_end FUN_037F94E8

	arm_func_start FUN_037F9548
FUN_037F9548: ; 0x037F9548
	ldr r2, [r0]
	cmp r2, #0
	beq _037F9574
	ldr r1, [r2, #0x64]
	str r1, [r0]
	cmp r1, #0
	movne r0, #0
	strne r0, [r1, #0x60]
	moveq r1, #0
	streq r1, [r0, #4]
	streq r1, [r2, #0x5c]
_037F9574:
	mov r0, r2
	bx lr
	arm_func_end FUN_037F9548

	arm_func_start FUN_037F957C
FUN_037F957C: ; 0x037F957C
	ldr ip, [r0]
	b _037F9590
_037F9584:
	cmp ip, r1
	bxeq lr
	ldr ip, [ip, #0x64]
_037F9590:
	cmp ip, #0
	beq _037F95A8
	ldr r3, [ip, #0x54]
	ldr r2, [r1, #0x54]
	cmp r3, r2
	bls _037F9584
_037F95A8:
	cmp ip, #0
	bne _037F95D4
	ldr r2, [r0, #4]
	cmp r2, #0
	streq r1, [r0]
	strne r1, [r2, #0x64]
	str r2, [r1, #0x60]
	mov r2, #0
	str r2, [r1, #0x64]
	str r1, [r0, #4]
	bx lr
_037F95D4:
	ldr r2, [ip, #0x60]
	cmp r2, #0
	streq r1, [r0]
	strne r1, [r2, #0x64]
	str r2, [r1, #0x60]
	str ip, [r1, #0x64]
	str r1, [ip, #0x60]
	bx lr
	arm_func_end FUN_037F957C

	arm_func_start FUN_037F95F4
FUN_037F95F4: ; 0x037F95F4
	ldr r1, _037F9608 ; =0x03802E48
	ldr r0, [r1]
	add r0, r0, #1
	str r0, [r1]
	bx lr
	.align 2, 0
_037F9608: .word 0x03802E48
	arm_func_end FUN_037F95F4

	arm_func_start FUN_037F960C
FUN_037F960C: ; 0x037F960C
	add r1, r1, #4
	str r1, [r0, #0x40]
	str r2, [r0, #0x44]
	sub r2, r2, #0x40
	tst r2, #4
	subne r2, r2, #4
	str r2, [r0, #0x38]
	ands r1, r1, #1
	movne r1, #0x3f
	moveq r1, #0x1f
	str r1, [r0]
	mov r1, #0
	str r1, [r0, #4]
	str r1, [r0, #8]
	str r1, [r0, #0xc]
	str r1, [r0, #0x10]
	str r1, [r0, #0x14]
	str r1, [r0, #0x18]
	str r1, [r0, #0x1c]
	str r1, [r0, #0x20]
	str r1, [r0, #0x24]
	str r1, [r0, #0x28]
	str r1, [r0, #0x2c]
	str r1, [r0, #0x30]
	str r1, [r0, #0x34]
	str r1, [r0, #0x3c]
	bx lr
	arm_func_end FUN_037F960C

	arm_func_start FUN_037F9678
FUN_037F9678: ; 0x037F9678
	add r1, r0, #0
	mrs r2, cpsr
	str r2, [r1], #4
	mov r0, #0xd3
	msr cpsr_c, r0
	str sp, [r1, #0x40]
	msr cpsr_c, r2
	mov r0, #1
	stmia r1, {r0, r1, r2, r3, r4, r5, r6, r7, r8, sb, sl, fp, ip, sp, lr}
	add r0, pc, #0x8 ; =FUN_037F96AC
	str r0, [r1, #0x3c]
	mov r0, #0
	bx lr
	arm_func_end FUN_037F9678

	arm_func_start FUN_037F96AC
FUN_037F96AC: ; 0x037F96AC
	mrs r1, cpsr
	bic r1, r1, #0x1f
	orr r1, r1, #0xd3
	msr cpsr_c, r1
	ldr r1, [r0], #4
	msr spsr_fsxc, r1
	ldr sp, [r0, #0x40]
	ldr lr, [r0, #0x3c]
	ldmia r0, {r0, r1, r2, r3, r4, r5, r6, r7, r8, sb, sl, fp, ip, sp, lr} ^
	mov r0, r0
	subs pc, lr, #4
	arm_func_end FUN_037F96AC

	arm_func_start FUN_037F96D8
FUN_037F96D8: ; 0x037F96D8
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	mov r6, r0
	mov r5, r1
	mov r7, r2
	bl FUN_037FAD78
	mov r4, r0
	and r8, r7, #1
	add r7, r6, #8
	b _037F971C
_037F96FC:
	cmp r8, #0
	bne _037F9714
	mov r0, r4
	bl FUN_037FAD8C
	mov r0, #0
	b _037F9748
_037F9714:
	mov r0, r7
	bl FUN_037F8F80
_037F971C:
	ldr r0, [r6, #0x1c]
	cmp r0, #0
	beq _037F96FC
	cmp r5, #0
	ldrne r1, [r6, #0x10]
	ldrne r0, [r6, #0x18]
	ldrne r0, [r1, r0, lsl #2]
	strne r0, [r5]
	mov r0, r4
	bl FUN_037FAD8C
	mov r0, #1
_037F9748:
	ldmia sp!, {r4, r5, r6, r7, r8, lr}
	bx lr
	arm_func_end FUN_037F96D8

	arm_func_start FUN_037F9750
FUN_037F9750: ; 0x037F9750
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	mov r6, r0
	mov r5, r1
	mov r7, r2
	bl FUN_037FAD78
	mov r4, r0
	and r8, r7, #1
	add r7, r6, #8
	b _037F9794
_037F9774:
	cmp r8, #0
	bne _037F978C
	mov r0, r4
	bl FUN_037FAD8C
	mov r0, #0
	b _037F97E8
_037F978C:
	mov r0, r7
	bl FUN_037F8F80
_037F9794:
	ldr r0, [r6, #0x1c]
	cmp r0, #0
	beq _037F9774
	cmp r5, #0
	ldrne r1, [r6, #0x10]
	ldrne r0, [r6, #0x18]
	ldrne r0, [r1, r0, lsl #2]
	strne r0, [r5]
	ldr r0, [r6, #0x18]
	add r0, r0, #1
	ldr r1, [r6, #0x14]
	bl FUN_03801848
	str r1, [r6, #0x18]
	ldr r0, [r6, #0x1c]
	sub r0, r0, #1
	str r0, [r6, #0x1c]
	mov r0, r6
	bl FUN_037F8F04
	mov r0, r4
	bl FUN_037FAD8C
	mov r0, #1
_037F97E8:
	ldmia sp!, {r4, r5, r6, r7, r8, lr}
	bx lr
	arm_func_end FUN_037F9750

	arm_func_start FUN_037F97F0
FUN_037F97F0: ; 0x037F97F0
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #4
	mov r6, r0
	mov r5, r1
	mov r7, r2
	bl FUN_037FAD78
	mov r4, r0
	and r7, r7, #1
	b _037F9834
_037F9814:
	cmp r7, #0
	bne _037F982C
	mov r0, r4
	bl FUN_037FAD8C
	mov r0, #0
	b _037F9878
_037F982C:
	mov r0, r6
	bl FUN_037F8F80
_037F9834:
	ldr r2, [r6, #0x1c]
	ldr r1, [r6, #0x14]
	cmp r1, r2
	ble _037F9814
	ldr r0, [r6, #0x18]
	add r0, r0, r2
	bl FUN_03801848
	ldr r0, [r6, #0x10]
	str r5, [r0, r1, lsl #2]
	ldr r0, [r6, #0x1c]
	add r0, r0, #1
	str r0, [r6, #0x1c]
	add r0, r6, #8
	bl FUN_037F8F04
	mov r0, r4
	bl FUN_037FAD8C
	mov r0, #1
_037F9878:
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, lr}
	bx lr
	arm_func_end FUN_037F97F0

	arm_func_start FUN_037F9884
FUN_037F9884: ; 0x037F9884
	mov ip, #0
	str ip, [r0, #4]
	ldr r3, [r0, #4]
	str r3, [r0]
	str ip, [r0, #0xc]
	ldr r3, [r0, #0xc]
	str r3, [r0, #8]
	str r1, [r0, #0x10]
	str r2, [r0, #0x14]
	str ip, [r0, #0x18]
	str ip, [r0, #0x1c]
	bx lr
	arm_func_end FUN_037F9884

	arm_func_start FUN_037F98B4
FUN_037F98B4: ; 0x037F98B4
	ldr r2, [r1, #0x10]
	ldr r1, [r1, #0x14]
	cmp r2, #0
	streq r1, [r0, #0x70]
	strne r1, [r2, #0x14]
	cmp r1, #0
	streq r2, [r0, #0x6c]
	strne r2, [r1, #0x10]
	bx lr
	arm_func_end FUN_037F98B4

	arm_func_start FUN_037F98D8
FUN_037F98D8: ; 0x037F98D8
	ldr r2, [r0, #0x70]
	cmp r2, #0
	streq r1, [r0, #0x6c]
	strne r1, [r2, #0x10]
	str r2, [r1, #0x14]
	mov r2, #0
	str r2, [r1, #0x10]
	str r1, [r0, #0x70]
	bx lr
	arm_func_end FUN_037F98D8

	arm_func_start FUN_037F98FC
FUN_037F98FC: ; 0x037F98FC
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r0
	add r5, r6, #0x6c
	mov r4, #0
	b _037F9924
_037F9910:
	mov r0, r5
	bl FUN_037F94B8
	str r4, [r0, #0xc]
	str r4, [r0, #8]
	bl FUN_037F8F04
_037F9924:
	ldr r0, [r6, #0x6c]
	cmp r0, #0
	bne _037F9910
	ldmia sp!, {r4, r5, r6, lr}
	bx lr
	arm_func_end FUN_037F98FC

	arm_func_start FUN_037F9938
FUN_037F9938: ; 0x037F9938
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	mov r5, r0
	bl FUN_037FAD78
	mov r4, r0
	ldr r0, _037F99A4 ; =0x03802E58
	ldr r0, [r0, #4]
	ldr r1, [r5, #8]
	cmp r1, r0
	bne _037F9990
	ldr r1, [r5, #0xc]
	sub r1, r1, #1
	str r1, [r5, #0xc]
	ldr r1, [r5, #0xc]
	cmp r1, #0
	bne _037F9990
	mov r1, r5
	bl FUN_037F98B4
	mov r0, #0
	str r0, [r5, #8]
	mov r0, r5
	bl FUN_037F8F04
_037F9990:
	mov r0, r4
	bl FUN_037FAD8C
	add sp, sp, #4
	ldmia sp!, {r4, r5, lr}
	bx lr
	.align 2, 0
_037F99A4: .word 0x03802E58
	arm_func_end FUN_037F9938

	arm_func_start FUN_037F99A8
FUN_037F99A8: ; 0x037F99A8
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #4
	mov r5, r0
	bl FUN_037FAD78
	mov r4, r0
	ldr r0, _037F9A30 ; =0x03802E58
	ldr r7, [r0, #4]
	mov r6, #0
_037F99C8:
	ldr r0, [r5, #8]
	cmp r0, #0
	bne _037F99F4
	str r7, [r5, #8]
	ldr r0, [r5, #0xc]
	add r0, r0, #1
	str r0, [r5, #0xc]
	mov r0, r7
	mov r1, r5
	bl FUN_037F98D8
	b _037F9A1C
_037F99F4:
	cmp r0, r7
	ldreq r0, [r5, #0xc]
	addeq r0, r0, #1
	streq r0, [r5, #0xc]
	beq _037F9A1C
	str r5, [r7, #0x68]
	mov r0, r5
	bl FUN_037F8F80
	str r6, [r7, #0x68]
	b _037F99C8
_037F9A1C:
	mov r0, r4
	bl FUN_037FAD8C
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, lr}
	bx lr
	.align 2, 0
_037F9A30: .word 0x03802E58
	arm_func_end FUN_037F99A8

	arm_func_start FUN_037F9A34
FUN_037F9A34: ; 0x037F9A34
	mov r2, #0
	str r2, [r0, #4]
	ldr r1, [r0, #4]
	str r1, [r0]
	str r2, [r0, #8]
	str r2, [r0, #0xc]
	bx lr
	arm_func_end FUN_037F9A34

	arm_func_start FUN_037F9A50
FUN_037F9A50: ; 0x037F9A50
	stmdb sp!, {lr}
	sub sp, sp, #4
	bl FUN_037F9BB0
	bl FUN_037FB1B0
	bl FUN_037F8BDC
	bl FUN_037F8910
	bl FUN_037FA1C8
	bl FUN_037FA63C
	bl FUN_037F9220
	bl FUN_037FAE60
	bl FUN_037FCB44
	add sp, sp, #4
	ldmia sp!, {lr}
	bx lr
	arm_func_end FUN_037F9A50

	arm_func_start FUN_037F9A88
FUN_037F9A88: ; 0x037F9A88
	mov r0, r0, lsl #2
	add r0, r0, #0x2700000
	add r0, r0, #0xff000
	str r1, [r0, #0xda0]
	bx lr
	arm_func_end FUN_037F9A88

	arm_func_start FUN_037F9A9C
FUN_037F9A9C: ; 0x037F9A9C
	mov r0, r0, lsl #2
	add r0, r0, #0x2700000
	add r0, r0, #0xff000
	str r1, [r0, #0xdc4]
	bx lr
	arm_func_end FUN_037F9A9C

	arm_func_start FUN_037F9AB0
FUN_037F9AB0: ; 0x037F9AB0
	cmp r0, #1
	beq _037F9ACC
	cmp r0, #7
	beq _037F9AD4
	cmp r0, #8
	beq _037F9AE4
	b _037F9AF8
_037F9ACC:
	ldr r0, _037F9B00 ; =0x027E0000
	bx lr
_037F9AD4:
	ldr r0, _037F9B04 ; =0x03804548
	cmp r0, #0x3800000
	movhi r0, #0x3800000
	bx lr
_037F9AE4:
	mov r0, #0x3800000
	ldr r1, _037F9B04 ; =0x03804548
	cmp r1, #0x3800000
	movhi r0, r1
	bx lr
_037F9AF8:
	mov r0, #0
	bx lr
	.align 2, 0
_037F9B00: .word 0x027E0000
_037F9B04: .word 0x03804548
	arm_func_end FUN_037F9AB0

	arm_func_start FUN_037F9B08
FUN_037F9B08: ; 0x037F9B08
	cmp r0, #1
	beq _037F9B24
	cmp r0, #7
	beq _037F9B2C
	cmp r0, #8
	beq _037F9B34
	b _037F9B6C
_037F9B24:
	ldr r0, _037F9B74 ; =0x027FF000
	bx lr
_037F9B2C:
	mov r0, #0x3800000
	bx lr
_037F9B34:
	ldr r1, _037F9B78 ; =0x00000200
	ldr r0, _037F9B7C ; =0x0380FF80
	sub r2, r0, r1
	mov r0, #0x3800000
	ldr r1, _037F9B80 ; =0x03804548
	cmp r1, #0x3800000
	movhi r0, r1
	ldr r1, _037F9B84 ; =0x00000400
	cmp r1, #0
	bxeq lr
	cmp r1, #0
	sublt r0, r0, r1
	subge r0, r2, r1
	bx lr
_037F9B6C:
	mov r0, #0
	bx lr
	.align 2, 0
_037F9B74: .word 0x027FF000
_037F9B78: .word 0x00000200
_037F9B7C: .word 0x0380FF80
_037F9B80: .word 0x03804548
_037F9B84: .word 0x00000400
	arm_func_end FUN_037F9B08

	arm_func_start FUN_037F9B88
FUN_037F9B88: ; 0x037F9B88
	mov r0, r0, lsl #2
	add r0, r0, #0x2700000
	add r0, r0, #0xff000
	ldr r0, [r0, #0xda0]
	bx lr
	arm_func_end FUN_037F9B88

	arm_func_start FUN_037F9B9C
FUN_037F9B9C: ; 0x037F9B9C
	mov r0, r0, lsl #2
	add r0, r0, #0x2700000
	add r0, r0, #0xff000
	ldr r0, [r0, #0xdc4]
	bx lr
	arm_func_end FUN_037F9B9C

	arm_func_start FUN_037F9BB0
FUN_037F9BB0: ; 0x037F9BB0
	stmdb sp!, {lr}
	sub sp, sp, #4
	ldr r1, _037F9C50 ; =0x03802FB0
	ldr r0, [r1]
	cmp r0, #0
	bne _037F9C44
	mov r0, #1
	str r0, [r1]
	bl FUN_037F9B08
	mov r1, r0
	mov r0, #1
	bl FUN_037F9A9C
	mov r0, #1
	bl FUN_037F9AB0
	mov r1, r0
	mov r0, #1
	bl FUN_037F9A88
	mov r0, #7
	bl FUN_037F9B08
	mov r1, r0
	mov r0, #7
	bl FUN_037F9A9C
	mov r0, #7
	bl FUN_037F9AB0
	mov r1, r0
	mov r0, #7
	bl FUN_037F9A88
	mov r0, #8
	bl FUN_037F9B08
	mov r1, r0
	mov r0, #8
	bl FUN_037F9A9C
	mov r0, #8
	bl FUN_037F9AB0
	mov r1, r0
	mov r0, #8
	bl FUN_037F9A88
_037F9C44:
	add sp, sp, #4
	ldmia sp!, {lr}
	bx lr
	.align 2, 0
_037F9C50: .word 0x03802FB0
	arm_func_end FUN_037F9BB0

	arm_func_start FUN_037F9C54
FUN_037F9C54: ; 0x037F9C54
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #4
	mov r4, r0
	mov r6, r1
	mov r5, r2
	bl FUN_037FAD78
	ldr r1, _037F9CF8 ; =0x03802FB4
	ldr r7, [r1, r4, lsl #2]
	add r1, r6, #0x1f
	bic r6, r1, #0x1f
	bic r5, r5, #0x1f
	mov r4, #0
	ldr lr, [r7, #4]
	mov r1, #0xc
	b _037F9CDC
_037F9C90:
	ldr r3, [r7, #0x10]
	mul r2, r4, r1
	add ip, r3, r2
	ldr r2, [r3, r2]
	cmp r2, #0
	bge _037F9CD8
	sub r1, r5, r6
	str r1, [ip]
	mov r2, #0
	str r2, [r6]
	str r2, [r6, #4]
	ldr r1, [ip]
	str r1, [r6, #8]
	str r6, [ip, #4]
	str r2, [ip, #8]
	bl FUN_037FAD8C
	mov r0, r4
	b _037F9CEC
_037F9CD8:
	add r4, r4, #1
_037F9CDC:
	cmp r4, lr
	blt _037F9C90
	bl FUN_037FAD8C
	mvn r0, #0
_037F9CEC:
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, lr}
	bx lr
	.align 2, 0
_037F9CF8: .word 0x03802FB4
	arm_func_end FUN_037F9C54

	arm_func_start FUN_037F9CFC
FUN_037F9CFC: ; 0x037F9CFC
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	mov r7, r0
	mov r5, r1
	mov r4, r2
	mov r6, r3
	bl FUN_037FAD78
	ldr r1, _037F9DA0 ; =0x03802FB4
	str r5, [r1, r7, lsl #2]
	mov r2, #0xc
	mul r1, r6, r2
	add r3, r5, #0x14
	str r3, [r5, #0x10]
	str r6, [r5, #4]
	mov r8, #0
	mvn lr, #0
	mov ip, r8
	b _037F9D60
_037F9D40:
	ldr r6, [r5, #0x10]
	mul r3, r8, r2
	add r7, r6, r3
	str lr, [r6, r3]
	str ip, [r7, #8]
	ldr r3, [r7, #8]
	str r3, [r7, #4]
	add r8, r8, #1
_037F9D60:
	ldr r3, [r5, #4]
	cmp r8, r3
	blt _037F9D40
	mvn r2, #0
	str r2, [r5]
	ldr r2, [r5, #0x10]
	add r1, r2, r1
	add r1, r1, #0x1f
	bic r1, r1, #0x1f
	str r1, [r5, #8]
	bic r1, r4, #0x1f
	str r1, [r5, #0xc]
	bl FUN_037FAD8C
	ldr r0, [r5, #8]
	ldmia sp!, {r4, r5, r6, r7, r8, lr}
	bx lr
	.align 2, 0
_037F9DA0: .word 0x03802FB4
	arm_func_end FUN_037F9CFC

	arm_func_start FUN_037F9DA4
FUN_037F9DA4: ; 0x037F9DA4
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	mov r4, r0
	mov r5, r1
	bl FUN_037FAD78
	ldr r1, _037F9DDC ; =0x03802FB4
	ldr r1, [r1, r4, lsl #2]
	ldr r4, [r1]
	str r5, [r1]
	bl FUN_037FAD8C
	mov r0, r4
	add sp, sp, #4
	ldmia sp!, {r4, r5, lr}
	bx lr
	.align 2, 0
_037F9DDC: .word 0x03802FB4
	arm_func_end FUN_037F9DA4

	arm_func_start FUN_037F9DE0
FUN_037F9DE0: ; 0x037F9DE0
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #4
	mov r7, r0
	mov r4, r1
	mov r6, r2
	bl FUN_037FAD78
	mov r5, r0
	ldr r0, _037F9E50 ; =0x03802FB4
	ldr r0, [r0, r7, lsl #2]
	cmp r4, #0
	ldrlt r4, [r0]
	sub r6, r6, #0x20
	ldr r1, [r0, #0x10]
	mov r0, #0xc
	mla r7, r4, r0, r1
	ldr r0, [r7, #8]
	mov r1, r6
	bl FUN_037FA020
	str r0, [r7, #8]
	ldr r0, [r7, #4]
	mov r1, r6
	bl FUN_037F9F6C
	str r0, [r7, #4]
	mov r0, r5
	bl FUN_037FAD8C
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, lr}
	bx lr
	.align 2, 0
_037F9E50: .word 0x03802FB4
	arm_func_end FUN_037F9DE0

	arm_func_start FUN_037F9E54
FUN_037F9E54: ; 0x037F9E54
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #4
	mov r6, r0
	mov r5, r1
	mov r7, r2
	bl FUN_037FAD78
	mov r4, r0
	ldr r1, _037F9F68 ; =0x03802FB4
	ldr r1, [r1, r6, lsl #2]
	cmp r1, #0
	bne _037F9E8C
	bl FUN_037FAD8C
	mov r0, #0
	b _037F9F5C
_037F9E8C:
	cmp r5, #0
	ldrlt r5, [r1]
	ldr r1, [r1, #0x10]
	mov r0, #0xc
	mla r6, r5, r0, r1
	add r0, r7, #0x20
	add r0, r0, #0x1f
	bic r7, r0, #0x1f
	ldr r0, [r6, #4]
	mov r5, r0
	b _037F9EC8
_037F9EB8:
	ldr r1, [r5, #8]
	cmp r7, r1
	ble _037F9ED0
	ldr r5, [r5, #4]
_037F9EC8:
	cmp r5, #0
	bne _037F9EB8
_037F9ED0:
	cmp r5, #0
	bne _037F9EE8
	mov r0, r4
	bl FUN_037FAD8C
	mov r0, #0
	b _037F9F5C
_037F9EE8:
	ldr r1, [r5, #8]
	sub r1, r1, r7
	cmp r1, #0x40
	bhs _037F9F08
	mov r1, r5
	bl FUN_037FA020
	str r0, [r6, #4]
	b _037F9F40
_037F9F08:
	str r7, [r5, #8]
	add r2, r5, r7
	str r1, [r2, #8]
	ldr r0, [r5]
	str r0, [r5, r7]
	ldr r0, [r5, #4]
	str r0, [r2, #4]
	ldr r0, [r2, #4]
	cmp r0, #0
	strne r2, [r0]
	ldr r0, [r2]
	cmp r0, #0
	strne r2, [r0, #4]
	streq r2, [r6, #4]
_037F9F40:
	ldr r0, [r6, #8]
	mov r1, r5
	bl FUN_037FA048
	str r0, [r6, #8]
	mov r0, r4
	bl FUN_037FAD8C
	add r0, r5, #0x20
_037F9F5C:
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, lr}
	bx lr
	.align 2, 0
_037F9F68: .word 0x03802FB4
	arm_func_end FUN_037F9E54

	arm_func_start FUN_037F9F6C
FUN_037F9F6C: ; 0x037F9F6C
	stmdb sp!, {lr}
	sub sp, sp, #4
	mov ip, r0
	mov lr, #0
	b _037F9F90
_037F9F80:
	cmp r1, ip
	bls _037F9F98
	mov lr, ip
	ldr ip, [ip, #4]
_037F9F90:
	cmp ip, #0
	bne _037F9F80
_037F9F98:
	str ip, [r1, #4]
	str lr, [r1]
	cmp ip, #0
	beq _037F9FD8
	str r1, [ip]
	ldr r3, [r1, #8]
	add r2, r1, r3
	cmp r2, ip
	bne _037F9FD8
	ldr r2, [ip, #8]
	add r2, r3, r2
	str r2, [r1, #8]
	ldr ip, [ip, #4]
	str ip, [r1, #4]
	cmp ip, #0
	strne r1, [ip]
_037F9FD8:
	cmp lr, #0
	beq _037FA010
	str r1, [lr, #4]
	ldr r2, [lr, #8]
	add r3, lr, r2
	cmp r3, r1
	bne _037FA014
	ldr r1, [r1, #8]
	add r1, r2, r1
	str r1, [lr, #8]
	str ip, [lr, #4]
	cmp ip, #0
	strne lr, [ip]
	b _037FA014
_037FA010:
	mov r0, r1
_037FA014:
	add sp, sp, #4
	ldmia sp!, {lr}
	bx lr
	arm_func_end FUN_037F9F6C

	arm_func_start FUN_037FA020
FUN_037FA020: ; 0x037FA020
	ldr r3, [r1, #4]
	cmp r3, #0
	ldrne r2, [r1]
	strne r2, [r3]
	ldr r2, [r1]
	cmp r2, #0
	ldreq r0, [r1, #4]
	ldrne r1, [r1, #4]
	strne r1, [r2, #4]
	bx lr
	arm_func_end FUN_037FA020

	arm_func_start FUN_037FA048
FUN_037FA048: ; 0x037FA048
	str r0, [r1, #4]
	mov r2, #0
	str r2, [r1]
	cmp r0, #0
	strne r1, [r0]
	mov r0, r1
	bx lr
	arm_func_end FUN_037FA048

	arm_func_start FUN_037FA064
FUN_037FA064: ; 0x037FA064
	ldr r1, _037FA07C ; =0x03802FD8
	ldrh r3, [r1]
	mov r2, #1
	orr r0, r3, r2, lsl r0
	strh r0, [r1]
	bx lr
	.align 2, 0
_037FA07C: .word 0x03802FD8
	arm_func_end FUN_037FA064

	arm_func_start FUN_037FA080
FUN_037FA080: ; 0x037FA080
	stmdb sp!, {lr}
	sub sp, sp, #0xc
	bl FUN_037FAD78
	ldr r1, _037FA120 ; =0x04000100
	ldrh r1, [r1]
	strh r1, [sp]
	ldr r1, _037FA124 ; =0x03802FE4
	ldr ip, [r1]
	ldr r3, [r1, #4]
	ldr r2, _037FA128 ; =0x0000FFFF
	mvn r1, #0
	and r2, r3, r2
	and r1, ip, r1
	str r1, [sp, #4]
	str r2, [sp, #8]
	ldr r1, _037FA12C ; =0x04000214
	ldr r1, [r1]
	ands r1, r1, #8
	beq _037FA0F4
	ldrh r1, [sp]
	ands r1, r1, #0x8000
	bne _037FA0F4
	ldr r3, [sp, #4]
	ldr r2, [sp, #8]
	mov r1, #1
	adds r3, r3, r1
	adc r1, r2, #0
	str r3, [sp, #4]
	str r1, [sp, #8]
_037FA0F4:
	bl FUN_037FAD8C
	ldr r2, [sp, #4]
	ldr r0, [sp, #8]
	mov r1, r0, lsl #0x10
	orr r1, r1, r2, lsr #16
	ldrh r0, [sp]
	orr r1, r1, r0, asr #31
	orr r0, r0, r2, lsl #16
	add sp, sp, #0xc
	ldmia sp!, {lr}
	bx lr
	.align 2, 0
_037FA120: .word 0x04000100
_037FA124: .word 0x03802FE4
_037FA128: .word 0x0000FFFF
_037FA12C: .word 0x04000214
	arm_func_end FUN_037FA080

	arm_func_start FUN_037FA130
FUN_037FA130: ; 0x037FA130
	stmdb sp!, {lr}
	sub sp, sp, #4
	ldr r1, _037FA1A4 ; =0x03802FE4
	ldr ip, [r1]
	ldr r2, [r1, #4]
	mov r3, #0
	mov r0, #1
	adds ip, ip, r0
	adc r0, r2, #0
	str ip, [r1]
	str r0, [r1, #4]
	ldr r0, _037FA1A8 ; =0x03802FE0
	ldr r1, [r0]
	cmp r1, #0
	beq _037FA188
	ldr r2, _037FA1AC ; =0x04000102
	strh r3, [r2]
	ldr r1, _037FA1B0 ; =0x04000100
	strh r3, [r1]
	mov r1, #0xc1
	strh r1, [r2]
	str r3, [r0]
_037FA188:
	mov r0, #0
	ldr r1, _037FA1B4 ; =FUN_037FA130
	mov r2, r0
	bl FUN_037F881C
	add sp, sp, #4
	ldmia sp!, {lr}
	bx lr
	.align 2, 0
_037FA1A4: .word 0x03802FE4
_037FA1A8: .word 0x03802FE0
_037FA1AC: .word 0x04000102
_037FA1B0: .word 0x04000100
_037FA1B4: .word FUN_037FA130
	arm_func_end FUN_037FA130

	arm_func_start FUN_037FA1B8
FUN_037FA1B8: ; 0x037FA1B8
	ldr r0, _037FA1C4 ; =0x03802FDC
	ldrh r0, [r0]
	bx lr
	.align 2, 0
_037FA1C4: .word 0x03802FDC
	arm_func_end FUN_037FA1B8

	arm_func_start FUN_037FA1C8
FUN_037FA1C8: ; 0x037FA1C8
	stmdb sp!, {lr}
	sub sp, sp, #4
	ldr r0, _037FA244 ; =0x03802FDC
	ldrh r1, [r0]
	cmp r1, #0
	bne _037FA238
	mov r1, #1
	strh r1, [r0]
	mov r0, #0
	bl FUN_037FA064
	mov r2, #0
	ldr r0, _037FA248 ; =0x03802FE4
	str r2, [r0]
	str r2, [r0, #4]
	ldr r1, _037FA24C ; =0x04000102
	strh r2, [r1]
	ldr r0, _037FA250 ; =0x04000100
	strh r2, [r0]
	mov r0, #0xc1
	strh r0, [r1]
	mov r0, #8
	ldr r1, _037FA254 ; =FUN_037FA130
	bl FUN_037F8868
	mov r0, #8
	bl FUN_037F87B0
	mov r1, #0
	ldr r0, _037FA258 ; =0x03802FE0
	str r1, [r0]
_037FA238:
	add sp, sp, #4
	ldmia sp!, {lr}
	bx lr
	.align 2, 0
_037FA244: .word 0x03802FDC
_037FA248: .word 0x03802FE4
_037FA24C: .word 0x04000102
_037FA250: .word 0x04000100
_037FA254: .word FUN_037FA130
_037FA258: .word 0x03802FE0
	arm_func_end FUN_037FA1C8

	arm_func_start FUN_037FA25C
FUN_037FA25C: ; 0x037FA25C
	stmdb sp!, {r0, lr}
	bl FUN_037FA26C
	ldmia sp!, {r0, lr}
	bx lr
	arm_func_end FUN_037FA25C

	arm_func_start FUN_037FA26C
FUN_037FA26C: ; 0x037FA26C
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	mov r1, #0
	ldr r0, _037FA360 ; =0x04000106
	strh r1, [r0]
	mov r0, #0x10
	bl FUN_037F8774
	ldr r1, _037FA364 ; =0x0380FFF8
	ldr r0, [r1]
	orr r0, r0, #0x10
	str r0, [r1]
	bl FUN_037FA080
	ldr r2, _037FA368 ; =0x03802FF0
	ldr r4, [r2]
	cmp r4, #0
	beq _037FA354
	ldr ip, [r4, #0xc]
	ldr r3, [r4, #0x10]
	cmp r1, r3
	cmpeq r0, ip
	bhs _037FA2CC
	mov r0, r4
	bl FUN_037FA68C
	b _037FA354
_037FA2CC:
	ldr r1, [r4, #0x18]
	str r1, [r2]
	cmp r1, #0
	moveq r0, #0
	streq r0, [r2, #4]
	movne r0, #0
	strne r0, [r1, #0x14]
	ldr r5, [r4]
	ldr r2, [r4, #0x1c]
	ldr r1, [r4, #0x20]
	mov r0, #0
	cmp r1, r0
	cmpeq r2, r0
	streq r0, [r4]
	cmp r5, #0
	beq _037FA318
	ldr r0, [r4, #4]
	mov lr, pc
	bx r5
_037FA318:
	ldr r2, [r4, #0x1c]
	ldr r0, [r4, #0x20]
	mov r1, #0
	cmp r0, r1
	cmpeq r2, r1
	beq _037FA340
	str r5, [r4]
	mov r0, r4
	mov r2, r1
	bl FUN_037FA4EC
_037FA340:
	ldr r0, _037FA368 ; =0x03802FF0
	ldr r0, [r0]
	cmp r0, #0
	beq _037FA354
	bl FUN_037FA68C
_037FA354:
	add sp, sp, #4
	ldmia sp!, {r4, r5, lr}
	bx lr
	.align 2, 0
_037FA360: .word 0x04000106
_037FA364: .word 0x0380FFF8
_037FA368: .word 0x03802FF0
	arm_func_end FUN_037FA26C

	arm_func_start FUN_037FA36C
FUN_037FA36C: ; 0x037FA36C
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	mov r5, r0
	bl FUN_037FAD78
	mov r4, r0
	ldr r1, [r5]
	cmp r1, #0
	bne _037FA394
	bl FUN_037FAD8C
	b _037FA3EC
_037FA394:
	ldr r0, [r5, #0x18]
	cmp r0, #0
	ldreq r2, [r5, #0x14]
	ldreq r1, _037FA3F8 ; =0x03802FF0
	streq r2, [r1, #4]
	ldrne r1, [r5, #0x14]
	strne r1, [r0, #0x14]
	ldr r1, [r5, #0x14]
	cmp r1, #0
	strne r0, [r1, #0x18]
	bne _037FA3D4
	ldr r1, _037FA3F8 ; =0x03802FF0
	str r0, [r1]
	cmp r0, #0
	beq _037FA3D4
	bl FUN_037FA68C
_037FA3D4:
	mov r0, #0
	str r0, [r5]
	str r0, [r5, #0x1c]
	str r0, [r5, #0x20]
	mov r0, r4
	bl FUN_037FAD8C
_037FA3EC:
	add sp, sp, #4
	ldmia sp!, {r4, r5, lr}
	bx lr
	.align 2, 0
_037FA3F8: .word 0x03802FF0
	arm_func_end FUN_037FA36C

	arm_func_start FUN_037FA3FC
FUN_037FA3FC: ; 0x037FA3FC
	stmdb sp!, {r4, r5, r6, r7, r8, sb, lr}
	sub sp, sp, #4
	movs r4, r0
	mov sb, r1
	mov r8, r2
	mov r7, r3
	ldr r6, [sp, #0x20]
	beq _037FA428
	ldr r0, [r4]
	cmp r0, #0
	beq _037FA42C
_037FA428:
	bl FUN_037FAEA0
_037FA42C:
	bl FUN_037FAD78
	mov r5, r0
	str r7, [r4, #0x1c]
	str r6, [r4, #0x20]
	str sb, [r4, #0x24]
	str r8, [r4, #0x28]
	ldr r0, [sp, #0x24]
	str r0, [r4]
	ldr r0, [sp, #0x28]
	str r0, [r4, #4]
	mov r0, r4
	mov r1, #0
	mov r2, r1
	bl FUN_037FA4EC
	mov r0, r5
	bl FUN_037FAD8C
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, r8, sb, lr}
	bx lr
	arm_func_end FUN_037FA3FC

	arm_func_start FUN_037FA478
FUN_037FA478: ; 0x037FA478
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	movs r7, r0
	mov r6, r1
	mov r5, r2
	mov r8, r3
	beq _037FA49C
	ldr r0, [r7]
	cmp r0, #0
	beq _037FA4A0
_037FA49C:
	bl FUN_037FAEA0
_037FA4A0:
	bl FUN_037FAD78
	mov r4, r0
	mov r0, #0
	str r0, [r7, #0x1c]
	str r0, [r7, #0x20]
	str r8, [r7]
	ldr r0, [sp, #0x18]
	str r0, [r7, #4]
	bl FUN_037FA080
	mov r2, r0
	mov r0, r7
	adds r3, r6, r2
	adc r2, r5, r1
	mov r1, r3
	bl FUN_037FA4EC
	mov r0, r4
	bl FUN_037FAD8C
	ldmia sp!, {r4, r5, r6, r7, r8, lr}
	bx lr
	arm_func_end FUN_037FA478

	arm_func_start FUN_037FA4EC
FUN_037FA4EC: ; 0x037FA4EC
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	mov r8, r0
	mov r7, r1
	mov r6, r2
	ldr r2, [r8, #0x1c]
	ldr r1, [r8, #0x20]
	mov r0, #0
	cmp r1, r0
	cmpeq r2, r0
	beq _037FA568
	bl FUN_037FA080
	ldr r7, [r8, #0x24]
	ldr r6, [r8, #0x28]
	cmp r6, r1
	cmpeq r7, r0
	bhs _037FA568
	ldr r5, [r8, #0x1c]
	ldr r4, [r8, #0x20]
	subs r0, r0, r7
	sbc r1, r1, r6
	mov r2, r5
	mov r3, r4
	bl FUN_03801800
	mov r2, #1
	adds r2, r0, r2
	adc r0, r1, #0
	umull r3, r1, r5, r2
	mla r1, r5, r0, r1
	mla r1, r4, r2, r1
	adds r7, r7, r3
	adc r6, r6, r1
_037FA568:
	str r7, [r8, #0xc]
	str r6, [r8, #0x10]
	ldr r0, _037FA618 ; =0x03802FF0
	ldr r4, [r0]
	mov r1, #0
	b _037FA5D4
_037FA580:
	ldr r2, [r4, #0xc]
	ldr r0, [r4, #0x10]
	subs r3, r7, r2
	sbc r2, r6, r0
	subs r0, r3, r1
	sbcs r0, r2, r1
	bge _037FA5D0
	ldr r0, [r4, #0x14]
	str r0, [r8, #0x14]
	str r8, [r4, #0x14]
	str r4, [r8, #0x18]
	ldr r0, [r8, #0x14]
	cmp r0, #0
	strne r8, [r0, #0x18]
	bne _037FA610
	ldr r0, _037FA618 ; =0x03802FF0
	str r8, [r0]
	mov r0, r8
	bl FUN_037FA68C
	b _037FA610
_037FA5D0:
	ldr r4, [r4, #0x18]
_037FA5D4:
	cmp r4, #0
	bne _037FA580
	mov r0, #0
	str r0, [r8, #0x18]
	ldr r0, _037FA618 ; =0x03802FF0
	ldr r1, [r0, #4]
	str r8, [r0, #4]
	str r1, [r8, #0x14]
	cmp r1, #0
	strne r8, [r1, #0x18]
	bne _037FA610
	str r8, [r0, #4]
	str r8, [r0]
	mov r0, r8
	bl FUN_037FA68C
_037FA610:
	ldmia sp!, {r4, r5, r6, r7, r8, lr}
	bx lr
	.align 2, 0
_037FA618: .word 0x03802FF0
	arm_func_end FUN_037FA4EC

	arm_func_start FUN_037FA61C
FUN_037FA61C: ; 0x037FA61C
	mov r1, #0
	str r1, [r0]
	str r1, [r0, #8]
	bx lr
	arm_func_end FUN_037FA61C

	arm_func_start FUN_037FA62C
FUN_037FA62C: ; 0x037FA62C
	ldr r0, _037FA638 ; =0x03802FEC
	ldrh r0, [r0]
	bx lr
	.align 2, 0
_037FA638: .word 0x03802FEC
	arm_func_end FUN_037FA62C

	arm_func_start FUN_037FA63C
FUN_037FA63C: ; 0x037FA63C
	stmdb sp!, {lr}
	sub sp, sp, #4
	ldr r1, _037FA684 ; =0x03802FEC
	ldrh r0, [r1]
	cmp r0, #0
	bne _037FA678
	mov r0, #1
	strh r0, [r1]
	bl FUN_037FA064
	mov r1, #0
	ldr r0, _037FA688 ; =0x03802FF0
	str r1, [r0]
	str r1, [r0, #4]
	mov r0, #0x10
	bl FUN_037F8774
_037FA678:
	add sp, sp, #4
	ldmia sp!, {lr}
	bx lr
	.align 2, 0
_037FA684: .word 0x03802FEC
_037FA688: .word 0x03802FF0
	arm_func_end FUN_037FA63C

	arm_func_start FUN_037FA68C
FUN_037FA68C: ; 0x037FA68C
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	mov r4, r0
	bl FUN_037FA080
	mov r2, #0
	ldr r3, _037FA718 ; =0x04000106
	strh r2, [r3]
	ldr ip, [r4, #0xc]
	ldr r3, [r4, #0x10]
	subs r5, ip, r0
	sbc r4, r3, r1
	mov r0, #1
	ldr r1, _037FA71C ; =FUN_037FA25C
	bl FUN_037F881C
	mov r1, #0
	subs r0, r5, r1
	sbcs r0, r4, r1
	ldrlt r1, _037FA720 ; =0x0000FFFE
	blt _037FA6F0
	mov r0, #0x10000
	subs r0, r5, r0
	sbcs r0, r4, r1
	mvnlt r0, r5
	movlt r0, r0, lsl #0x10
	movlt r1, r0, lsr #0x10
_037FA6F0:
	ldr r0, _037FA724 ; =0x04000104
	strh r1, [r0]
	mov r1, #0xc1
	ldr r0, _037FA718 ; =0x04000106
	strh r1, [r0]
	mov r0, #0x10
	bl FUN_037F87B0
	add sp, sp, #4
	ldmia sp!, {r4, r5, lr}
	bx lr
	.align 2, 0
_037FA718: .word 0x04000106
_037FA71C: .word FUN_037FA25C
_037FA720: .word 0x0000FFFE
_037FA724: .word 0x04000104
	arm_func_end FUN_037FA68C

	arm_func_start FUN_037FA728
FUN_037FA728: ; 0x037FA728
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl FUN_037FAD78
	ldr r1, _037FA76C ; =0x03802FFC
	ldr r1, [r1]
	cmp r4, r1
	ldrlt r1, _037FA770 ; =0x03803000
	ldrlt r2, [r1]
	addlt r2, r2, #1
	strlt r2, [r1]
	ldr r1, _037FA76C ; =0x03802FFC
	str r4, [r1]
	bl FUN_037FAD8C
	ldr r0, _037FA770 ; =0x03803000
	ldr r0, [r0]
	ldmia sp!, {r4, lr}
	bx lr
	.align 2, 0
_037FA76C: .word 0x03802FFC
_037FA770: .word 0x03803000
	arm_func_end FUN_037FA728

	arm_func_start FUN_037FA774
FUN_037FA774: ; 0x037FA774
	ldr r3, [r0, #0xc]
	subs r3, r1, r3
	ldrsh r1, [r0, #0x10]
	sub r2, r2, r1
	bmi _037FA798
	cmp r3, #0
	bne _037FA7A0
	cmp r2, #0
	bge _037FA7A0
_037FA798:
	mov r0, #0
	bx lr
_037FA7A0:
	cmp r2, #0
	ldrlt r1, _037FA7C0 ; =0x00000107
	addlt r2, r2, r1
	ldrsh r0, [r0, #0x12]
	cmp r2, r0
	movle r0, #1
	movgt r0, #2
	bx lr
	.align 2, 0
_037FA7C0: .word 0x00000107
	arm_func_end FUN_037FA774

	arm_func_start FUN_037FA7C4
FUN_037FA7C4: ; 0x037FA7C4
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #4
	mov r0, #4
	bl FUN_037F8774
	ldr r2, _037FA938 ; =0x04000004
	ldrh r0, [r2]
	bic r0, r0, #0x20
	strh r0, [r2]
	ldr r1, _037FA93C ; =0x0380FFF8
	ldr r0, [r1]
	orr r0, r0, #4
	str r0, [r1]
	ldrh r2, [r2]
	mov r0, r2, asr #8
	and r1, r0, #0xff
	mov r0, r2, lsl #1
	and r0, r0, #0x100
	orr r0, r1, r0
	sub r0, r0, #1
	bl FUN_037FA728
	ldr sb, _037FA940 ; =0x04000006
	mov r6, #4
	ldr r5, _037FA938 ; =0x04000004
	mov r4, #0
	ldr fp, _037FA944 ; =0x03803000
	b _037FA91C
_037FA82C:
	ldrh r8, [sb]
	mov r0, r8
	bl FUN_037FA728
	mov r7, r0
	mov r0, sl
	mov r1, r7
	mov r2, r8
	bl FUN_037FA774
	cmp r0, #0
	beq _037FA868
	cmp r0, #1
	beq _037FA8A8
	cmp r0, #2
	beq _037FA900
	b _037FA91C
_037FA868:
	mov r0, sl
	bl FUN_037FAA48
	ldrh r1, [sb]
	ldrsh r0, [sl, #0x10]
	cmp r0, r1
	bne _037FA92C
	ldr r0, [sl, #0xc]
	cmp r0, r7
	bne _037FA92C
	mov r0, r6
	bl FUN_037F8774
	ldrh r0, [r5]
	bic r0, r0, #0x20
	strh r0, [r5]
	mov r0, r6
	bl FUN_037F8740
_037FA8A8:
	ldr r7, [sl]
	mov r0, sl
	bl FUN_037FABE8
	str r4, [sl]
	cmp r7, #0
	beq _037FA8CC
	ldr r0, [sl, #4]
	mov lr, pc
	bx r7
_037FA8CC:
	ldr r0, [sl, #0x1c]
	cmp r0, #0
	beq _037FA91C
	ldr r0, [sl, #0x24]
	cmp r0, #0
	bne _037FA91C
	str r7, [sl]
	ldr r0, [fp]
	add r0, r0, #1
	str r0, [sl, #0xc]
	mov r0, sl
	bl FUN_037FAC20
	b _037FA91C
_037FA900:
	mov r0, sl
	bl FUN_037FABE8
	mov r0, sl
	bl FUN_037FAC20
	ldr r0, [fp]
	add r0, r0, #1
	str r0, [sl, #0xc]
_037FA91C:
	ldr r0, _037FA948 ; =0x03803004
	ldr sl, [r0]
	cmp sl, #0
	bne _037FA82C
_037FA92C:
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bx lr
	.align 2, 0
_037FA938: .word 0x04000004
_037FA93C: .word 0x0380FFF8
_037FA940: .word 0x04000006
_037FA944: .word 0x03803000
_037FA948: .word 0x03803004
	arm_func_end FUN_037FA7C4

	arm_func_start FUN_037FA94C
FUN_037FA94C: ; 0x037FA94C
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #4
	mov r7, r0
	bl FUN_037FAD78
	mov r5, r0
	cmp r7, #0
	bne _037FA96C
	bl FUN_037FAEA0
_037FA96C:
	ldr r0, _037FA9C4 ; =0x03803004
	ldr r0, [r0]
	cmp r0, #0
	ldrne r6, [r0, #0x18]
	moveq r6, #0
	mov r4, #0
	b _037FA9A8
_037FA988:
	ldr r1, [r0, #8]
	cmp r1, r7
	bne _037FA998
	bl FUN_037FA9C8
_037FA998:
	mov r0, r6
	cmp r6, #0
	ldrne r6, [r6, #0x18]
	moveq r6, r4
_037FA9A8:
	cmp r0, #0
	bne _037FA988
	mov r0, r5
	bl FUN_037FAD8C
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, lr}
	bx lr
	.align 2, 0
_037FA9C4: .word 0x03803004
	arm_func_end FUN_037FA94C

	arm_func_start FUN_037FA9C8
FUN_037FA9C8: ; 0x037FA9C8
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	mov r5, r0
	bl FUN_037FAD78
	mov r4, r0
	mov r1, #1
	str r1, [r5, #0x24]
	ldr r1, [r5]
	cmp r1, #0
	bne _037FA9F8
	bl FUN_037FAD8C
	b _037FAA10
_037FA9F8:
	mov r0, r5
	bl FUN_037FABE8
	mov r0, #0
	str r0, [r5]
	mov r0, r4
	bl FUN_037FAD8C
_037FAA10:
	add sp, sp, #4
	ldmia sp!, {r4, r5, lr}
	bx lr
	arm_func_end FUN_037FA9C8

	arm_func_start FUN_037FAA1C
FUN_037FAA1C: ; 0x037FAA1C
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	mov r5, r0
	movs r4, r1
	bne _037FAA34
	bl FUN_037FAEA0
_037FAA34:
	cmp r5, #0
	strne r4, [r5, #8]
	add sp, sp, #4
	ldmia sp!, {r4, r5, lr}
	bx lr
	arm_func_end FUN_037FAA1C

	arm_func_start FUN_037FAA48
FUN_037FAA48: ; 0x037FAA48
	stmdb sp!, {r4, lr}
	mov r4, r0
	mov r0, #4
	ldr r1, _037FAA9C ; =FUN_037FA7C4
	bl FUN_037F8868
	ldrsh ip, [r4, #0x10]
	and r3, ip, #0x100
	ldr r1, _037FAAA0 ; =0x04000004
	ldrh r0, [r1]
	and r2, r0, #0x3f
	and r0, ip, #0xff
	orr r0, r2, r0, lsl #8
	orr r0, r0, r3, asr #1
	strh r0, [r1]
	ldrh r0, [r1]
	orr r0, r0, #0x20
	strh r0, [r1]
	mov r0, #4
	bl FUN_037F87B0
	ldmia sp!, {r4, lr}
	bx lr
	.align 2, 0
_037FAA9C: .word FUN_037FA7C4
_037FAAA0: .word 0x04000004
	arm_func_end FUN_037FAA48

	arm_func_start FUN_037FAAA4
FUN_037FAAA4: ; 0x037FAAA4
	stmdb sp!, {r4, r5, r6, r7, r8, sb, lr}
	sub sp, sp, #4
	mov r8, r0
	mov r7, r1
	mov r6, r2
	mov r5, r3
	bl FUN_037FAD78
	mov r4, r0
	cmp r8, #0
	beq _037FAAD8
	ldr r0, [r8]
	cmp r0, #0
	beq _037FAADC
_037FAAD8:
	bl FUN_037FAEA0
_037FAADC:
	ldr r0, _037FAB38 ; =0x04000006
	ldrh sb, [r0]
	mov r0, sb
	bl FUN_037FA728
	mov r1, #1
	str r1, [r8, #0x1c]
	strh r7, [r8, #0x10]
	cmp r7, sb
	addle r0, r0, #1
	str r0, [r8, #0xc]
	strh r6, [r8, #0x12]
	str r5, [r8]
	ldr r0, [sp, #0x20]
	str r0, [r8, #4]
	mov r0, #0
	str r0, [r8, #0x24]
	mov r0, r8
	bl FUN_037FAC64
	mov r0, r4
	bl FUN_037FAD8C
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, r8, sb, lr}
	bx lr
	.align 2, 0
_037FAB38: .word 0x04000006
	arm_func_end FUN_037FAAA4

	arm_func_start FUN_037FAB3C
FUN_037FAB3C: ; 0x037FAB3C
	stmdb sp!, {r4, r5, r6, r7, r8, sb, lr}
	sub sp, sp, #4
	mov r8, r0
	mov r7, r1
	mov r6, r2
	mov r5, r3
	bl FUN_037FAD78
	mov r4, r0
	cmp r8, #0
	beq _037FAB70
	ldr r0, [r8]
	cmp r0, #0
	beq _037FAB74
_037FAB70:
	bl FUN_037FAEA0
_037FAB74:
	ldr r0, _037FABD0 ; =0x04000006
	ldrh sb, [r0]
	mov r0, sb
	bl FUN_037FA728
	mov r1, #0
	str r1, [r8, #0x1c]
	strh r7, [r8, #0x10]
	cmp r7, sb
	addle r0, r0, #1
	str r0, [r8, #0xc]
	strh r6, [r8, #0x12]
	str r5, [r8]
	ldr r0, [sp, #0x20]
	str r0, [r8, #4]
	mov r0, #0
	str r0, [r8, #0x24]
	mov r0, r8
	bl FUN_037FAC64
	mov r0, r4
	bl FUN_037FAD8C
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, r8, sb, lr}
	bx lr
	.align 2, 0
_037FABD0: .word 0x04000006
	arm_func_end FUN_037FAB3C

	arm_func_start FUN_037FABD4
FUN_037FABD4: ; 0x037FABD4
	mov r1, #0
	str r1, [r0]
	str r1, [r0, #8]
	str r1, [r0, #0x20]
	bx lr
	arm_func_end FUN_037FABD4

	arm_func_start FUN_037FABE8
FUN_037FABE8: ; 0x037FABE8
	cmp r0, #0
	bxeq lr
	ldr r2, [r0, #0x14]
	ldr r1, [r0, #0x18]
	cmp r1, #0
	strne r2, [r1, #0x14]
	ldreq r0, _037FAC1C ; =0x03803004
	streq r2, [r0, #4]
	cmp r2, #0
	strne r1, [r2, #0x18]
	ldreq r0, _037FAC1C ; =0x03803004
	streq r1, [r0]
	bx lr
	.align 2, 0
_037FAC1C: .word 0x03803004
	arm_func_end FUN_037FABE8

	arm_func_start FUN_037FAC20
FUN_037FAC20: ; 0x037FAC20
	stmdb sp!, {lr}
	sub sp, sp, #4
	ldr r1, _037FAC60 ; =0x03803004
	ldr r3, [r1, #4]
	str r3, [r0, #0x14]
	mov r2, #0
	str r2, [r0, #0x18]
	str r0, [r1, #4]
	cmp r3, #0
	strne r0, [r3, #0x18]
	bne _037FAC54
	str r0, [r1]
	bl FUN_037FAA48
_037FAC54:
	add sp, sp, #4
	ldmia sp!, {lr}
	bx lr
	.align 2, 0
_037FAC60: .word 0x03803004
	arm_func_end FUN_037FAC20

	arm_func_start FUN_037FAC64
FUN_037FAC64: ; 0x037FAC64
	stmdb sp!, {lr}
	sub sp, sp, #4
	ldr r1, _037FACE8 ; =0x03803004
	ldr r3, [r1]
	b _037FACD0
_037FAC78:
	ldr r2, [r0, #0xc]
	ldr r1, [r3, #0xc]
	cmp r1, r2
	blo _037FACCC
	cmp r1, r2
	bne _037FACA0
	ldrsh r2, [r3, #0x10]
	ldrsh r1, [r0, #0x10]
	cmp r2, r1
	ble _037FACCC
_037FACA0:
	ldr r1, [r3, #0x14]
	str r1, [r0, #0x14]
	str r3, [r0, #0x18]
	str r0, [r3, #0x14]
	cmp r1, #0
	strne r0, [r1, #0x18]
	bne _037FACDC
	ldr r1, _037FACE8 ; =0x03803004
	str r0, [r1]
	bl FUN_037FAA48
	b _037FACDC
_037FACCC:
	ldr r3, [r3, #0x18]
_037FACD0:
	cmp r3, #0
	bne _037FAC78
	bl FUN_037FAC20
_037FACDC:
	add sp, sp, #4
	ldmia sp!, {lr}
	bx lr
	.align 2, 0
_037FACE8: .word 0x03803004
	arm_func_end FUN_037FAC64

	arm_func_start FUN_037FACEC
FUN_037FACEC: ; 0x037FACEC
	ldr r0, _037FACF8 ; =0x03802FF8
	ldrh r0, [r0]
	bx lr
	.align 2, 0
_037FACF8: .word 0x03802FF8
	arm_func_end FUN_037FACEC

	arm_func_start FUN_037FACFC
FUN_037FACFC: ; 0x037FACFC
	stmdb sp!, {lr}
	sub sp, sp, #4
	ldr r0, _037FAD54 ; =0x03802FF8
	ldrh r1, [r0]
	cmp r1, #0
	bne _037FAD48
	mov r1, #1
	strh r1, [r0]
	mov r1, #0
	ldr r0, _037FAD58 ; =0x03803004
	str r1, [r0]
	str r1, [r0, #4]
	mov r0, #4
	bl FUN_037F8774
	mov r1, #0
	ldr r0, _037FAD5C ; =0x03803000
	str r1, [r0]
	ldr r0, _037FAD60 ; =0x03802FFC
	str r1, [r0]
_037FAD48:
	add sp, sp, #4
	ldmia sp!, {lr}
	bx lr
	.align 2, 0
_037FAD54: .word 0x03802FF8
_037FAD58: .word 0x03803004
_037FAD5C: .word 0x03803000
_037FAD60: .word 0x03802FFC
	arm_func_end FUN_037FACFC

	arm_func_start FUN_037FAD64
FUN_037FAD64: ; 0x037FAD64
	mrs r0, cpsr
	bic r1, r0, #0x80
	msr cpsr_c, r1
	and r0, r0, #0x80
	bx lr
	arm_func_end FUN_037FAD64

	arm_func_start FUN_037FAD78
FUN_037FAD78: ; 0x037FAD78
	mrs r0, cpsr
	orr r1, r0, #0x80
	msr cpsr_c, r1
	and r0, r0, #0x80
	bx lr
	arm_func_end FUN_037FAD78

	arm_func_start FUN_037FAD8C
FUN_037FAD8C: ; 0x037FAD8C
	mrs r1, cpsr
	bic r2, r1, #0x80
	orr r2, r2, r0
	msr cpsr_c, r2
	and r0, r1, #0x80
	bx lr
	arm_func_end FUN_037FAD8C

	arm_func_start FUN_037FADA4
FUN_037FADA4: ; 0x037FADA4
	mrs r0, cpsr
	orr r1, r0, #0xc0
	msr cpsr_c, r1
	and r0, r0, #0xc0
	bx lr
	arm_func_end FUN_037FADA4

	arm_func_start FUN_037FADB8
FUN_037FADB8: ; 0x037FADB8
	mrs r1, cpsr
	bic r2, r1, #0xc0
	orr r2, r2, r0
	msr cpsr_c, r2
	and r0, r1, #0xc0
	bx lr
	arm_func_end FUN_037FADB8

	arm_func_start FUN_037FADD0
FUN_037FADD0: ; 0x037FADD0
	mrs r0, cpsr
	and r0, r0, #0x1f
	bx lr
	arm_func_end FUN_037FADD0

	arm_func_start FUN_037FADDC
FUN_037FADDC: ; 0x037FADDC
	stmdb sp!, {lr}
	sub sp, sp, #4
	mov r0, #1
	bl FUN_037F8BD0
	mov r0, #1
	mov r1, r0
	bl FUN_037F8574
	add sp, sp, #4
	ldmia sp!, {lr}
	bx lr
	arm_func_end FUN_037FADDC

	arm_func_start FUN_037FAE04
FUN_037FAE04: ; 0x037FAE04
	stmdb sp!, {lr}
	sub sp, sp, #4
	mov r1, #4
	bl FUN_03801848
	bl FUN_037F8BD0
	add sp, sp, #4
	ldmia sp!, {lr}
	bx lr
	arm_func_end FUN_037FAE04

	arm_func_start FUN_037FAE24
FUN_037FAE24: ; 0x037FAE24
	stmdb sp!, {lr}
	sub sp, sp, #4
	and r0, r1, #0x7f00
	mov r0, r0, lsl #8
	mov r0, r0, lsr #0x10
	cmp r0, #0x10
	moveq r1, #1
	ldreq r0, _037FAE5C ; =0x03803010
	streqh r1, [r0]
	beq _037FAE50
	bl FUN_037FAEA0
_037FAE50:
	add sp, sp, #4
	ldmia sp!, {lr}
	bx lr
	.align 2, 0
_037FAE5C: .word 0x03803010
	arm_func_end FUN_037FAE24

	arm_func_start FUN_037FAE60
FUN_037FAE60: ; 0x037FAE60
	stmdb sp!, {lr}
	sub sp, sp, #4
	ldr r0, _037FAE98 ; =0x0380300C
	ldrh r1, [r0]
	cmp r1, #0
	bne _037FAE8C
	mov r1, #1
	strh r1, [r0]
	mov r0, #0xc
	ldr r1, _037FAE9C ; =FUN_037FAE24
	bl FUN_037FB3A8
_037FAE8C:
	add sp, sp, #4
	ldmia sp!, {lr}
	bx lr
	.align 2, 0
_037FAE98: .word 0x0380300C
_037FAE9C: .word FUN_037FAE24
	arm_func_end FUN_037FAE60

	arm_func_start FUN_037FAEA0
FUN_037FAEA0: ; 0x037FAEA0
	stmdb sp!, {lr}
	sub sp, sp, #4
	mov r0, #0
	bl FUN_037FC7C0
_037FAEB0:
	bl FUN_037FAD78
	bl FUN_037FAEBC
	b _037FAEB0
	arm_func_end FUN_037FAEA0

	arm_func_start FUN_037FAEBC
FUN_037FAEBC: ; 0x037FAEBC
	ldr ip, _037FAEC4 ; =SVC_Halt
	bx ip
	.align 2, 0
_037FAEC4: .word SVC_Halt
	arm_func_end FUN_037FAEBC

	arm_func_start FUN_037FAEC8
FUN_037FAEC8: ; 0x037FAEC8
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl FUN_037FAD78
	mov r1, #3
	mul r1, r4, r1
	add r2, r1, #2
	ldr r1, _037FAF30 ; =0x040000B0
	add r2, r1, r2, lsl #2
_037FAEE8:
	ldr r1, [r2]
	ands r1, r1, #0x80000000
	bne _037FAEE8
	cmp r4, #0
	bne _037FAF24
	mov r1, #0xc
	mul r3, r4, r1
	ldr r1, _037FAF30 ; =0x040000B0
	add r4, r3, r1
	mov r2, #0
	add r1, r3, #0x4000000
	str r2, [r1, #0xb0]
	str r2, [r4, #4]
	ldr r1, _037FAF34 ; =0x81400001
	str r1, [r4, #8]
_037FAF24:
	bl FUN_037FAD8C
	ldmia sp!, {r4, lr}
	bx lr
	.align 2, 0
_037FAF30: .word 0x040000B0
_037FAF34: .word 0x81400001
	arm_func_end FUN_037FAEC8

	arm_func_start FUN_037FAF38
FUN_037FAF38: ; 0x037FAF38
	mov r3, #0
_037FAF3C:
	cmp r3, r2
	strlth r0, [r1, r3]
	addlt r3, r3, #2
	blt _037FAF3C
	bx lr
	arm_func_end FUN_037FAF38

	arm_func_start FUN_037FAF50
FUN_037FAF50: ; 0x037FAF50
	mov ip, #0
_037FAF54:
	cmp ip, r2
	ldrlth r3, [r0, ip]
	strlth r3, [r1, ip]
	addlt ip, ip, #2
	blt _037FAF54
	bx lr
	arm_func_end FUN_037FAF50

	arm_func_start FUN_037FAF6C
FUN_037FAF6C: ; 0x037FAF6C
	add ip, r1, r2
_037FAF70:
	cmp r1, ip
	stmltia r1!, {r0}
	blt _037FAF70
	bx lr
	arm_func_end FUN_037FAF6C

	arm_func_start FUN_037FAF80
FUN_037FAF80: ; 0x037FAF80
	add ip, r1, r2
_037FAF84:
	cmp r1, ip
	ldmltia r0!, {r2}
	stmltia r1!, {r2}
	blt _037FAF84
	bx lr
	arm_func_end FUN_037FAF80

	arm_func_start FUN_037FAF98
FUN_037FAF98: ; 0x037FAF98
	stmdb sp!, {r4, r5, r6, r7, r8, sb}
	add sb, r1, r2
	mov ip, r2, lsr #5
	add ip, r1, ip, lsl #5
	mov r2, r0
	mov r3, r2
	mov r4, r2
	mov r5, r2
	mov r6, r2
	mov r7, r2
	mov r8, r2
_037FAFC4:
	cmp r1, ip
	stmltia r1!, {r0, r2, r3, r4, r5, r6, r7, r8}
	blt _037FAFC4
_037FAFD0:
	cmp r1, sb
	stmltia r1!, {r0}
	blt _037FAFD0
	ldmia sp!, {r4, r5, r6, r7, r8, sb}
	bx lr
	arm_func_end FUN_037FAF98

	arm_func_start FUN_037FAFE4
FUN_037FAFE4: ; 0x037FAFE4
	cmp r2, #0
	bxeq lr
	tst r0, #1
	beq _037FB010
	ldrh ip, [r0, #-1]
	and ip, ip, #0xff
	orr r3, ip, r1, lsl #8
	strh r3, [r0, #-1]
	add r0, r0, #1
	subs r2, r2, #1
	bxeq lr
_037FB010:
	cmp r2, #2
	blo _037FB058
	orr r1, r1, r1, lsl #8
	tst r0, #2
	beq _037FB030
	strh r1, [r0], #2
	subs r2, r2, #2
	bxeq lr
_037FB030:
	orr r1, r1, r1, lsl #16
	bics r3, r2, #3
	beq _037FB050
	sub r2, r2, r3
	add ip, r3, r0
_037FB044:
	str r1, [r0], #4
	cmp r0, ip
	blo _037FB044
_037FB050:
	tst r2, #2
	strneh r1, [r0], #2
_037FB058:
	tst r2, #1
	bxeq lr
	ldrh r3, [r0]
	and r3, r3, #0xff00
	and r1, r1, #0xff
	orr r1, r1, r3
	strh r1, [r0]
	bx lr
	arm_func_end FUN_037FAFE4

	arm_func_start FUN_037FB078
FUN_037FB078: ; 0x037FB078
	cmp r2, #0
	bxeq lr
	tst r1, #1
	beq _037FB0B8
	ldrh ip, [r1, #-1]
	and ip, ip, #0xff
	tst r0, #1
	ldrneh r3, [r0, #-1]
	movne r3, r3, lsr #8
	ldreqh r3, [r0]
	orr r3, ip, r3, lsl #8
	strh r3, [r1, #-1]
	add r0, r0, #1
	add r1, r1, #1
	subs r2, r2, #1
	bxeq lr
_037FB0B8:
	eor ip, r1, r0
	tst ip, #1
	beq _037FB10C
	bic r0, r0, #1
	ldrh ip, [r0], #2
	mov r3, ip, lsr #8
	subs r2, r2, #2
	blo _037FB0F0
_037FB0D8:
	ldrh ip, [r0], #2
	orr ip, r3, ip, lsl #8
	strh ip, [r1], #2
	mov r3, ip, lsr #0x10
	subs r2, r2, #2
	bhs _037FB0D8
_037FB0F0:
	tst r2, #1
	bxeq lr
	ldrh ip, [r1]
	and ip, ip, #0xff00
	orr ip, ip, r3
	strh ip, [r1]
	bx lr
_037FB10C:
	tst ip, #2
	beq _037FB138
	bics r3, r2, #1
	beq _037FB184
	sub r2, r2, r3
	add ip, r3, r1
_037FB124:
	ldrh r3, [r0], #2
	strh r3, [r1], #2
	cmp r1, ip
	blo _037FB124
	b _037FB184
_037FB138:
	cmp r2, #2
	blo _037FB184
	tst r1, #2
	beq _037FB158
	ldrh r3, [r0], #2
	strh r3, [r1], #2
	subs r2, r2, #2
	bxeq lr
_037FB158:
	bics r3, r2, #3
	beq _037FB178
	sub r2, r2, r3
	add ip, r3, r1
_037FB168:
	ldr r3, [r0], #4
	str r3, [r1], #4
	cmp r1, ip
	blo _037FB168
_037FB178:
	tst r2, #2
	ldrneh r3, [r0], #2
	strneh r3, [r1], #2
_037FB184:
	tst r2, #1
	bxeq lr
	ldrh r2, [r1]
	ldrh r0, [r0]
	and r2, r2, #0xff00
	and r0, r0, #0xff
	orr r0, r2, r0
	strh r0, [r1]
	bx lr
	arm_func_end FUN_037FB078

	arm_func_start FUN_037FB1A8
FUN_037FB1A8: ; 0x037FB1A8
	.word 0xE1010090
	bx lr
	arm_func_end FUN_037FB1A8

	arm_func_start FUN_037FB1B0
FUN_037FB1B0: ; 0x037FB1B0
	ldr ip, _037FB1B8 ; =FUN_037FB414
	bx ip
	.align 2, 0
_037FB1B8: .word FUN_037FB414
	arm_func_end FUN_037FB1B0

	arm_func_start FUN_037FB1BC
FUN_037FB1BC: ; 0x037FB1BC
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	sub sp, sp, #8
	ldr sl, _037FB2D0 ; =0x04000184
	ldr r5, _037FB2D4 ; =0x03803018
	mov r7, #0x4100000
	mov r6, #0
	mvn r8, #3
	mvn sb, #2
	ldr r4, _037FB2D8 ; =0x04000188
_037FB1E0:
	ldrh r0, [sl]
	ands r0, r0, #0x4000
	ldrneh r0, [sl]
	orrne r0, r0, #0xc000
	strneh r0, [sl]
	movne r1, sb
	bne _037FB228
	bl FUN_037FAD78
	ldrh r1, [sl]
	ands r1, r1, #0x100
	beq _037FB218
	bl FUN_037FAD8C
	mov r1, r8
	b _037FB228
_037FB218:
	ldr r1, [r7]
	str r1, [sp]
	bl FUN_037FAD8C
	mov r1, r6
_037FB228:
	cmp r1, r8
	beq _037FB2C4
	mvn r0, #2
	cmp r1, r0
	beq _037FB1E0
	ldr r2, [sp]
	mov r0, r2, lsl #0x1b
	movs r0, r0, lsr #0x1b
	beq _037FB1E0
	ldr r3, [r5, r0, lsl #2]
	cmp r3, #0
	beq _037FB270
	mov r1, r2, lsr #6
	mov r2, r2, lsl #0x1a
	mov r2, r2, lsr #0x1f
	mov lr, pc
	bx r3
	arm_func_end FUN_037FB1BC

	arm_func_start FUN_037FB26C
FUN_037FB26C: ; 0x037FB26C
	b _037FB1E0
_037FB270:
	mov r0, r2, lsl #0x1a
	movs r0, r0, lsr #0x1f
	bne _037FB1E0
	orr r0, r2, #0x20
	str r0, [sp]
	ldrh r0, [sl]
	ands r0, r0, #0x4000
	ldrneh r0, [sl]
	orrne r0, r0, #0xc000
	strneh r0, [sl]
	bne _037FB1E0
	bl FUN_037FAD78
	ldrh r1, [sl]
	ands r1, r1, #2
	beq _037FB2B4
	bl FUN_037FAD8C
	b _037FB1E0
_037FB2B4:
	ldr r1, [sp]
	str r1, [r4]
	bl FUN_037FAD8C
	b _037FB1E0
_037FB2C4:
	add sp, sp, #8
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	bx lr
	.align 2, 0
_037FB2D0: .word 0x04000184
_037FB2D4: .word 0x03803018
_037FB2D8: .word 0x04000188
	arm_func_end FUN_037FB26C

	arm_func_start FUN_037FB2DC
FUN_037FB2DC: ; 0x037FB2DC
	stmdb sp!, {lr}
	sub sp, sp, #4
	ldr r3, [sp]
	bic r3, r3, #0x1f
	and r0, r0, #0x1f
	orr r0, r3, r0
	str r0, [sp]
	bic r3, r0, #0x20
	and r0, r2, #1
	orr r0, r3, r0, lsl #5
	str r0, [sp]
	and r2, r0, #0x3f
	bic r0, r1, #0xfc000000
	orr r0, r2, r0, lsl #6
	str r0, [sp]
	ldr r1, _037FB378 ; =0x04000184
	ldrh r0, [r1]
	ands r0, r0, #0x4000
	ldrneh r0, [r1]
	orrne r0, r0, #0xc000
	strneh r0, [r1]
	mvnne r0, #0
	bne _037FB36C
	bl FUN_037FAD78
	ldr r1, _037FB378 ; =0x04000184
	ldrh r1, [r1]
	ands r1, r1, #2
	beq _037FB358
	bl FUN_037FAD8C
	mvn r0, #1
	b _037FB36C
_037FB358:
	ldr r2, [sp]
	ldr r1, _037FB37C ; =0x04000188
	str r2, [r1]
	bl FUN_037FAD8C
	mov r0, #0
_037FB36C:
	add sp, sp, #4
	ldmia sp!, {lr}
	bx lr
	.align 2, 0
_037FB378: .word 0x04000184
_037FB37C: .word 0x04000188
	arm_func_end FUN_037FB2DC

	arm_func_start FUN_037FB380
FUN_037FB380: ; 0x037FB380
	mov r3, #1
	mov r2, r3, lsl r0
	ldr r0, _037FB3A4 ; =0x027FFC00
	add r0, r0, r1, lsl #2
	ldr r0, [r0, #0x388]
	ands r0, r2, r0
	moveq r3, #0
	mov r0, r3
	bx lr
	.align 2, 0
_037FB3A4: .word 0x027FFC00
	arm_func_end FUN_037FB380

	arm_func_start FUN_037FB3A8
FUN_037FB3A8: ; 0x037FB3A8
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	mov r4, r0
	mov r5, r1
	bl FUN_037FAD78
	ldr r1, _037FB40C ; =0x03803018
	str r5, [r1, r4, lsl #2]
	cmp r5, #0
	beq _037FB3E4
	ldr r3, _037FB410 ; =0x027FFC00
	ldr r2, [r3, #0x38c]
	mov r1, #1
	orr r1, r2, r1, lsl r4
	str r1, [r3, #0x38c]
	b _037FB3FC
_037FB3E4:
	ldr r3, _037FB410 ; =0x027FFC00
	ldr r2, [r3, #0x38c]
	mov r1, #1
	mvn r1, r1, lsl r4
	and r1, r2, r1
	str r1, [r3, #0x38c]
_037FB3FC:
	bl FUN_037FAD8C
	add sp, sp, #4
	ldmia sp!, {r4, r5, lr}
	bx lr
	.align 2, 0
_037FB40C: .word 0x03803018
_037FB410: .word 0x027FFC00
	arm_func_end FUN_037FB3A8

	arm_func_start FUN_037FB414
FUN_037FB414: ; 0x037FB414
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	bl FUN_037FAD78
	mov r5, r0
	ldr r0, _037FB4D4 ; =0x03803014
	ldrh r1, [r0]
	cmp r1, #0
	bne _037FB4C4
	mov r1, #1
	strh r1, [r0]
	mov r2, #0
	ldr r0, _037FB4D8 ; =0x027FFC00
	str r2, [r0, #0x38c]
	mov r1, r2
	ldr r0, _037FB4DC ; =0x03803018
_037FB44C:
	str r1, [r0, r2, lsl #2]
	add r2, r2, #1
	cmp r2, #0x20
	blt _037FB44C
	ldr r1, _037FB4E0 ; =0x0000C408
	ldr r0, _037FB4E4 ; =0x04000184
	strh r1, [r0]
	mov r0, #0x40000
	bl FUN_037F8740
	mov r0, #0x40000
	ldr r1, _037FB4E8 ; =FUN_037FB1BC
	bl FUN_037F8868
	mov r0, #0x40000
	bl FUN_037F87B0
	mov r4, #8
	mov r6, r4
	ldr r8, _037FB4EC ; =0x04000180
	mov r7, #0x3e8
	b _037FB4BC
_037FB498:
	mov r0, r4, lsl #8
	strh r0, [r8]
	mov r0, r7
	bl FUN_037FAE04
	ldrh r0, [r8]
	and r0, r0, #0xf
	cmp r0, r4
	movne r4, r6
	sub r4, r4, #1
_037FB4BC:
	cmp r4, #0
	bge _037FB498
_037FB4C4:
	mov r0, r5
	bl FUN_037FAD8C
	ldmia sp!, {r4, r5, r6, r7, r8, lr}
	bx lr
	.align 2, 0
_037FB4D4: .word 0x03803014
_037FB4D8: .word 0x027FFC00
_037FB4DC: .word 0x03803018
_037FB4E0: .word 0x0000C408
_037FB4E4: .word 0x04000184
_037FB4E8: .word FUN_037FB1BC
_037FB4EC: .word 0x04000180
	arm_func_end FUN_037FB414

	arm_func_start FUN_037FB4F0
FUN_037FB4F0: ; 0x037FB4F0
	mov r1, r0
	mov r0, #0xc000
	mov r1, r1, lsl #0x10
	mov r1, r1, lsr #0x10
	ldr ip, _037FB508 ; =FUN_037FB50C
	bx ip
	.align 2, 0
_037FB508: .word FUN_037FB50C
	arm_func_end FUN_037FB4F0

	arm_func_start FUN_037FB50C
FUN_037FB50C: ; 0x037FB50C
	mvn r3, r0
	ldr r2, _037FB528 ; =0x04000134
	ldrh r0, [r2]
	and r0, r3, r0
	orr r0, r1, r0
	strh r0, [r2]
	bx lr
	.align 2, 0
_037FB528: .word 0x04000134
	arm_func_end FUN_037FB50C

	arm_func_start FUN_037FB52C
FUN_037FB52C: ; 0x037FB52C
	stmdb sp!, {r4, lr}
	mov r4, #0
	mov r0, #0x8000
	bl FUN_037FB4F0
	ldr r0, _037FB564 ; =0x04000136
	ldrh r1, [r0]
	ands r0, r1, #0x80
	movne r4, #0x8000
	and r0, r1, #0xb
	orr r1, r4, r0, lsl #10
	ldr r0, _037FB568 ; =0x027FFFA8
	strh r1, [r0]
	ldmia sp!, {r4, lr}
	bx lr
	.align 2, 0
_037FB564: .word 0x04000136
_037FB568: .word 0x027FFFA8
	arm_func_end FUN_037FB52C

	arm_func_start FUN_037FB56C
FUN_037FB56C: ; 0x037FB56C
	stmdb sp!, {lr}
	sub sp, sp, #0xc
	bl FUN_037FA1B8
	cmp r0, #0
	beq _037FB58C
	bl FUN_037FA62C
	cmp r0, #0
	bne _037FB594
_037FB58C:
	mov r0, #0
	b _037FB5F0
_037FB594:
	ldr r0, _037FB5FC ; =0x03803098
	ldr r0, [r0]
	cmp r0, #0
	movne r0, #0
	bne _037FB5F0
	ldr r0, _037FB600 ; =0x0380309C
	bl FUN_037FA61C
	bl FUN_037FA080
	mov r2, r0
	ldr r0, _037FB604 ; =FUN_037FB52C
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	ldr r3, _037FB608 ; =0x0000082E
	str r0, [sp]
	ldr r0, _037FB600 ; =0x0380309C
	adds ip, r2, r3
	adc r2, r1, #0
	mov r1, ip
	bl FUN_037FA3FC
	mov r0, #1
	ldr r1, _037FB5FC ; =0x03803098
	str r0, [r1]
_037FB5F0:
	add sp, sp, #0xc
	ldmia sp!, {lr}
	bx lr
	.align 2, 0
_037FB5FC: .word 0x03803098
_037FB600: .word 0x0380309C
_037FB604: .word FUN_037FB52C
_037FB608: .word 0x0000082E
	arm_func_end FUN_037FB56C

	arm_func_start FUN_037FB60C
FUN_037FB60C: ; 0x037FB60C
	stmdb sp!, {lr}
	sub sp, sp, #4
	ldr r1, _037FB64C ; =0x04000304
	ldrh r0, [r1]
	orr r0, r0, #1
	strh r0, [r1]
	mov r0, #1
	bl FUN_037FE274
	mov r0, #0x100
	bl FUN_037FB654
	ldr r0, _037FB650 ; =0x0007AB80
	bl FUN_037FAE04
	bl FUN_037FB6C8
	add sp, sp, #4
	ldmia sp!, {lr}
	bx lr
	.align 2, 0
_037FB64C: .word 0x04000304
_037FB650: .word 0x0007AB80
	arm_func_end FUN_037FB60C

	arm_func_start FUN_037FB654
FUN_037FB654: ; 0x037FB654
	ldr ip, _037FB65C ; =SVC_SoundBiasSet
	bx ip
	.align 2, 0
_037FB65C: .word SVC_SoundBiasSet
	arm_func_end FUN_037FB654

	arm_func_start FUN_037FB660
FUN_037FB660: ; 0x037FB660
	stmdb sp!, {lr}
	sub sp, sp, #4
	bl FUN_037FB6B0
	mov r0, #0x80
	bl FUN_037FB6A4
	mov r0, #0x40000
	bl FUN_037FAE04
	mov r0, #1
	bl FUN_037FE248
	ldr r1, _037FB6A0 ; =0x04000304
	ldrh r0, [r1]
	bic r0, r0, #1
	strh r0, [r1]
	add sp, sp, #4
	ldmia sp!, {lr}
	bx lr
	.align 2, 0
_037FB6A0: .word 0x04000304
	arm_func_end FUN_037FB660

	arm_func_start FUN_037FB6A4
FUN_037FB6A4: ; 0x037FB6A4
	ldr ip, _037FB6AC ; =SVC_SoundBiasReset
	bx ip
	.align 2, 0
_037FB6AC: .word SVC_SoundBiasReset
	arm_func_end FUN_037FB6A4

	arm_func_start FUN_037FB6B0
FUN_037FB6B0: ; 0x037FB6B0
	ldr r1, _037FB6C4 ; =0x04000501
	ldrb r0, [r1]
	bic r0, r0, #0x80
	strb r0, [r1]
	bx lr
	.align 2, 0
_037FB6C4: .word 0x04000501
	arm_func_end FUN_037FB6B0

	arm_func_start FUN_037FB6C8
FUN_037FB6C8: ; 0x037FB6C8
	ldr r1, _037FB6DC ; =0x04000501
	ldrb r0, [r1]
	orr r0, r0, #0x80
	strb r0, [r1]
	bx lr
	.align 2, 0
_037FB6DC: .word 0x04000501
	arm_func_end FUN_037FB6C8

	arm_func_start FUN_037FB6E0
FUN_037FB6E0: ; 0x037FB6E0
	ldr ip, _037FB6E8 ; =FUN_037FC090
	bx ip
	.align 2, 0
_037FB6E8: .word FUN_037FC090
	arm_func_end FUN_037FB6E0

	arm_func_start FUN_037FB6EC
FUN_037FB6EC: ; 0x037FB6EC
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #4
	mov r7, r0
	ldr r6, _037FB730 ; =0x038030E0
	bl FUN_037FAD78
	mov r4, r0
	ldr r5, [r6, #0xf0]
	str r7, [r6, #0xf0]
	add r0, r6, #0x48
	ldr r1, [r6, #0xf0]
	bl FUN_037F8DD4
	mov r0, r4
	bl FUN_037FAD8C
	mov r0, r5
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, lr}
	bx lr
	.align 2, 0
_037FB730: .word 0x038030E0
	arm_func_end FUN_037FB6EC

	arm_func_start FUN_037FB734
FUN_037FB734: ; 0x037FB734
	ldr r1, _037FB740 ; =0x038030C8
	str r0, [r1]
	bx lr
	.align 2, 0
_037FB740: .word 0x038030C8
	arm_func_end FUN_037FB734

	arm_func_start FUN_037FB744
FUN_037FB744: ; 0x037FB744
	stmdb sp!, {lr}
	sub sp, sp, #0xc
	mvn r1, #2
	ldr r0, _037FB7DC ; =0x038030E0
	str r1, [r0, #0xc]
	mov r2, #0
	str r2, [r0, #0x10]
	str r2, [r0, #0x1c]
	str r2, [r0]
	str r2, [r0, #8]
	str r2, [r0, #0x18]
	str r2, [r0, #0x14]
	str r2, [r0, #0xf8]
	str r2, [r0, #0xf4]
	mov r1, #4
	str r1, [r0, #0xf0]
	mov r1, #0x400
	str r1, [sp]
	ldr r0, [r0, #0xf0]
	str r0, [sp, #4]
	ldr r0, _037FB7E0 ; =0x03803128
	ldr r1, _037FB7E4 ; =FUN_037FC218
	ldr r3, _037FB7E8 ; =0x03803700
	bl FUN_037F9110
	ldr r0, _037FB7E0 ; =0x03803128
	bl FUN_037F8ED0
	mov r0, #0xb
	ldr r1, _037FB7EC ; =FUN_037FC424
	bl FUN_037FB3A8
	ldr r0, _037FB7F0 ; =0x027FFC40
	ldrh r0, [r0]
	cmp r0, #2
	beq _037FB7D0
	mov r0, #1
	bl FUN_037FB734
_037FB7D0:
	add sp, sp, #0xc
	ldmia sp!, {lr}
	bx lr
	.align 2, 0
_037FB7DC: .word 0x038030E0
_037FB7E0: .word 0x03803128
_037FB7E4: .word FUN_037FC218
_037FB7E8: .word 0x03803700
_037FB7EC: .word FUN_037FC424
_037FB7F0: .word 0x027FFC40
	arm_func_end FUN_037FB744

	arm_func_start FUN_037FB7F4
FUN_037FB7F4: ; 0x037FB7F4
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	sub sp, sp, #8
	mov r4, r0
	bl FUN_037FBF40
	cmp r0, #0
	beq _037FB87C
	ldr r0, _037FB888 ; =0x038030E0
	ldr sl, [r0]
	mov sb, #0xa
	mov r0, #1
	strb r0, [sp]
	strb r4, [sp, #1]
	mov r8, #2
	add r7, sp, #0
	mov r6, #0
	ldr r5, _037FB88C ; =FUN_037FBE20
	mov r4, #5
_037FB838:
	bl FUN_037FBD74
	mov r0, r8
	bl FUN_037FC074
	mov r0, r7
	mov r1, r6
	mov r2, r8
	mov r3, r5
	bl FUN_037FBEB0
	mov r0, r4
	mov r1, r6
	bl FUN_037FBFF0
	ldr r0, [sl]
	cmp r0, #4
	bne _037FB87C
	sub sb, sb, #1
	cmp sb, #0
	bgt _037FB838
_037FB87C:
	add sp, sp, #8
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	bx lr
	.align 2, 0
_037FB888: .word 0x038030E0
_037FB88C: .word FUN_037FBE20
	arm_func_end FUN_037FB7F4

	arm_func_start FUN_037FB890
FUN_037FB890: ; 0x037FB890
	stmdb sp!, {r4, lr}
	bl FUN_037FBF40
	cmp r0, #0
	beq _037FB8D4
	ldr r0, _037FB8DC ; =0x038030E0
	ldr r4, [r0]
	bl FUN_037FBD74
	mov r0, #1
	bl FUN_037FC074
	ldr r0, _037FB8E0 ; =0x03801C58
	mov r1, #0
	mov r2, #1
	ldr r3, _037FB8E4 ; =FUN_037FBE20
	bl FUN_037FBEB0
	ldr r0, [r4, #0x34]
	ldr r1, [r4, #0x38]
	bl FUN_037FBFF0
_037FB8D4:
	ldmia sp!, {r4, lr}
	bx lr
	.align 2, 0
_037FB8DC: .word 0x038030E0
_037FB8E0: .word 0x03801C58
_037FB8E4: .word FUN_037FBE20
	arm_func_end FUN_037FB890

	arm_func_start FUN_037FB8E8
FUN_037FB8E8: ; 0x037FB8E8
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	mov r7, r0
	mov r6, r1
	ldr r0, _037FB978 ; =0x038030E0
	ldr r5, [r0]
	ldr r4, [r5, #0x1c]
	sub r1, r4, #1
	orr r0, r7, r6
	ands r0, r1, r0
	movne r0, #2
	strne r0, [r5]
	bne _037FB970
	bl FUN_037FBF40
	cmp r0, #0
	beq _037FB970
	mov r8, #0xd8
	b _037FB968
_037FB92C:
	bl FUN_037FBD74
	ldr r0, [r5, #0x24]
	add r0, r0, #1
	bl FUN_037FC074
	mov r0, r7
	mov r1, r8
	bl FUN_037FBCC8
	ldr r0, [r5, #0x3c]
	ldr r1, [r5, #0x40]
	bl FUN_037FBFF0
	ldr r0, [r5]
	cmp r0, #0
	bne _037FB970
	add r7, r7, r4
	sub r6, r6, r4
_037FB968:
	cmp r6, #0
	bne _037FB92C
_037FB970:
	ldmia sp!, {r4, r5, r6, r7, r8, lr}
	bx lr
	.align 2, 0
_037FB978: .word 0x038030E0
	arm_func_end FUN_037FB8E8

	arm_func_start FUN_037FB97C
FUN_037FB97C: ; 0x037FB97C
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #4
	mov r7, r0
	mov r6, r1
	mov r5, r2
	bl FUN_037FBF40
	cmp r0, #0
	beq _037FBA0C
	ldr r0, _037FBA18 ; =0x038030E0
	ldr r4, [r0]
	mov r1, #1
	ldr r0, _037FBA1C ; =0x03803704
	str r1, [r0, #0xc]
	ldr r0, [r4, #0x24]
	add r0, r0, #1
	add r0, r0, r5
	bl FUN_037FC074
	mov r0, r7
	mov r1, #3
	bl FUN_037FBCC8
	mov r0, r6
	mov r1, #0
	mov r2, r5
	ldr r3, _037FBA20 ; =FUN_037FBDB8
	bl FUN_037FBEB0
	mov r0, #0
	mov r1, r0
	bl FUN_037FBFF0
	ldr r0, [r4]
	cmp r0, #0
	bne _037FBA0C
	ldr r0, _037FBA1C ; =0x03803704
	ldr r0, [r0, #0xc]
	cmp r0, #0
	moveq r0, #1
	streq r0, [r4]
_037FBA0C:
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, lr}
	bx lr
	.align 2, 0
_037FBA18: .word 0x038030E0
_037FBA1C: .word 0x03803704
_037FBA20: .word FUN_037FBDB8
	arm_func_end FUN_037FB97C

	arm_func_start FUN_037FBA24
FUN_037FBA24: ; 0x037FBA24
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #4
	mov sl, r0
	mov sb, r1
	mov r8, r2
	bl FUN_037FBF40
	cmp r0, #0
	beq _037FBAD4
	ldr r0, _037FBAE0 ; =0x038030E0
	ldr r7, [r0]
	ldr r6, [r7, #0x20]
	sub r4, r6, #1
	mov fp, #0xa
	mov r0, #0
	str r0, [sp]
	b _037FBACC
_037FBA64:
	and r0, sl, r4
	sub r5, r6, r0
	cmp r5, r8
	movhi r5, r8
	bl FUN_037FBD74
	ldr r0, [r7, #0x24]
	add r0, r0, #1
	add r0, r0, r5
	bl FUN_037FC074
	mov r0, sl
	mov r1, fp
	bl FUN_037FBCC8
	mov r0, sb
	ldr r1, [sp]
	mov r2, r5
	ldr r3, _037FBAE4 ; =FUN_037FBE20
	bl FUN_037FBEB0
	ldr r0, [r7, #0x2c]
	ldr r1, [r7, #0x30]
	bl FUN_037FBFF0
	ldr r0, [r7]
	cmp r0, #0
	bne _037FBAD4
	add sb, sb, r5
	add sl, sl, r5
	sub r8, r8, r5
_037FBACC:
	cmp r8, #0
	bne _037FBA64
_037FBAD4:
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bx lr
	.align 2, 0
_037FBAE0: .word 0x038030E0
_037FBAE4: .word FUN_037FBE20
	arm_func_end FUN_037FBA24

	arm_func_start FUN_037FBAE8
FUN_037FBAE8: ; 0x037FBAE8
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #4
	mov sl, r0
	mov sb, r1
	mov r8, r2
	bl FUN_037FBF40
	cmp r0, #0
	beq _037FBB98
	ldr r0, _037FBBA4 ; =0x038030E0
	ldr r7, [r0]
	ldr r6, [r7, #0x20]
	sub r4, r6, #1
	mov r0, #2
	str r0, [sp]
	mov fp, #0
	b _037FBB90
_037FBB28:
	and r0, sl, r4
	sub r5, r6, r0
	cmp r5, r8
	movhi r5, r8
	bl FUN_037FBD74
	ldr r0, [r7, #0x24]
	add r0, r0, #1
	add r0, r0, r5
	bl FUN_037FC074
	mov r0, sl
	ldr r1, [sp]
	bl FUN_037FBCC8
	mov r0, sb
	mov r1, fp
	mov r2, r5
	ldr r3, _037FBBA8 ; =FUN_037FBE20
	bl FUN_037FBEB0
	ldr r0, [r7, #0x28]
	mov r1, fp
	bl FUN_037FBFF0
	ldr r0, [r7]
	cmp r0, #0
	bne _037FBB98
	add sb, sb, r5
	add sl, sl, r5
	sub r8, r8, r5
_037FBB90:
	cmp r8, #0
	bne _037FBB28
_037FBB98:
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bx lr
	.align 2, 0
_037FBBA4: .word 0x038030E0
_037FBBA8: .word FUN_037FBE20
	arm_func_end FUN_037FBAE8

	arm_func_start FUN_037FBBAC
FUN_037FBBAC: ; 0x037FBBAC
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	mov r4, r2
	bl FUN_037FBF40
	cmp r0, #0
	beq _037FBC0C
	ldr r0, _037FBC14 ; =0x038030E0
	ldr r0, [r0]
	ldr r0, [r0, #0x24]
	add r0, r0, #1
	add r0, r0, r4
	bl FUN_037FC074
	mov r0, r6
	mov r1, #3
	bl FUN_037FBCC8
	mov r0, #0
	mov r1, r5
	mov r2, r4
	ldr r3, _037FBC18 ; =FUN_037FBE6C
	bl FUN_037FBEB0
	mov r0, #0
	mov r1, r0
	bl FUN_037FBFF0
_037FBC0C:
	ldmia sp!, {r4, r5, r6, lr}
	bx lr
	.align 2, 0
_037FBC14: .word 0x038030E0
_037FBC18: .word FUN_037FBE6C
	arm_func_end FUN_037FBBAC

	arm_func_start FUN_037FBC1C
FUN_037FBC1C: ; 0x037FBC1C
	stmdb sp!, {r4, lr}
	sub sp, sp, #8
	ldr r0, _037FBCB8 ; =0x038030E0
	ldr r0, [r0]
	ldrb r4, [r0, #0x48]
	cmp r4, #0xff
	beq _037FBCAC
	ldr r0, _037FBCBC ; =0x03803700
	ldr r0, [r0]
	cmp r0, #0
	bne _037FBCAC
	mov r0, #5
	strb r0, [sp]
	mov r0, #2
	bl FUN_037FC074
	add r0, sp, #0
	mov r1, #0
	mov r2, #1
	ldr r3, _037FBCC0 ; =FUN_037FBE20
	bl FUN_037FBEB0
	mov r0, #0
	add r1, sp, #1
	mov r2, #1
	ldr r3, _037FBCC4 ; =FUN_037FBE6C
	bl FUN_037FBEB0
	mov r0, #0
	mov r1, r0
	bl FUN_037FBFF0
	ldrb r0, [sp, #1]
	cmp r0, r4
	beq _037FBCA0
	mov r0, r4
	bl FUN_037FB7F4
_037FBCA0:
	mov r1, #1
	ldr r0, _037FBCBC ; =0x03803700
	str r1, [r0]
_037FBCAC:
	add sp, sp, #8
	ldmia sp!, {r4, lr}
	bx lr
	.align 2, 0
_037FBCB8: .word 0x038030E0
_037FBCBC: .word 0x03803700
_037FBCC0: .word FUN_037FBE20
_037FBCC4: .word FUN_037FBE6C
	arm_func_end FUN_037FBC1C

	arm_func_start FUN_037FBCC8
FUN_037FBCC8: ; 0x037FBCC8
	stmdb sp!, {lr}
	sub sp, sp, #4
	ldr r2, _037FBD6C ; =0x038030E0
	ldr r2, [r2]
	ldr r2, [r2, #0x24]
	cmp r2, #1
	beq _037FBCF8
	cmp r2, #2
	beq _037FBD14
	cmp r2, #3
	beq _037FBD2C
	b _037FBD4C
_037FBCF8:
	and r3, r0, #0xff
	mov r0, r0, lsr #5
	and r0, r0, #8
	orr r0, r1, r0
	orr r0, r0, r3, lsl #8
	str r0, [sp]
	b _037FBD4C
_037FBD14:
	and r3, r0, #0xff
	and r0, r0, #0xff00
	orr r0, r1, r0
	orr r0, r0, r3, lsl #16
	str r0, [sp]
	b _037FBD4C
_037FBD2C:
	and ip, r0, #0xff
	and r3, r0, #0xff00
	mov r0, r0, lsr #8
	and r0, r0, #0xff00
	orr r0, r1, r0
	orr r0, r0, r3, lsl #8
	orr r0, r0, ip, lsl #24
	str r0, [sp]
_037FBD4C:
	add r0, sp, #0
	mov r1, #0
	add r2, r2, #1
	ldr r3, _037FBD70 ; =FUN_037FBE20
	bl FUN_037FBEB0
	add sp, sp, #4
	ldmia sp!, {lr}
	bx lr
	.align 2, 0
_037FBD6C: .word 0x038030E0
_037FBD70: .word FUN_037FBE20
	arm_func_end FUN_037FBCC8

	arm_func_start FUN_037FBD74
FUN_037FBD74: ; 0x037FBD74
	stmdb sp!, {lr}
	sub sp, sp, #4
	mov r0, #1
	bl FUN_037FC074
	ldr r0, _037FBDB0 ; =0x03801C5C
	mov r1, #0
	mov r2, #1
	ldr r3, _037FBDB4 ; =FUN_037FBE20
	bl FUN_037FBEB0
	mov r0, #0
	mov r1, r0
	bl FUN_037FBFF0
	add sp, sp, #4
	ldmia sp!, {lr}
	bx lr
	.align 2, 0
_037FBDB0: .word 0x03801C5C
_037FBDB4: .word FUN_037FBE20
	arm_func_end FUN_037FBD74

	arm_func_start FUN_037FBDB8
FUN_037FBDB8: ; 0x037FBDB8
	mov r2, #0
	ldr r1, _037FBE18 ; =0x040001A2
	strh r2, [r1]
	ldr r2, _037FBE1C ; =0x040001A0
_037FBDC8:
	ldrh r1, [r2]
	ands r1, r1, #0x80
	bne _037FBDC8
	ldr r1, _037FBE18 ; =0x040001A2
	ldrh r1, [r1]
	and r2, r1, #0xff
	ldr r1, [r0, #4]
	ldrb r1, [r1]
	cmp r2, r1
	beq _037FBE08
	mov r1, #0
	str r1, [r0, #0xc]
	ldr r1, [r0]
	cmp r1, #1
	movhi r1, #1
	strhi r1, [r0]
_037FBE08:
	ldr r1, [r0, #4]
	add r1, r1, #1
	str r1, [r0, #4]
	bx lr
	.align 2, 0
_037FBE18: .word 0x040001A2
_037FBE1C: .word 0x040001A0
	arm_func_end FUN_037FBDB8

	arm_func_start FUN_037FBE20
FUN_037FBE20: ; 0x037FBE20
	sub sp, sp, #8
	ldr r1, [r0, #4]
	ldrb r2, [r1]
	ldr r1, _037FBE64 ; =0x040001A2
	strh r2, [r1]
	ldr r1, [r0, #4]
	add r1, r1, #1
	str r1, [r0, #4]
	ldr r1, _037FBE68 ; =0x040001A0
_037FBE44:
	ldrh r0, [r1]
	ands r0, r0, #0x80
	bne _037FBE44
	ldr r0, _037FBE64 ; =0x040001A2
	ldrh r0, [r0]
	strh r0, [sp]
	add sp, sp, #8
	bx lr
	.align 2, 0
_037FBE64: .word 0x040001A2
_037FBE68: .word 0x040001A0
	arm_func_end FUN_037FBE20

	arm_func_start FUN_037FBE6C
FUN_037FBE6C: ; 0x037FBE6C
	mov r2, #0
	ldr r1, _037FBEA8 ; =0x040001A2
	strh r2, [r1]
	ldr r2, _037FBEAC ; =0x040001A0
_037FBE7C:
	ldrh r1, [r2]
	ands r1, r1, #0x80
	bne _037FBE7C
	ldr r1, _037FBEA8 ; =0x040001A2
	ldrh r2, [r1]
	ldr r1, [r0, #8]
	strb r2, [r1]
	ldr r1, [r0, #8]
	add r1, r1, #1
	str r1, [r0, #8]
	bx lr
	.align 2, 0
_037FBEA8: .word 0x040001A2
_037FBEAC: .word 0x040001A0
	arm_func_end FUN_037FBE6C

	arm_func_start FUN_037FBEB0
FUN_037FBEB0: ; 0x037FBEB0
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	mov r7, r2
	mov r6, r3
	ldr r5, _037FBF34 ; =0x03803704
	str r0, [r5, #4]
	str r1, [r5, #8]
	ldr r0, _037FBF38 ; =0x0000A040
	ldr r4, _037FBF3C ; =0x040001A0
	strh r0, [r4]
	mov r8, #0xa000
	b _037FBF10
_037FBEDC:
	ldr r0, [r5]
	sub r0, r0, #1
	str r0, [r5]
	ldr r0, [r5]
	cmp r0, #0
	streqh r8, [r4]
_037FBEF4:
	ldrh r0, [r4]
	ands r0, r0, #0x80
	bne _037FBEF4
	mov r0, r5
	mov lr, pc
	bx r6
	arm_func_end FUN_037FBEB0

	arm_func_start FUN_037FBF0C
FUN_037FBF0C: ; 0x037FBF0C
	sub r7, r7, #1
_037FBF10:
	cmp r7, #0
	bne _037FBEDC
	ldr r0, [r5]
	cmp r0, #0
	moveq r1, #0
	ldreq r0, _037FBF3C ; =0x040001A0
	streqh r1, [r0]
	ldmia sp!, {r4, r5, r6, r7, r8, lr}
	bx lr
	.align 2, 0
_037FBF34: .word 0x03803704
_037FBF38: .word 0x0000A040
_037FBF3C: .word 0x040001A0
	arm_func_end FUN_037FBF0C

	arm_func_start FUN_037FBF40
FUN_037FBF40: ; 0x037FBF40
	stmdb sp!, {lr}
	sub sp, sp, #4
	mov r0, #0
	mov r1, #0x32
	bl FUN_037FBFF0
	ldr r0, _037FBF80 ; =0x038030E0
	ldr r1, [r0]
	ldr r0, [r1]
	cmp r0, #4
	moveq r0, #6
	streq r0, [r1]
	moveq r0, #0
	movne r0, #1
	add sp, sp, #4
	ldmia sp!, {lr}
	bx lr
	.align 2, 0
_037FBF80: .word 0x038030E0
	arm_func_end FUN_037FBF40

	arm_func_start FUN_037FBF84
FUN_037FBF84: ; 0x037FBF84
	stmdb sp!, {lr}
	sub sp, sp, #4
	mov r0, #2
	bl FUN_037FC074
	ldr r0, _037FBFE4 ; =0x03801C60
	mov r1, #0
	mov r2, #1
	ldr r3, _037FBFE8 ; =FUN_037FBE20
	bl FUN_037FBEB0
	mov r0, #0
	add r1, sp, #0
	mov r2, #1
	ldr r3, _037FBFEC ; =FUN_037FBE6C
	bl FUN_037FBEB0
	mov r0, #0
	mov r1, r0
	bl FUN_037FBFF0
	ldrb r0, [sp]
	ands r0, r0, #1
	moveq r0, #1
	movne r0, #0
	add sp, sp, #4
	ldmia sp!, {lr}
	bx lr
	.align 2, 0
_037FBFE4: .word 0x03801C60
_037FBFE8: .word FUN_037FBE20
_037FBFEC: .word FUN_037FBE6C
	arm_func_end FUN_037FBF84

	arm_func_start FUN_037FBFF0
FUN_037FBFF0: ; 0x037FBFF0
	stmdb sp!, {r4, r5, r6, lr}
	mov r5, r0
	mov r4, r1
	adds r1, r5, r4
	beq _037FC068
	cmp r5, #0
	beq _037FC010
	bl FUN_037F8D30
_037FC010:
	cmp r4, #0
	beq _037FC050
	sub r6, r4, r5
	mov r4, #5
	b _037FC03C
_037FC024:
	cmp r6, #5
	movlt r5, r6
	movge r5, r4
	mov r0, r5
	bl FUN_037F8D30
	sub r6, r6, r5
_037FC03C:
	bl FUN_037FBF84
	cmp r0, #0
	bne _037FC050
	cmp r6, #0
	bgt _037FC024
_037FC050:
	bl FUN_037FBF84
	cmp r0, #0
	moveq r1, #4
	ldreq r0, _037FC070 ; =0x038030E0
	ldreq r0, [r0]
	streq r1, [r0]
_037FC068:
	ldmia sp!, {r4, r5, r6, lr}
	bx lr
	.align 2, 0
_037FC070: .word 0x038030E0
	arm_func_end FUN_037FBFF0

	arm_func_start FUN_037FC074
FUN_037FC074: ; 0x037FC074
	ldr r1, _037FC080 ; =0x03803704
	str r0, [r1]
	bx lr
	.align 2, 0
_037FC080: .word 0x03803704
	arm_func_end FUN_037FC074

	arm_func_start FUN_037FC084
FUN_037FC084: ; 0x037FC084
	ldr r0, _037FC08C ; =FUN_037FC174
	bx lr
	.align 2, 0
_037FC08C: .word FUN_037FC174
	arm_func_end FUN_037FC084

	arm_func_start FUN_037FC090
FUN_037FC090: ; 0x037FC090
	stmdb sp!, {lr}
	sub sp, sp, #4
	ldr r2, _037FC100 ; =0x038030E0
	ldr r0, [r2, #0xfc]
	cmp r0, #0
	bne _037FC0F4
	mov r0, #1
	str r0, [r2, #0xfc]
	mov r1, #0
	str r1, [r2, #0x28]
	ldr r0, [r2, #0x28]
	str r0, [r2, #0x24]
	ldr r0, [r2, #0x24]
	str r0, [r2, #0x20]
	mvn r0, #0
	str r0, [r2, #0x2c]
	str r1, [r2, #0x3c]
	str r1, [r2, #0x40]
	ldr r0, _037FC104 ; =0x03803714
	str r1, [r0]
	bl FUN_037FB744
	bl FUN_037FC084
	ldr r1, _037FC108 ; =0x03803720
	str r0, [r1]
	bl FUN_037FC558
_037FC0F4:
	add sp, sp, #4
	ldmia sp!, {lr}
	bx lr
	.align 2, 0
_037FC100: .word 0x038030E0
_037FC104: .word 0x03803714
_037FC108: .word 0x03803720
	arm_func_end FUN_037FC090

	arm_func_start FUN_037FC10C
FUN_037FC10C: ; 0x037FC10C
	stmdb sp!, {lr}
	sub sp, sp, #4
	mov r0, #0xb8000000
	mov r1, #0
	bl FUN_037FC178
	ldr r0, _037FC168 ; =0x03801F68
	ldr r0, [r0]
	ldr r0, [r0, #0x60]
	bic r0, r0, #0x7000000
	orr r1, r0, #0xa7000000
	mov r0, #0x2000
	rsb r0, r0, #0
	and r0, r1, r0
	ldr r1, _037FC16C ; =0x040001A4
	str r0, [r1]
_037FC148:
	ldr r0, [r1]
	ands r0, r0, #0x800000
	beq _037FC148
	ldr r0, _037FC170 ; =0x04100010
	ldr r0, [r0]
	add sp, sp, #4
	ldmia sp!, {lr}
	bx lr
	.align 2, 0
_037FC168: .word 0x03801F68
_037FC16C: .word 0x040001A4
_037FC170: .word 0x04100010
	arm_func_end FUN_037FC10C

	arm_func_start FUN_037FC174
FUN_037FC174: ; 0x037FC174
	bx lr
	arm_func_end FUN_037FC174

	arm_func_start FUN_037FC178
FUN_037FC178: ; 0x037FC178
	ldr r3, _037FC1F0 ; =0x040001A4
_037FC17C:
	ldr r2, [r3]
	ands r2, r2, #0x80000000
	bne _037FC17C
	mov r3, #0xc0
	ldr r2, _037FC1F4 ; =0x040001A1
	strb r3, [r2]
	mov r3, r0, lsr #0x18
	ldr r2, _037FC1F8 ; =0x040001A8
	strb r3, [r2]
	mov r3, r0, lsr #0x10
	ldr r2, _037FC1FC ; =0x040001A9
	strb r3, [r2]
	mov r3, r0, lsr #8
	ldr r2, _037FC200 ; =0x040001AA
	strb r3, [r2]
	ldr r2, _037FC204 ; =0x040001AB
	strb r0, [r2]
	mov r2, r1, lsr #0x18
	ldr r0, _037FC208 ; =0x040001AC
	strb r2, [r0]
	mov r2, r1, lsr #0x10
	ldr r0, _037FC20C ; =0x040001AD
	strb r2, [r0]
	mov r2, r1, lsr #8
	ldr r0, _037FC210 ; =0x040001AE
	strb r2, [r0]
	ldr r0, _037FC214 ; =0x040001AF
	strb r1, [r0]
	bx lr
	.align 2, 0
_037FC1F0: .word 0x040001A4
_037FC1F4: .word 0x040001A1
_037FC1F8: .word 0x040001A8
_037FC1FC: .word 0x040001A9
_037FC200: .word 0x040001AA
_037FC204: .word 0x040001AB
_037FC208: .word 0x040001AC
_037FC20C: .word 0x040001AD
_037FC210: .word 0x040001AE
_037FC214: .word 0x040001AF
	arm_func_end FUN_037FC178

	arm_func_start FUN_037FC218
FUN_037FC218: ; 0x037FC218
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #4
	ldr sb, _037FC420 ; =0x038030E0
	add r5, sb, #0x48
	mov r8, #0
	add r7, sb, #0xfc
	mov r6, #1
	mov r4, #3
	mov fp, #0xb
_037FC23C:
	mov sl, r8
	bl FUN_037FAD78
	str r0, [sp]
_037FC248:
	ldr r0, [sb, #0xfc]
	ands r0, r0, #4
	bne _037FC280
	ldr r0, [sb, #0xfc]
	ands r0, r0, #0x10
	beq _037FC28C
	ldr r0, [r7]
	orr r0, r0, #4
	str r0, [r7]
	ldr r0, [r7]
	bic r0, r0, #0x10
	str r0, [r7]
	mov sl, r6
	b _037FC29C
_037FC280:
	ldr r0, [sb, #0xfc]
	ands r0, r0, #8
	bne _037FC29C
_037FC28C:
	str r5, [sb, #0xec]
	mov r0, r8
	bl FUN_037F8F80
	b _037FC248
_037FC29C:
	ldr r0, [sp]
	bl FUN_037FAD8C
	cmp sl, #0
	beq _037FC40C
	ldr r0, [sb]
	str r8, [r0]
	ldr r2, [sb]
	ldr r1, [r2, #0x4c]
	ldr r0, [sb, #4]
	mov r0, r6, lsl r0
	ands r0, r1, r0
	streq r4, [r2]
	ldr r0, [sb, #4]
	cmp r0, #0xc
	addls pc, pc, r0, lsl #2
	b _037FC3B0
_037FC2DC: ; jump table
	b _037FC3B8 ; case 0
	b _037FC3B8 ; case 1
	b _037FC310 ; case 2
	b _037FC318 ; case 3
	b _037FC328 ; case 4
	b _037FC3B0 ; case 5
	b _037FC334 ; case 6
	b _037FC34C ; case 7
	b _037FC364 ; case 8
	b _037FC37C ; case 9
	b _037FC3B0 ; case 10
	b _037FC394 ; case 11
	b _037FC3A8 ; case 12
_037FC310:
	bl FUN_037FBC1C
	b _037FC3B8
_037FC318:
	bl FUN_037FC10C
	ldr r1, [sb]
	str r0, [r1, #8]
	b _037FC3B8
_037FC328:
	ldr r0, [sb]
	str r4, [r0]
	b _037FC3B8
_037FC334:
	ldr r2, [sb]
	ldr r0, [r2, #0xc]
	ldr r1, [r2, #0x10]
	ldr r2, [r2, #0x14]
	bl FUN_037FBBAC
	b _037FC3B8
_037FC34C:
	ldr r2, [sb]
	ldr r0, [r2, #0x10]
	ldr r1, [r2, #0xc]
	ldr r2, [r2, #0x14]
	bl FUN_037FBA24
	b _037FC3B8
_037FC364:
	ldr r2, [sb]
	ldr r0, [r2, #0x10]
	ldr r1, [r2, #0xc]
	ldr r2, [r2, #0x14]
	bl FUN_037FBAE8
	b _037FC3B8
_037FC37C:
	ldr r2, [sb]
	ldr r0, [r2, #0x10]
	ldr r1, [r2, #0xc]
	ldr r2, [r2, #0x14]
	bl FUN_037FB97C
	b _037FC3B8
_037FC394:
	ldr r1, [sb]
	ldr r0, [r1, #0x10]
	ldr r1, [r1, #0x14]
	bl FUN_037FB8E8
	b _037FC3B8
_037FC3A8:
	bl FUN_037FB890
	b _037FC3B8
_037FC3B0:
	ldr r0, [sb]
	str r4, [r0]
_037FC3B8:
	mov r0, fp
	mov r1, r6
	mov r2, r6
	bl FUN_037FB2DC
	cmp r0, #0
	blt _037FC3B8
	bl FUN_037FAD78
	mov sl, r0
	ldr r0, [sb, #0xfc]
	bic r0, r0, #0x4c
	str r0, [sb, #0xfc]
	add r0, sb, #0xf4
	bl FUN_037F8F04
	ldr r0, [sb, #0xfc]
	ands r0, r0, #0x10
	beq _037FC400
	mov r0, r5
	bl FUN_037F8ED0
_037FC400:
	mov r0, sl
	bl FUN_037FAD8C
	b _037FC23C
_037FC40C:
	mov r0, sb
	ldr r1, [sb, #0x44]
	mov lr, pc
	bx r1
	arm_func_end FUN_037FC218

	arm_func_start FUN_037FC41C
FUN_037FC41C: ; 0x037FC41C
	b _037FC23C
	.align 2, 0
_037FC420: .word 0x038030E0
	arm_func_end FUN_037FC41C

	arm_func_start FUN_037FC424
FUN_037FC424: ; 0x037FC424
	stmdb sp!, {lr}
	sub sp, sp, #4
	cmp r0, #0xb
	bne _037FC4F4
	cmp r2, #0
	beq _037FC4F4
	ldr r0, _037FC500 ; =0x038030E0
	ldr r2, [r0, #8]
	cmp r2, #0
	streq r1, [r0, #4]
	ldr r2, [r0, #4]
	cmp r2, #0xc
	addls pc, pc, r2, lsl #2
	b _037FC4C0
_037FC45C: ; jump table
	b _037FC490 ; case 0
	b _037FC4C0 ; case 1
	b _037FC4B4 ; case 2
	b _037FC4B4 ; case 3
	b _037FC4B4 ; case 4
	b _037FC4B4 ; case 5
	b _037FC4B4 ; case 6
	b _037FC4B4 ; case 7
	b _037FC4B4 ; case 8
	b _037FC4B4 ; case 9
	b _037FC4B4 ; case 10
	b _037FC4B4 ; case 11
	b _037FC4B4 ; case 12
_037FC490:
	ldr r2, [r0, #8]
	cmp r2, #0
	beq _037FC4C0
	cmp r2, #1
	streq r1, [r0]
	ldreq r1, [r0, #0xfc]
	orreq r1, r1, #0x10
	streq r1, [r0, #0xfc]
	b _037FC4C0
_037FC4B4:
	ldr r1, [r0, #0xfc]
	orr r1, r1, #0x10
	str r1, [r0, #0xfc]
_037FC4C0:
	ldr r1, [r0, #0xfc]
	ands r1, r1, #0x10
	ldreq r1, [r0, #8]
	addeq r1, r1, #1
	streq r1, [r0, #8]
	beq _037FC4F4
	mov r1, #0
	str r1, [r0, #8]
	ldr r1, [r0, #0xfc]
	ands r1, r1, #4
	ldrne r0, [r0, #0xec]
	addeq r0, r0, #0x48
	bl FUN_037F8ED0
_037FC4F4:
	add sp, sp, #4
	ldmia sp!, {lr}
	bx lr
	.align 2, 0
_037FC500: .word 0x038030E0
	arm_func_end FUN_037FC424

	arm_func_start FUN_037FC504
FUN_037FC504: ; 0x037FC504
	stmdb sp!, {lr}
	sub sp, sp, #4
	mov r0, #0
	bl FUN_037FC7C0
	bl FUN_037FB660
	bl FUN_037FCC6C
	bl FUN_037FAEA0
	add sp, sp, #4
	ldmia sp!, {lr}
	bx lr
	arm_func_end FUN_037FC504

	arm_func_start FUN_037FC52C
FUN_037FC52C: ; 0x037FC52C
	stmdb sp!, {lr}
	sub sp, sp, #4
	and r0, r1, #0x3f
	cmp r0, #1
	bne _037FC548
	bl FUN_037FC504
	b _037FC54C
_037FC548:
	bl FUN_037FAEA0
_037FC54C:
	add sp, sp, #4
	ldmia sp!, {lr}
	bx lr
	arm_func_end FUN_037FC52C

	arm_func_start FUN_037FC558
FUN_037FC558: ; 0x037FC558
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	ldr r0, _037FC5B0 ; =0x03803940
	ldr r1, [r0]
	cmp r1, #0
	bne _037FC5A4
	mov r1, #1
	str r1, [r0]
	bl FUN_037FB1B0
	mov r5, #0xe
	mov r4, #0
_037FC584:
	mov r0, r5
	mov r1, r4
	bl FUN_037FB380
	cmp r0, #0
	beq _037FC584
	mov r0, #0xe
	ldr r1, _037FC5B4 ; =FUN_037FC52C
	bl FUN_037FB3A8
_037FC5A4:
	add sp, sp, #4
	ldmia sp!, {r4, r5, lr}
	bx lr
	.align 2, 0
_037FC5B0: .word 0x03803940
_037FC5B4: .word FUN_037FC52C
	arm_func_end FUN_037FC558

	arm_func_start FUN_037FC5B8
FUN_037FC5B8: ; 0x037FC5B8
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #4
	mov r7, r0
	mov r6, #1
	mov r5, #0xd
	mov r4, #0
	b _037FC5DC
_037FC5D4:
	mov r0, r6
	bl FUN_037F8BD0
_037FC5DC:
	mov r0, r5
	mov r1, r7
	mov r2, r4
	bl FUN_037FB2DC
	cmp r0, #0
	bne _037FC5D4
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, lr}
	bx lr
	arm_func_end FUN_037FC5B8

	arm_func_start FUN_037FC600
FUN_037FC600: ; 0x037FC600
	stmdb sp!, {lr}
	sub sp, sp, #4
	mov r0, #0
	str r0, [sp]
	add r0, sp, #0
	ldr r1, _037FC638 ; =0x03803944
	ldr r2, _037FC63C ; =0x05000001
	bl FUN_037FC640
	bl FUN_037F8940
	ldr r1, _037FC638 ; =0x03803944
	strh r0, [r1, #2]
	add sp, sp, #4
	ldmia sp!, {lr}
	bx lr
	.align 2, 0
_037FC638: .word 0x03803944
_037FC63C: .word 0x05000001
	arm_func_end FUN_037FC600

	arm_func_start FUN_037FC640
FUN_037FC640: ; 0x037FC640
	ldr ip, _037FC648 ; =SVC_CpuSet
	bx ip
	.align 2, 0
_037FC648: .word SVC_CpuSet
	arm_func_end FUN_037FC640

	arm_func_start FUN_037FC64C
FUN_037FC64C: ; 0x037FC64C
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #4
	and r0, r1, #0x3f
	cmp r0, #3
	bne _037FC6B8
	ldr r0, _037FC6C8 ; =0x01FFFFC0
	and r0, r1, r0
	mov r2, r0, lsr #6
	ldr r1, _037FC6CC ; =0x04000204
	ldrh r0, [r1]
	bic r0, r0, #0x60
	orr r0, r0, r2, lsl #5
	strh r0, [r1]
	mov r7, #1
	mov r6, #0x11
	mov r5, #0x12
	mov r4, #0
	b _037FC69C
_037FC694:
	mov r0, r7
	bl FUN_037F8BD0
_037FC69C:
	mov r0, r6
	mov r1, r5
	mov r2, r4
	bl FUN_037FB2DC
	cmp r0, #0
	bne _037FC694
	b _037FC6BC
_037FC6B8:
	bl FUN_037FAEA0
_037FC6BC:
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, lr}
	bx lr
	.align 2, 0
_037FC6C8: .word 0x01FFFFC0
_037FC6CC: .word 0x04000204
	arm_func_end FUN_037FC64C

	arm_func_start FUN_037FC6D0
FUN_037FC6D0: ; 0x037FC6D0
	stmdb sp!, {lr}
	sub sp, sp, #4
	mov r0, #0
	bl FUN_037FC7C0
	bl FUN_037FB660
	bl FUN_037FCC6C
	bl FUN_037FAEA0
	add sp, sp, #4
	ldmia sp!, {lr}
	bx lr
	arm_func_end FUN_037FC6D0

	arm_func_start FUN_037FC6F8
FUN_037FC6F8: ; 0x037FC6F8
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	mov r7, r0
	mov r0, #0x8000000
	add r6, r0, #4
	mov r4, #1
	bl FUN_037F8940
	mov r0, r0, lsl #0x10
	mov r5, r0, lsr #0x10
	mov r0, r5
	bl FUN_037F8A58
	mov r1, #0
	ldr r0, _037FC7A0 ; =0x0000FFFF
	eor r2, r0, #3
	mov r2, r2, lsl #0x10
	mov lr, r2, lsr #0x10
	eor r2, r0, #0x84
	mov r2, r2, lsl #0x10
	mov r8, r2, lsr #0x10
	b _037FC77C
_037FC744:
	mov ip, r0
	cmp r1, #0x4c
	moveq ip, r8
	beq _037FC75C
	cmp r1, #0x4d
	moveq ip, lr
_037FC75C:
	mov r3, r1, lsl #1
	ldrh r2, [r7, r3]
	and ip, ip, r2
	ldrh r2, [r6, r3]
	cmp ip, r2
	movne r4, #0
	bne _037FC784
	add r1, r1, #1
_037FC77C:
	cmp r1, #0x4e
	blt _037FC744
_037FC784:
	mov r0, r5
	bl FUN_037F8934
	mov r0, r5
	bl FUN_037F89D8
	mov r0, r4
	ldmia sp!, {r4, r5, r6, r7, r8, lr}
	bx lr
	.align 2, 0
_037FC7A0: .word 0x0000FFFF
	arm_func_end FUN_037FC6F8

	arm_func_start FUN_037FC7A4
FUN_037FC7A4: ; 0x037FC7A4
	ldr r1, _037FC7B8 ; =0x0380394C
	str r0, [r1]
	ldr r1, _037FC7BC ; =0x08001000
	strh r0, [r1]
	bx lr
	.align 2, 0
_037FC7B8: .word 0x0380394C
_037FC7BC: .word 0x08001000
	arm_func_end FUN_037FC7A4

	arm_func_start FUN_037FC7C0
FUN_037FC7C0: ; 0x037FC7C0
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #4
	movs r5, r0
	beq _037FC800
	ldr r0, [r5]
	cmp r0, #0
	bne _037FC800
	ldr r0, [r5, #0x44]
	add r0, r0, #1
	str r0, [r5, #0x44]
	ldr r1, [r5, #0x40]
	cmp r1, #0
	beq _037FC800
	ldr r0, [r5, #0x44]
	cmp r0, r1
	movhi r5, #0
_037FC800:
	cmp r5, #0
	beq _037FC814
	ldr r0, [r5, #0x3c]
	cmp r0, #0
	bne _037FC8AC
_037FC814:
	bl FUN_037FAD78
	mov sb, r0
	ldr r0, _037FC9CC ; =0x0380394C
	ldr r0, [r0]
	cmp r0, #2
	bne _037FC898
	mov r8, #0
	ldr r7, _037FC9D0 ; =0x027FFFE8
	ldr r4, _037FC9D4 ; =0x03803948
	ldr fp, _037FC9D8 ; =0x000080E8
	mov r6, r8
	mov r5, #1
	b _037FC890
_037FC848:
	mov r0, r7
	bl FUN_037F8A08
	ands sl, r0, #0x80
	bne _037FC868
	ldrh r0, [r4]
	bl FUN_037F8A18
	cmp r0, #0
	bne _037FC888
_037FC868:
	mov r0, r6
	bl FUN_037FC7A4
	mov r8, r5
	cmp sl, #0
	bne _037FC890
	ldrh r0, [r4]
	bl FUN_037F8A38
	b _037FC890
_037FC888:
	mov r0, fp
	bl FUN_037FAE04
_037FC890:
	cmp r8, #0
	beq _037FC848
_037FC898:
	ldr r0, _037FC9DC ; =0x03803970
	bl FUN_037FA36C
	mov r0, sb
	bl FUN_037FAD8C
	b _037FC9C0
_037FC8AC:
	cmp r5, #0
	beq _037FC9C0
	ldr r0, _037FC9D0 ; =0x027FFFE8
	bl FUN_037F8A08
	ands r4, r0, #0x80
	bne _037FC8D8
	ldr r0, _037FC9D4 ; =0x03803948
	ldrh r0, [r0]
	bl FUN_037F8A18
	cmp r0, #0
	bne _037FC9A8
_037FC8D8:
	ldr r1, [r5]
	ldr r0, [r5, #4]
	cmp r1, r0
	bne _037FC914
	mov r0, #0
	bl FUN_037FC7A4
	str r5, [sp]
	ldr r0, _037FC9DC ; =0x03803970
	ldr r1, [r5, #8]
	mov r2, #0
	ldr r3, _037FC9E0 ; =FUN_037FC7C0
	bl FUN_037FA478
	mov r0, #0
	str r0, [r5]
	b _037FC990
_037FC914:
	ands r0, r1, #1
	beq _037FC958
	mov r0, #0
	bl FUN_037FC7A4
	str r5, [sp]
	ldr r0, _037FC9DC ; =0x03803970
	ldr r1, [r5]
	mov r1, r1, lsr #1
	add r1, r5, r1, lsl #2
	ldr r1, [r1, #0x24]
	mov r2, #0
	ldr r3, _037FC9E0 ; =FUN_037FC7C0
	bl FUN_037FA478
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
	b _037FC990
_037FC958:
	mov r0, #2
	bl FUN_037FC7A4
	str r5, [sp]
	ldr r0, _037FC9DC ; =0x03803970
	ldr r1, [r5]
	mov r1, r1, lsr #1
	add r1, r5, r1, lsl #2
	ldr r1, [r1, #0xc]
	mov r2, #0
	ldr r3, _037FC9E0 ; =FUN_037FC7C0
	bl FUN_037FA478
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
_037FC990:
	cmp r4, #0
	bne _037FC9C0
	ldr r0, _037FC9D4 ; =0x03803948
	ldrh r0, [r0]
	bl FUN_037F8A38
	b _037FC9C0
_037FC9A8:
	str r5, [sp]
	ldr r0, _037FC9DC ; =0x03803970
	ldr r1, _037FC9E4 ; =0x0000020B
	mov r2, #0
	ldr r3, _037FC9E0 ; =FUN_037FC7C0
	bl FUN_037FA478
_037FC9C0:
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bx lr
	.align 2, 0
_037FC9CC: .word 0x0380394C
_037FC9D0: .word 0x027FFFE8
_037FC9D4: .word 0x03803948
_037FC9D8: .word 0x000080E8
_037FC9DC: .word 0x03803970
_037FC9E0: .word FUN_037FC7C0
_037FC9E4: .word 0x0000020B
	arm_func_end FUN_037FC7C0

	arm_func_start FUN_037FC9E8
FUN_037FC9E8: ; 0x037FC9E8
	mov r0, r1
	ldr ip, _037FC9F4 ; =FUN_037FC7C0
	bx ip
	.align 2, 0
_037FC9F4: .word FUN_037FC7C0
	arm_func_end FUN_037FC9E8

	arm_func_start FUN_037FC9F8
FUN_037FC9F8: ; 0x037FC9F8
	stmdb sp!, {lr}
	sub sp, sp, #4
	and r0, r1, #0x3f
	cmp r0, #2
	bne _037FCA14
	bl FUN_037FC6D0
	b _037FCA18
_037FCA14:
	bl FUN_037FAEA0
_037FCA18:
	add sp, sp, #4
	ldmia sp!, {lr}
	bx lr
	arm_func_end FUN_037FC9F8

	arm_func_start FUN_037FCA24
FUN_037FCA24: ; 0x037FCA24
	stmdb sp!, {lr}
	sub sp, sp, #4
	and r0, r1, #0x3f
	cmp r0, #1
	ldreq r0, _037FCA58 ; =0x03803958
	streq r1, [r0]
	moveq r1, #1
	streq r1, [r0, #0x10]
	beq _037FCA4C
	bl FUN_037FAEA0
_037FCA4C:
	add sp, sp, #4
	ldmia sp!, {lr}
	bx lr
	.align 2, 0
_037FCA58: .word 0x03803958
	arm_func_end FUN_037FCA24

	arm_func_start FUN_037FCA5C
FUN_037FCA5C: ; 0x037FCA5C
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #4
	ldr r0, _037FCB2C ; =0x03803950
	ldr r1, [r0]
	cmp r1, #0
	bne _037FCB20
	mov r1, #1
	str r1, [r0]
	ldr r0, _037FCB30 ; =0x04000300
	ldrh r0, [r0]
	ands r0, r0, #1
	beq _037FCB20
	mov r0, #0x40000
	bl FUN_037F87E8
	mov r5, r0
	ldr r1, _037FCB34 ; =0x04000208
	ldrh r4, [r1]
	mov r0, #1
	strh r0, [r1]
	mov r7, #0x100
	ldr r6, _037FCB38 ; =0x03803958
	b _037FCABC
_037FCAB4:
	mov r0, r7
	bl FUN_037F8BD0
_037FCABC:
	ldr r0, [r6, #0x10]
	cmp r0, #1
	bne _037FCAB4
	ldr r1, [r6]
	ldr r0, _037FCB3C ; =0x01FFFFC0
	and r0, r1, r0
	mov r0, r0, lsr #6
	mov r0, r0, lsl #5
	add r0, r0, #0x2000000
	add r0, r0, #4
	bl FUN_037FC6F8
	ldr r2, _037FCB40 ; =0x027FFC30
	ldrb r1, [r2, #5]
	bic r1, r1, #1
	and r0, r0, #0xff
	and r0, r0, #1
	orr r0, r1, r0
	strb r0, [r2, #5]
	mov r0, #1
	bl FUN_037FC5B8
	ldr r1, _037FCB34 ; =0x04000208
	ldrh r0, [r1]
	strh r4, [r1]
	mov r0, r5
	bl FUN_037F87E8
_037FCB20:
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, lr}
	bx lr
	.align 2, 0
_037FCB2C: .word 0x03803950
_037FCB30: .word 0x04000300
_037FCB34: .word 0x04000208
_037FCB38: .word 0x03803958
_037FCB3C: .word 0x01FFFFC0
_037FCB40: .word 0x027FFC30
	arm_func_end FUN_037FCA5C

	arm_func_start FUN_037FCB44
FUN_037FCB44: ; 0x037FCB44
	stmdb sp!, {lr}
	sub sp, sp, #4
	bl FUN_037FA1C8
	bl FUN_037FA63C
	ldr r0, _037FCBD4 ; =0x03803970
	bl FUN_037FA61C
	ldr r0, _037FCBD8 ; =0x03803954
	ldr r1, [r0]
	cmp r1, #0
	bne _037FCBC8
	mov r1, #1
	str r1, [r0]
	bl FUN_037FC600
	bl FUN_037F8940
	mvn r1, #2
	cmp r0, r1
	beq _037FCBC8
	ldr r1, _037FCBDC ; =0x03803948
	strh r0, [r1]
	bl FUN_037FB1B0
	mov r0, #0xd
	ldr r1, _037FCBE0 ; =FUN_037FCA24
	bl FUN_037FB3A8
	bl FUN_037FCA5C
	mov r0, #0xd
	ldr r1, _037FCBE4 ; =FUN_037FC9F8
	bl FUN_037FB3A8
	mov r0, #0x10
	ldr r1, _037FCBE8 ; =FUN_037FC9E8
	bl FUN_037FB3A8
	mov r0, #0x11
	ldr r1, _037FCBEC ; =FUN_037FC64C
	bl FUN_037FB3A8
_037FCBC8:
	add sp, sp, #4
	ldmia sp!, {lr}
	bx lr
	.align 2, 0
_037FCBD4: .word 0x03803970
_037FCBD8: .word 0x03803954
_037FCBDC: .word 0x03803948
_037FCBE0: .word FUN_037FCA24
_037FCBE4: .word FUN_037FC9F8
_037FCBE8: .word FUN_037FC9E8
_037FCBEC: .word FUN_037FC64C
	arm_func_end FUN_037FCB44
