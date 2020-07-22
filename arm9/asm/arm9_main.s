	.include "asm/macros.inc"
	.include "global.inc"

	.text

	arm_func_start FUN_02300000
FUN_02300000: ; 0x02300000
	stmdb sp!, {r4, lr}
	ldr r1, _02300074 ; =0x0231EFE0
	mov r0, #0
	add r2, r1, #0x21000
	mov r3, #1
	bl FUN_02304614
	mov r1, r0
	mov r0, #0
	bl FUN_02304170
	ldr r1, _02300074 ; =0x0231EFE0
	mov r0, #0
	add r1, r1, #0x21000
	bl FUN_02304184
	mov r0, #0
	bl FUN_023043C8
	mov r4, r0
	mov r0, #0
	bl FUN_023043B4
	mov r1, r0
	mov r2, r4
	mov r0, #0
	bl FUN_02304574
	movs r4, r0
	bpl _02300064
	bl FUN_02305188
_02300064:
	mov r1, r4
	mov r0, #0
	bl FUN_023046D0
	ldmia sp!, {r4, pc}
	.align 2, 0
_02300074: .word 0x0231EFE0
	arm_func_end FUN_02300000

	arm_func_start FUN_02300078
FUN_02300078: ; 0x02300078
	ldr r0, _02300090 ; =_027E0000
	add r0, r0, #0x3000
	ldr r1, [r0, #0xff8]
	orr r1, r1, #1
	str r1, [r0, #0xff8]
	bx lr
	.align 2, 0
_02300090: .word _027E0000
	arm_func_end FUN_02300078

	arm_func_start FUN_02300094
FUN_02300094: ; 0x02300094
	ldr r0, _023000A8 ; =0x0231CF80
	mov r1, #1
	str r1, [r0, #0xc]
	mov r0, #0
	bx lr
	.align 2, 0
_023000A8: .word 0x0231CF80
	arm_func_end FUN_02300094

	arm_func_start FUN_023000AC
FUN_023000AC: ; 0x023000AC
	ldr r1, _023000F4 ; =0x04000130
	ldr r0, _023000F8 ; =0x027FFFA8
	ldrh r3, [r1]
	ldrh r2, [r0]
	ldr r1, _023000FC ; =0x023142C8
	ldr r0, _02300100 ; =0x00002FFF
	orr r2, r3, r2
	eor r2, r2, r0
	and r0, r2, r0
	mov r0, r0, lsl #0x10
	ldrh r2, [r1, #2]
	mov r3, r0, lsr #0x10
	eor r2, r2, r0, lsr #16
	and r0, r2, r0, lsr #16
	mov r0, r0, lsl #0x10
	strh r3, [r1, #2]
	mov r0, r0, lsr #0x10
	bx lr
	.align 2, 0
_023000F4: .word 0x04000130
_023000F8: .word 0x027FFFA8
_023000FC: .word 0x023142C8
_02300100: .word 0x00002FFF
	arm_func_end FUN_023000AC

	arm_func_start FUN_02300104
FUN_02300104: ; 0x02300104
	stmdb sp!, {r3, lr}
	bl FUN_0230A850
	ldr r1, _02300138 ; =0x023142C8
	ldr r1, [r1, #4]
	cmp r1, r0
	beq _02300128
	bl FUN_0230A850
	ldr r1, _02300138 ; =0x023142C8
	str r0, [r1, #4]
_02300128:
	ldr r0, _02300138 ; =0x023142C8
	ldr r0, [r0, #4]
	bl FUN_0230200C
	ldmia sp!, {r3, pc}
	.align 2, 0
_02300138: .word 0x023142C8
	arm_func_end FUN_02300104

	arm_func_start FUN_0230013C
FUN_0230013C: ; 0x0230013C
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, #0
	cmp r5, #0
	ldmleia sp!, {r3, r4, r5, pc}
_02300150:
	bl FUN_02304F4C
	add r4, r4, #1
	cmp r4, r5
	blt _02300150
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end FUN_0230013C

	arm_func_start NitroMain
NitroMain: ; 0x02300164
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0x3c
	sub sp, sp, #0x800
	ldr r1, _02300ED0 ; =0x027FF000
	ldr r0, _02300ED4 ; =0x0231CF38
	mov r4, #0
	str r1, [r0]
	bl FUN_02304120
	bl FUN_02303878
	bl FUN_02304D58
	bl FUN_02304DF4
	bl FUN_02308D34
	bl FUN_02305800
	ldr r0, _02300ED8 ; =0x027E0022
	bl FUN_02304A08
	mov r0, r4
	bl FUN_0237D054
	bl FUN_02300000
	mvn r0, #0
	bl FUN_023072E0
	bl FUN_023072D0
	cmp r0, #0
	bne _023001C8
	bl FUN_02305188
	b _02300258
_023001C8:
	ldr r0, _02300EDC ; =0x027FF00C
	ldr r0, [r0]
	cmp r0, #0
	bne _02300208
	bl FUN_02309270
	ldr r0, _02300EE0 ; =0x027FFE00
	mov r2, #0x160
	sub r1, r0, #0xe00
	bl FUN_02305618
	ldr r0, _02300EE0 ; =0x027FFE00
	mov r2, #0x160
	sub r1, r0, #0x380
	bl FUN_02305618
	ldr r1, _02300EE4 ; =0x4A414441
	ldr r0, _02300EDC ; =0x027FF00C
	str r1, [r0]
_02300208:
	ldr r0, _02300EE8 ; =0x0231416C
	mov r1, #3
	bl FUN_02306A94
	ldr r3, _02300ED0 ; =0x027FF000
	ldr r1, _02300EE4 ; =0x4A414441
	ldr r2, [r3, #0x48]
	str r2, [r0, #0x2c]
	ldr r2, [r3, #0x4c]
	str r2, [r0, #0x30]
	ldr r2, [r3, #0x40]
	str r2, [r0, #0x34]
	ldr r2, [r3, #0x44]
	str r2, [r0, #0x38]
	ldr r0, [r3, #0xc]
	cmp r0, r1
	ldreqh r1, [r3, #0x10]
	ldreq r0, _02300EEC ; =0x00003130
	cmpeq r1, r0
	beq _02300258
	bl FUN_02305188
_02300258:
	bl FUN_02302FB4
	mov r2, r0, lsl #0x10
	mov r0, #0
	mov r1, r0
	mov r5, r2, lsr #0x10
	bl FUN_0230731C
	mov r1, r0
	cmp r1, #0x2000
	ldr r0, _02300EF0 ; =0x0231CFD0
	bhs _02300284
	bl FUN_0230731C
_02300284:
	bl FUN_023018A0
	ldr r3, _02300EF4 ; =0x04000208
	ldr r1, _02300EF8 ; =FUN_02300078
	ldrh r0, [r3]
	mov r2, #0
	mov r0, #1
	strh r2, [r3]
	bl FUN_02302F00
	mov r0, #1
	bl FUN_02302E48
	mov r0, #0x40000
	bl FUN_02302E48
	mov r0, #1
	bl FUN_023023A8
	ldr r2, _02300EF4 ; =0x04000208
	mov r0, #1
	ldrh r1, [r2]
	strh r0, [r2]
	bl FUN_02304EBC
	bl FUN_02304F4C
	bl FUN_02302314
	ldr r3, _02300EFC ; =0x04001000
	mov r1, #0x6200
	ldr r2, [r3]
	mov r0, #0x5000000
	orr r2, r2, #0x10000
	str r2, [r3]
	ldr r6, _02300F00 ; =0x0400006C
	strh r1, [r0]
	mov r7, #0
_023002FC:
	bl FUN_02304F4C
	mov r0, r6
	sub r1, r7, #0x10
	bl FUN_02302274
	add r0, r6, #0x1000
	sub r1, r7, #0x10
	bl FUN_02302274
	add r7, r7, #1
	cmp r7, #0x10
	ble _023002FC
	bl FUN_02300F68
	mov r0, #0xf
	bl FUN_02307CB0
	ldr r0, _02300F04 ; =OSi_ReferSymbol
	ldr r1, _02300F08 ; =0x0231CF90
	bic r6, r0, #1
	mov r0, r6
	mov r2, #0x10
	bl FUN_02305618
	ldr r0, _02300F0C ; =FUN_02300094
	bl FUN_02309D0C
	bl FUN_023017F8
	ldr r3, _02300F10 ; =0x02313DF2
	add ip, sp, #0xf2
	mov r2, #0xc
_02300360:
	ldrh r1, [r3]
	ldrh r0, [r3, #2]
	add r3, r3, #4
	strh r1, [ip]
	strh r0, [ip, #2]
	add ip, ip, #4
	subs r2, r2, #1
	bne _02300360
	ldrh r0, [r3]
	add r7, sp, #0x400
	ldr r3, _02300F14 ; =0x02313EA8
	add r7, r7, #0x6e
	strh r0, [ip]
	mov r2, #0x18
_02300398:
	ldrh r1, [r3]
	ldrh r0, [r3, #2]
	add r3, r3, #4
	strh r1, [r7]
	strh r0, [r7, #2]
	add r7, r7, #4
	subs r2, r2, #1
	bne _02300398
	ldrh r0, [r3]
	ldr r3, _02300F18 ; =0x02313DC4
	add lr, sp, #0xc4
	strh r0, [r7]
	mov r2, #0xb
_023003CC:
	ldrh r1, [r3]
	ldrh r0, [r3, #2]
	add r3, r3, #4
	strh r1, [lr]
	strh r0, [lr, #2]
	add lr, lr, #4
	subs r2, r2, #1
	bne _023003CC
	ldr r0, _02300F1C ; =0x02313D5C
	add r7, sp, #0xb4
	ldrh ip, [r3]
	ldmia r0, {r0, r1, r2, r3}
	stmia r7, {r0, r1, r2, r3}
	add r3, sp, #0x400
	ldr r7, _02300F20 ; =0x02313F6E
	add r3, r3, #0xa
	strh ip, [lr]
	mov r2, #0x19
_02300414:
	ldrh r1, [r7]
	ldrh r0, [r7, #2]
	add r7, r7, #4
	strh r1, [r3]
	strh r0, [r3, #2]
	add r3, r3, #4
	subs r2, r2, #1
	bne _02300414
	ldr r0, _02300F24 ; =0x02313D6C
	add r7, sp, #0xa4
	ldmia r0, {r0, r1, r2, r3}
	stmia r7, {r0, r1, r2, r3}
	ldr r7, _02300F28 ; =0x02313E24
	add r3, sp, #0x68
	mov r2, #0xf
_02300450:
	ldrh r1, [r7]
	ldrh r0, [r7, #2]
	add r7, r7, #4
	strh r1, [r3]
	strh r0, [r3, #2]
	add r3, r3, #4
	subs r2, r2, #1
	bne _02300450
	ldr r0, _02300F2C ; =0x02313D7C
	add r7, sp, #0x58
	ldmia r0, {r0, r1, r2, r3}
	stmia r7, {r0, r1, r2, r3}
	add r3, sp, #0x300
	ldr r7, _02300F30 ; =0x02313FD2
	add r3, r3, #0xa6
	mov r2, #0x19
_02300490:
	ldrh r1, [r7]
	ldrh r0, [r7, #2]
	add r7, r7, #4
	strh r1, [r3]
	strh r0, [r3, #2]
	add r3, r3, #4
	subs r2, r2, #1
	bne _02300490
	ldr r0, _02300F34 ; =0x02313D8C
	add r7, sp, #0x48
	ldmia r0, {r0, r1, r2, r3}
	stmia r7, {r0, r1, r2, r3}
	add r3, sp, #0x300
	ldr r7, _02300F38 ; =0x02314036
	add r3, r3, #0x26
	mov r2, #0x20
_023004D0:
	ldrh r1, [r7]
	ldrh r0, [r7, #2]
	add r7, r7, #4
	strh r1, [r3]
	strh r0, [r3, #2]
	add r3, r3, #4
	subs r2, r2, #1
	bne _023004D0
	ldr r0, _02300F3C ; =0x02313D3C
	add r7, sp, #0x38
	ldmia r0, {r0, r1, r2, r3}
	stmia r7, {r0, r1, r2, r3}
	add r3, sp, #0x200
	ldr r7, _02300F40 ; =0x02313F0A
	add r3, r3, #0xc2
	mov r2, #0x19
_02300510:
	ldrh r1, [r7]
	ldrh r0, [r7, #2]
	add r7, r7, #4
	strh r1, [r3]
	strh r0, [r3, #2]
	add r3, r3, #4
	subs r2, r2, #1
	bne _02300510
	ldr r0, _02300F44 ; =0x02313D4C
	add r7, sp, #0x28
	ldmia r0, {r0, r1, r2, r3}
	stmia r7, {r0, r1, r2, r3}
	add r3, sp, #0x200
	ldr r7, _02300F48 ; =0x02313E60
	add r3, r3, #0x7a
	mov r2, #0x12
_02300550:
	ldrh r1, [r7]
	ldrh r0, [r7, #2]
	add r7, r7, #4
	strh r1, [r3]
	strh r0, [r3, #2]
	add r3, r3, #4
	subs r2, r2, #1
	bne _02300550
	ldr r7, _02300F4C ; =0x02313D9C
	add r3, sp, #0
	mov r2, #0xa
_0230057C:
	ldrh r1, [r7]
	ldrh r0, [r7, #2]
	add r7, r7, #4
	strh r1, [r3]
	strh r0, [r3, #2]
	add r3, r3, #4
	subs r2, r2, #1
	bne _0230057C
_0230059C:
	bl FUN_02304F4C
	bl FUN_0230183C
	cmp r4, r0
	beq _023005C4
	bl FUN_0230183C
	movs r4, r0
	beq _023005C0
	bl FUN_023017E4
	b _023005C4
_023005C0:
	bl FUN_02301828
_023005C4:
	bl FUN_023017A8
	bl FUN_0230183C
	cmp r0, #0
	movne r7, #0
	bne _023005E0
	bl FUN_023000AC
	mov r7, r0
_023005E0:
	ldr r1, _02300F50 ; =0x0231CF80
	ldr r0, _02300F54 ; =0x023142C8
	ldrb r3, [r1]
	ldrb r2, [r0]
	cmp r2, r3
	strneb r3, [r0]
	movne r0, #0
	ldreq r0, [r1, #8]
	addeq r0, r0, #1
	str r0, [r1, #8]
	cmp r3, #0xd
	addls pc, pc, r3, lsl #2
	b _02300E94
_02300614: ; jump table
	b _0230064C ; case 0
	b _0230064C ; case 1
	b _02300670 ; case 2
	b _02300738 ; case 3
	b _023007F4 ; case 4
	b _023008A0 ; case 5
	b _02300940 ; case 6
	b _023009E4 ; case 7
	b _02300A7C ; case 8
	b _02300B24 ; case 9
	b _02300BC4 ; case 10
	b _02300CE4 ; case 11
	b _02300E08 ; case 12
	b _02300E14 ; case 13
_0230064C:
	ldr r0, _02300F08 ; =0x0231CF90
	mov r1, r6
	mov r2, #0x10
	bl FUN_02305618
	bl FUN_02301DF8
	mov r0, #0
	bl FUN_02301AF4
	bl FUN_02300FBC
	b _02300E98
_02300670:
	add r3, sp, #0xf2
	add ip, sp, #0x248
	mov r2, #0xc
_0230067C:
	ldrh r1, [r3]
	ldrh r0, [r3, #2]
	add r3, r3, #4
	strh r1, [ip]
	strh r0, [ip, #2]
	add ip, ip, #4
	subs r2, r2, #1
	bne _0230067C
	ldrh r3, [r3]
	add r1, sp, #0x200
	add r0, sp, #0x248
	add r1, r1, #0x16
	mov r2, #0x32
	strh r3, [ip]
	bl FUN_023054F0
	ldr r1, _02300F50 ; =0x0231CF80
	ldr r0, _02300F58 ; =0x88888889
	ldr r3, [r1, #8]
	ldr r2, _02300F5C ; =0xAAAAAAAB
	umull r1, r0, r3, r0
	mov r0, r0, lsr #4
	umull r1, ip, r0, r2
	mov ip, ip, lsr #1
	mov r3, #3
	umull r1, r2, r3, ip
	add r2, sp, #0x200
	rsb ip, r1, r0
	add r2, r2, #0x16
	ldr r1, _02300F60 ; =0x0000FFFF
	add r0, r2, ip, lsl #1
	strh r1, [r0, #0x2c]
	bl FUN_02301DF8
	add r3, sp, #0x200
	mov r0, #1
	mov r1, #0x10
	mov r2, #0x98
	add r3, r3, #0x16
	bl FUN_02301E14
	bl FUN_023010C8
	bl FUN_02300104
	tst r7, #2
	beq _02300E98
	bl FUN_02301068
	ldr r0, _02300F50 ; =0x0231CF80
	mov r1, #0xa
	strb r1, [r0]
	b _02300E98
_02300738:
	add r3, sp, #0x400
	add r7, sp, #0x700
	add r3, r3, #0x6e
	add r7, r7, #0xda
	mov r2, #0x18
_0230074C:
	ldrh r1, [r3]
	ldrh r0, [r3, #2]
	add r3, r3, #4
	strh r1, [r7]
	strh r0, [r7, #2]
	add r7, r7, #4
	subs r2, r2, #1
	bne _0230074C
	ldrh r3, [r3]
	add r0, sp, #0x700
	add r1, sp, #0x700
	add r0, r0, #0xda
	add r1, r1, #0x78
	mov r2, #0x62
	strh r3, [r7]
	bl FUN_023054F0
	ldr r1, _02300F50 ; =0x0231CF80
	ldr r0, _02300F58 ; =0x88888889
	ldr r2, [r1, #8]
	ldr r1, _02300F5C ; =0xAAAAAAAB
	umull r0, r3, r2, r0
	mov r3, r3, lsr #4
	umull r0, r7, r3, r1
	mov r7, r7, lsr #1
	mov r2, #3
	umull r0, r1, r2, r7
	add r1, sp, #0x700
	add r1, r1, #0x78
	rsb r7, r0, r3
	ldr r2, _02300F60 ; =0x0000FFFF
	add r0, r1, r7, lsl #1
	strh r2, [r0, #0x5c]
	bl FUN_02301DF8
	add r3, sp, #0x700
	mov r0, #1
	mov r1, #0x10
	mov r2, #0x98
	add r3, r3, #0x78
	bl FUN_02301E14
	bl FUN_0230128C
	bl FUN_02300104
	b _02300E98
_023007F4:
	ldr r0, _02300F50 ; =0x0231CF80
	ldr r0, [r0, #8]
	cmp r0, #0
	bne _02300860
	add ip, sp, #0xc4
	add r3, sp, #0x1e8
	mov r2, #0xb
_02300810:
	ldrh r1, [ip]
	ldrh r0, [ip, #2]
	add ip, ip, #4
	strh r1, [r3]
	strh r0, [r3, #2]
	add r3, r3, #4
	subs r2, r2, #1
	bne _02300810
	ldrh r1, [ip]
	mvn r0, #0
	strh r1, [r3]
	bl FUN_0230200C
	bl FUN_02301DF8
	mov r0, #0
	bl FUN_02301AF4
	mov r0, #1
	mov r1, #0x10
	mov r2, #0x98
	add r3, sp, #0x1e8
	bl FUN_02301E14
_02300860:
	ldr r0, _02300F50 ; =0x0231CF80
	add r1, sp, #0xb4
	ldr r0, [r0, #8]
	add lr, sp, #0x1d8
	mov r0, r0, lsr #3
	and ip, r0, #3
	ldmia r1, {r0, r1, r2, r3}
	stmia lr, {r0, r1, r2, r3}
	ldr r0, [lr, ip, lsl #2]
	bl FUN_02301E94
	tst r7, #1
	beq _02300E98
	ldr r0, _02300F50 ; =0x0231CF80
	mov r1, #5
	strb r1, [r0]
	b _02300E98
_023008A0:
	ldr r0, _02300F50 ; =0x0231CF80
	ldr r0, [r0, #8]
	cmp r0, #0
	bne _02300900
	add ip, sp, #0x400
	add r3, sp, #0x700
	add ip, ip, #0xa
	add r3, r3, #0x14
	mov r2, #0x19
_023008C4:
	ldrh r1, [ip]
	ldrh r0, [ip, #2]
	add ip, ip, #4
	strh r1, [r3]
	strh r0, [r3, #2]
	add r3, r3, #4
	subs r2, r2, #1
	bne _023008C4
	bl FUN_02301DF8
	add r3, sp, #0x700
	add r3, r3, #0x14
	mov r0, #1
	mov r1, #0x10
	mov r2, #0x98
	bl FUN_02301E14
_02300900:
	ldr r0, _02300F50 ; =0x0231CF80
	add r1, sp, #0xa4
	ldr r0, [r0, #8]
	add lr, sp, #0x1c8
	mov r0, r0, lsr #3
	and ip, r0, #3
	ldmia r1, {r0, r1, r2, r3}
	stmia lr, {r0, r1, r2, r3}
	ldr r0, [lr, ip, lsl #2]
	bl FUN_02301E94
	tst r7, #1
	beq _02300E98
	ldr r0, _02300F50 ; =0x0231CF80
	mov r1, #0xa
	strb r1, [r0]
	b _02300E98
_02300940:
	ldr r0, _02300F50 ; =0x0231CF80
	ldr r0, [r0, #8]
	cmp r0, #0
	bne _023009A4
	add ip, sp, #0x68
	add r3, sp, #0x18c
	mov r2, #0xf
_0230095C:
	ldrh r1, [ip]
	ldrh r0, [ip, #2]
	add ip, ip, #4
	strh r1, [r3]
	strh r0, [r3, #2]
	add r3, r3, #4
	subs r2, r2, #1
	bne _0230095C
	mvn r0, #0
	bl FUN_0230200C
	bl FUN_02301DF8
	mov r0, #0
	bl FUN_02301AF4
	mov r0, #1
	mov r1, #0x10
	mov r2, #0x98
	add r3, sp, #0x18c
	bl FUN_02301E14
_023009A4:
	ldr r0, _02300F50 ; =0x0231CF80
	add r1, sp, #0x58
	ldr r0, [r0, #8]
	add lr, sp, #0x17c
	mov r0, r0, lsr #3
	and ip, r0, #3
	ldmia r1, {r0, r1, r2, r3}
	stmia lr, {r0, r1, r2, r3}
	ldr r0, [lr, ip, lsl #2]
	bl FUN_02301E94
	tst r7, #1
	beq _02300E98
	ldr r0, _02300F50 ; =0x0231CF80
	mov r1, #7
	strb r1, [r0]
	b _02300E98
_023009E4:
	ldr r0, _02300F50 ; =0x0231CF80
	ldr r0, [r0, #8]
	cmp r0, #0
	bne _02300A3C
	add ip, sp, #0x300
	add ip, ip, #0xa6
	add r3, sp, #0x6b0
	mov r2, #0x19
_02300A04:
	ldrh r1, [ip]
	ldrh r0, [ip, #2]
	add ip, ip, #4
	strh r1, [r3]
	strh r0, [r3, #2]
	add r3, r3, #4
	subs r2, r2, #1
	bne _02300A04
	bl FUN_02301DF8
	add r3, sp, #0x6b0
	mov r0, #1
	mov r1, #0x10
	mov r2, #0x98
	bl FUN_02301E14
_02300A3C:
	ldr r0, _02300F50 ; =0x0231CF80
	add r1, sp, #0x48
	ldr r0, [r0, #8]
	add lr, sp, #0x16c
	mov r0, r0, lsr #3
	and ip, r0, #3
	ldmia r1, {r0, r1, r2, r3}
	stmia lr, {r0, r1, r2, r3}
	ldr r0, [lr, ip, lsl #2]
	bl FUN_02301E94
	tst r7, #1
	beq _02300E98
	ldr r0, _02300F50 ; =0x0231CF80
	mov r1, #0xa
	strb r1, [r0]
	b _02300E98
_02300A7C:
	ldr r0, _02300F50 ; =0x0231CF80
	ldr r0, [r0, #8]
	cmp r0, #0
	bne _02300AE4
	add ip, sp, #0x300
	add ip, ip, #0x26
	add r3, sp, #0x630
	mov r2, #0x20
_02300A9C:
	ldrh r1, [ip]
	ldrh r0, [ip, #2]
	add ip, ip, #4
	strh r1, [r3]
	strh r0, [r3, #2]
	add r3, r3, #4
	subs r2, r2, #1
	bne _02300A9C
	mvn r0, #0
	bl FUN_0230200C
	bl FUN_02301DF8
	mov r0, #0
	bl FUN_02301AF4
	mov r0, #1
	mov r1, #0x10
	mov r2, #0x98
	add r3, sp, #0x630
	bl FUN_02301E14
_02300AE4:
	ldr r0, _02300F50 ; =0x0231CF80
	add r1, sp, #0x38
	ldr r0, [r0, #8]
	add lr, sp, #0x15c
	mov r0, r0, lsr #3
	and ip, r0, #3
	ldmia r1, {r0, r1, r2, r3}
	stmia lr, {r0, r1, r2, r3}
	ldr r0, [lr, ip, lsl #2]
	bl FUN_02301E94
	tst r7, #1
	beq _02300E98
	ldr r0, _02300F50 ; =0x0231CF80
	mov r1, #9
	strb r1, [r0]
	b _02300E98
_02300B24:
	ldr r0, _02300F50 ; =0x0231CF80
	ldr r0, [r0, #8]
	cmp r0, #0
	bne _02300B84
	add ip, sp, #0x200
	add r3, sp, #0x500
	add ip, ip, #0xc2
	add r3, r3, #0xcc
	mov r2, #0x19
_02300B48:
	ldrh r1, [ip]
	ldrh r0, [ip, #2]
	add ip, ip, #4
	strh r1, [r3]
	strh r0, [r3, #2]
	add r3, r3, #4
	subs r2, r2, #1
	bne _02300B48
	bl FUN_02301DF8
	add r3, sp, #0x500
	add r3, r3, #0xcc
	mov r0, #1
	mov r1, #0x10
	mov r2, #0x98
	bl FUN_02301E14
_02300B84:
	ldr r0, _02300F50 ; =0x0231CF80
	add r1, sp, #0x28
	ldr r0, [r0, #8]
	add lr, sp, #0x14c
	mov r0, r0, lsr #3
	and ip, r0, #3
	ldmia r1, {r0, r1, r2, r3}
	stmia lr, {r0, r1, r2, r3}
	ldr r0, [lr, ip, lsl #2]
	bl FUN_02301E94
	tst r7, #1
	beq _02300E98
	ldr r0, _02300F50 ; =0x0231CF80
	mov r1, #0xa
	strb r1, [r0]
	b _02300E98
_02300BC4:
	ldr r0, _02300F50 ; =0x0231CF80
	ldr r0, [r0, #8]
	cmp r0, #0
	bne _02300C44
	add ip, sp, #0x200
	add r3, sp, #0x500
	add ip, ip, #0x7a
	add r3, r3, #0x84
	mov r2, #0x12
_02300BE8:
	ldrh r1, [ip]
	ldrh r0, [ip, #2]
	add ip, ip, #4
	strh r1, [r3]
	strh r0, [r3, #2]
	add r3, r3, #4
	subs r2, r2, #1
	bne _02300BE8
	mvn r0, #0
	bl FUN_0230200C
	bl FUN_02301DF8
	mov r0, #2
	bl FUN_02301AF4
	ldr r1, _02300F50 ; =0x0231CF80
	mov r0, #0
	str r0, [r1, #4]
	bl FUN_02301F20
	add r3, sp, #0x500
	mov r0, #1
	mov r1, #0x10
	mov r2, #0x98
	add r3, r3, #0x84
	bl FUN_02301E14
_02300C44:
	tst r7, #1
	beq _02300C6C
	ldr r0, _02300F50 ; =0x0231CF80
	ldr r1, [r0, #4]
	cmp r1, #0
	movne r1, #0xb
	strneb r1, [r0]
	bne _02300E98
	bl FUN_02300F8C
	b _02300E98
_02300C6C:
	tst r7, #2
	beq _02300C98
	bl FUN_02301DF8
	mov r0, #0
	bl FUN_02301AF4
	mov r0, #5
	bl FUN_0230013C
	ldr r0, _02300F50 ; =0x0231CF80
	mov r1, #0xb
	strb r1, [r0]
	b _02300E98
_02300C98:
	tst r7, #0x80
	beq _02300CC0
	ldr r1, _02300F50 ; =0x0231CF80
	ldr r0, [r1, #4]
	cmp r0, #0
	bne _02300E98
	mov r0, #1
	str r0, [r1, #4]
	bl FUN_02301F20
	b _02300E98
_02300CC0:
	tst r7, #0x40
	ldrne r1, _02300F50 ; =0x0231CF80
	ldrne r0, [r1, #4]
	cmpne r0, #0
	beq _02300E98
	mov r0, #0
	str r0, [r1, #4]
	bl FUN_02301F20
	b _02300E98
_02300CE4:
	ldr r0, _02300F50 ; =0x0231CF80
	ldr r0, [r0, #8]
	cmp r0, #0
	bne _02300D58
	add ip, sp, #0
	add r3, sp, #0x124
	mov r2, #0xa
_02300D00:
	ldrh r1, [ip]
	ldrh r0, [ip, #2]
	add ip, ip, #4
	strh r1, [r3]
	strh r0, [r3, #2]
	add r3, r3, #4
	subs r2, r2, #1
	bne _02300D00
	mvn r0, #0
	bl FUN_0230200C
	bl FUN_02301DF8
	mov r0, #2
	bl FUN_02301AF4
	ldr r1, _02300F50 ; =0x0231CF80
	mov r0, #1
	str r0, [r1, #4]
	bl FUN_02301F20
	mov r0, #1
	mov r1, #0x10
	mov r2, #0x98
	add r3, sp, #0x124
	bl FUN_02301E14
_02300D58:
	tst r7, #1
	beq _02300D90
	ldr r0, _02300F50 ; =0x0231CF80
	ldr r1, [r0, #4]
	cmp r1, #0
	moveq r1, #0xc
	movne r1, #0xa
	strb r1, [r0]
	bl FUN_02301DF8
	mov r0, #0
	bl FUN_02301AF4
	mov r0, #5
	bl FUN_0230013C
	b _02300E98
_02300D90:
	tst r7, #2
	beq _02300DBC
	bl FUN_02301DF8
	mov r0, #0
	bl FUN_02301AF4
	mov r0, #5
	bl FUN_0230013C
	ldr r0, _02300F50 ; =0x0231CF80
	mov r1, #0xa
	strb r1, [r0]
	b _02300E98
_02300DBC:
	tst r7, #0x80
	beq _02300DE4
	ldr r1, _02300F50 ; =0x0231CF80
	ldr r0, [r1, #4]
	cmp r0, #0
	bne _02300E98
	mov r0, #1
	str r0, [r1, #4]
	bl FUN_02301F20
	b _02300E98
_02300DE4:
	tst r7, #0x40
	ldrne r1, _02300F50 ; =0x0231CF80
	ldrne r0, [r1, #4]
	cmpne r0, #0
	beq _02300E98
	mov r0, #0
	str r0, [r1, #4]
	bl FUN_02301F20
	b _02300E98
_02300E08:
	bl FUN_02307F6C
_02300E0C:
	bl FUN_02305188
	b _02300E0C
_02300E14:
	ldr r4, _02300F64 ; =0x023140B6
	add r3, sp, #0x4d0
	mov r2, #0x2d
_02300E20:
	ldrh r1, [r4]
	ldrh r0, [r4, #2]
	add r4, r4, #4
	strh r1, [r3]
	strh r0, [r3, #2]
	add r3, r3, #4
	subs r2, r2, #1
	bne _02300E20
	mvn r0, #0
	bl FUN_0230200C
	bl FUN_02301DF8
	mov r0, #1
	bl FUN_02301AF4
	add r3, sp, #0x4d0
	mov r0, #1
	mov r1, #0x10
	mov r2, #0x68
	bl FUN_02301E14
	bl FUN_0230183C
	cmp r0, #0
	beq _02300E78
	bl FUN_02307F6C
_02300E78:
	mov r4, #0
_02300E7C:
	bl FUN_02304F4C
	add r4, r4, #1
	cmp r4, #0x3c
	blt _02300E7C
_02300E8C:
	bl FUN_02305188
	b _02300E8C
_02300E94:
	bl FUN_02305188
_02300E98:
	mov r0, r5
	bl FUN_02308F08
	bl FUN_02309BF8
	mov r0, r5
	bl FUN_02308EE8
	ldr r0, _02300F50 ; =0x0231CF80
	ldr r0, [r0, #0xc]
	cmp r0, #0
	beq _0230059C
	bl FUN_02301068
	ldr r0, _02300F50 ; =0x0231CF80
	mov r1, #0xd
	strb r1, [r0]
	b _0230059C
	.align 2, 0
_02300ED0: .word 0x027FF000
_02300ED4: .word 0x0231CF38
_02300ED8: .word 0x027E0022
_02300EDC: .word 0x027FF00C
_02300EE0: .word 0x027FFE00
_02300EE4: .word 0x4A414441
_02300EE8: .word 0x0231416C
_02300EEC: .word 0x00003130
_02300EF0: .word 0x0231CFD0
_02300EF4: .word 0x04000208
_02300EF8: .word FUN_02300078
_02300EFC: .word 0x04001000
_02300F00: .word 0x0400006C
_02300F04: .word OSi_ReferSymbol
_02300F08: .word 0x0231CF90
_02300F0C: .word FUN_02300094
_02300F10: .word 0x02313DF2
_02300F14: .word 0x02313EA8
_02300F18: .word 0x02313DC4
_02300F1C: .word 0x02313D5C
_02300F20: .word 0x02313F6E
_02300F24: .word 0x02313D6C
_02300F28: .word 0x02313E24
_02300F2C: .word 0x02313D7C
_02300F30: .word 0x02313FD2
_02300F34: .word 0x02313D8C
_02300F38: .word 0x02314036
_02300F3C: .word 0x02313D3C
_02300F40: .word 0x02313F0A
_02300F44: .word 0x02313D4C
_02300F48: .word 0x02313E60
_02300F4C: .word 0x02313D9C
_02300F50: .word 0x0231CF80
_02300F54: .word 0x023142C8
_02300F58: .word 0x88888889
_02300F5C: .word 0xAAAAAAAB
_02300F60: .word 0x0000FFFF
_02300F64: .word 0x023140B6
	arm_func_end NitroMain

	arm_func_start FUN_02300F68
FUN_02300F68: ; 0x02300F68
	ldr r1, _02300F84 ; =0x0231CF80
	mov r3, #1
	ldr r0, _02300F88 ; =0x0233FFE0
	mov r2, #0
	strb r3, [r1]
	str r2, [r0, #4]
	bx lr
	.align 2, 0
_02300F84: .word 0x0231CF80
_02300F88: .word 0x0233FFE0
	arm_func_end FUN_02300F68

	arm_func_start FUN_02300F8C
FUN_02300F8C: ; 0x02300F8C
	ldr r1, _02300FB4 ; =0x0233FFE0
	mov r2, #0
	str r2, [r1, #8]
	ldr r0, _02300FB8 ; =0x0231CF80
	str r2, [r1, #0xc]
	mov r2, #1
	strb r2, [r0]
	mov r0, #0x3c
	str r0, [r1, #4]
	bx lr
	.align 2, 0
_02300FB4: .word 0x0233FFE0
_02300FB8: .word 0x0231CF80
	arm_func_end FUN_02300F8C

	arm_func_start FUN_02300FBC
FUN_02300FBC: ; 0x02300FBC
	stmdb sp!, {lr}
	sub sp, sp, #0x54
	add r0, sp, #4
	bl FUN_02305020
	ldrh r1, [sp, #0x1c]
	ldr r0, _02301050 ; =0x02340000
	add r3, sp, #8
	str r1, [sp]
	ldrb r1, [sp, #5]
	mov r2, #0
	bl FUN_02301540
	ldr r2, _02301054 ; =0x0233FFE0
	mov r3, #3
	ldrh ip, [r2]
	ldr r0, _02301058 ; =0x023400FC
	ldr r1, _02301050 ; =0x02340000
	add ip, ip, #1
	strh ip, [r2]
	str r3, [sp]
	ldrh r3, [r2]
	ldr r2, _0230105C ; =0x00400286
	bl FUN_0230E1FC
	ldr r0, _02301060 ; =FUN_02301398
	bl FUN_0230B60C
	bl FUN_0230E4B4
	cmp r0, #0
	ldr r2, _02301054 ; =0x0233FFE0
	mov r3, #0
	ldr r1, _02301064 ; =0x0231CF80
	mov r0, #2
	strb r0, [r1]
	str r3, [r2, #8]
	str r3, [r2, #0xc]
	movne r0, #4
	strneb r0, [r1]
	add sp, sp, #0x54
	ldmia sp!, {pc}
	.align 2, 0
_02301050: .word 0x02340000
_02301054: .word 0x0233FFE0
_02301058: .word 0x023400FC
_0230105C: .word 0x00400286
_02301060: .word FUN_02301398
_02301064: .word 0x0231CF80
	arm_func_end FUN_02300FBC

	arm_func_start FUN_02301068
FUN_02301068: ; 0x02301068
	stmdb sp!, {r3, lr}
	ldr r0, _023010C4 ; =0x0231CF80
	ldrb r1, [r0]
	cmp r1, #1
	beq _02301090
	cmp r1, #2
	beq _0230109C
	cmp r1, #3
	beq _023010B0
	ldmia sp!, {r3, pc}
_02301090:
	mov r1, #4
	strb r1, [r0]
	ldmia sp!, {r3, pc}
_0230109C:
	bl FUN_0230E660
	ldr r0, _023010C4 ; =0x0231CF80
	mov r1, #4
	strb r1, [r0]
	ldmia sp!, {r3, pc}
_023010B0:
	bl FUN_0230E660
	ldr r0, _023010C4 ; =0x0231CF80
	mov r1, #8
	strb r1, [r0]
	ldmia sp!, {r3, pc}
	.align 2, 0
_023010C4: .word 0x0231CF80
	arm_func_end FUN_02301068

	arm_func_start FUN_023010C8
FUN_023010C8: ; 0x023010C8
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	bl FUN_0230C404
	ldr r1, _023011DC ; =0x0233FFE0
	mov r8, r0
	ldr r0, [r1, #4]
	cmp r0, #0
	ble _023010FC
	bl FUN_02304F4C
	ldr r0, _023011DC ; =0x0233FFE0
	ldr r1, [r0, #4]
	sub r1, r1, #1
	str r1, [r0, #4]
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
_023010FC:
	mov sb, #0
	ldr r4, _023011E0 ; =0x00400286
	mov sl, r8
	str sb, [r1, #4]
	mov r5, sb
	mov r7, #1
_02301114:
	ldrh r0, [r8, #2]
	tst r0, r7, lsl sb
	beq _02301180
	ldr r0, [sl, #0x514]
	cmp r0, r4
	beq _02301160
	bl FUN_02304ED0
	add r1, sl, #0x500
	strh r5, [r1, #0x9a]
	mov r6, r0
	ldrh r1, [r8]
	mvn r0, r7, lsl sb
	and r1, r1, r0
	mov r0, sb
	strh r1, [r8]
	bl FUN_0230CF50
	mov r0, r6
	bl FUN_02304EE4
	b _02301180
_02301160:
	mov r0, sb
	bl FUN_0230B4EC
	cmp r0, #0
	bne _02301180
	ldr r0, _023011E4 ; =0x0231CF80
	mov r1, #3
	strb r1, [r0]
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
_02301180:
	add sb, sb, #1
	cmp sb, #0x10
	add sl, sl, #0x590
	blt _02301114
	ldr r0, _023011DC ; =0x0233FFE0
	ldr r1, [r0, #0xc]
	cmp r1, #0xe10
	movge r1, #0
	strge r1, [r0, #0xc]
	ldr r0, _023011DC ; =0x0233FFE0
	ldr r1, [r0, #0xc]
	add r1, r1, #1
	str r1, [r0, #0xc]
	cmp r1, #0xe10
	ldmltia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	bl FUN_0230E660
	ldr r1, _023011DC ; =0x0233FFE0
	mov r3, #0
	ldr r0, _023011E4 ; =0x0231CF80
	mov r2, #4
	str r3, [r1, #0xc]
	strb r2, [r0]
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	.align 2, 0
_023011DC: .word 0x0233FFE0
_023011E0: .word 0x00400286
_023011E4: .word 0x0231CF80
	arm_func_end FUN_023010C8

	arm_func_start FUN_023011E8
FUN_023011E8: ; 0x023011E8
	stmdb sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x40
	cmp r1, #0
	cmpne r2, #0
	mov r5, r0
	mov r4, r3
	addeq sp, sp, #0x40
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	cmp r4, #0
	ldrne r0, [sp, #0x50]
	cmpne r0, #0
	addeq sp, sp, #0x40
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	ldr r0, [sp, #0x54]
	cmp r0, #0
	ldrne r0, [sp, #0x58]
	cmpne r0, #0
	addeq sp, sp, #0x40
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	add r0, sp, #0
	bl FUN_0230F74C
	ldr r2, [sp, #0x50]
	add r0, sp, #0x14
	mov r1, r4
	bl FUN_0230F74C
	ldr r1, [sp, #0x54]
	ldr r2, [sp, #0x58]
	add r0, sp, #0x28
	bl FUN_0230F74C
	ldr r3, [sp, #0x5c]
	add r1, sp, #0
	mov r0, r5
	mov r2, #0x40
	str r3, [sp, #0x3c]
	bl FUN_0230F74C
	mov r0, #1
	add sp, sp, #0x40
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end FUN_023011E8

	arm_func_start FUN_0230128C
FUN_0230128C: ; 0x0230128C
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #0x24
	ldr r0, _02301384 ; =0x0233FFE0
	ldr r1, [r0, #0x14]
	add r1, r1, #1
	str r1, [r0, #0x14]
	bl FUN_0230B634
	ldr r0, _02301384 ; =0x0233FFE0
	ldr r0, [r0, #8]
	cmp r0, #1
	addne sp, sp, #0x24
	ldmneia sp!, {r4, r5, pc}
	ldr r3, _02301388 ; =0x023FE840
	add r0, sp, #0x10
	ldr r1, [r3, #0x24]
	str r1, [sp]
	ldr r1, [r3, #0x2c]
	str r1, [sp, #4]
	ldr r1, [r3, #0x34]
	str r1, [sp, #8]
	ldr r1, [r3, #0xc0]
	str r1, [sp, #0xc]
	ldr r1, [r3, #0xc]
	ldr r2, [r3, #0x14]
	ldr r3, [r3, #0x1c]
	bl FUN_023011E8
	cmp r0, #0
	bne _02301310
	ldr r0, _0230138C ; =0x0231CF80
	mov r1, #8
	strb r1, [r0]
	add sp, sp, #0x24
	ldmia sp!, {r4, r5, pc}
_02301310:
	ldr r1, _02301388 ; =0x023FE840
	ldr r2, _02301390 ; =0x02314170
	add r0, sp, #0x10
	add r1, r1, #0x40
	bl FUN_0230F820
	cmp r0, #0
	bne _02301340
	ldr r0, _0230138C ; =0x0231CF80
	mov r1, #8
	strb r1, [r0]
	add sp, sp, #0x24
	ldmia sp!, {r4, r5, pc}
_02301340:
	bl FUN_02304F4C
	ldr r4, _02301394 ; =0x0400006C
	mov r5, #0
_0230134C:
	mov r0, r4
	mov r1, r5
	bl FUN_02302274
	mov r1, r5
	add r0, r4, #0x1000
	bl FUN_02302274
	bl FUN_02304F4C
	add r5, r5, #1
	cmp r5, #0x10
	ble _0230134C
	bl FUN_0237D000
	bl FUN_0237D14C
	add sp, sp, #0x24
	ldmia sp!, {r4, r5, pc}
	.align 2, 0
_02301384: .word 0x0233FFE0
_02301388: .word 0x023FE840
_0230138C: .word 0x0231CF80
_02301390: .word 0x02314170
_02301394: .word 0x0400006C
	arm_func_end FUN_0230128C

	arm_func_start FUN_02301398
FUN_02301398: ; 0x02301398
	stmdb sp!, {r4, lr}
	mov r4, r1
	cmp r0, #0x13
	addls pc, pc, r0, lsl #2
	ldmia sp!, {r4, pc}
_023013AC: ; jump table
	ldmia sp!, {r4, pc} ; case 0
	ldmia sp!, {r4, pc} ; case 1
	ldmia sp!, {r4, pc} ; case 2
	ldmia sp!, {r4, pc} ; case 3
	ldmia sp!, {r4, pc} ; case 4
	ldmia sp!, {r4, pc} ; case 5
	b _023013FC ; case 6
	b _02301410 ; case 7
	b _02301460 ; case 8
	b _02301474 ; case 9
	ldmia sp!, {r4, pc} ; case 10
	b _023014D0 ; case 11
	b _0230147C ; case 12
	ldmia sp!, {r4, pc} ; case 13
	b _023014E0 ; case 14
	ldmia sp!, {r4, pc} ; case 15
	ldmia sp!, {r4, pc} ; case 16
	ldmia sp!, {r4, pc} ; case 17
	ldmia sp!, {r4, pc} ; case 18
	b _023014F4 ; case 19
_023013FC:
	bl FUN_0230E660
	ldr r0, _02301534 ; =0x0231CF80
	mov r1, #6
	strb r1, [r0]
	ldmia sp!, {r4, pc}
_02301410:
	bl FUN_0230B654
	cmp r4, #0
	ldmeqia sp!, {r4, pc}
	ldr r1, _02301538 ; =0x02340018
	mov r0, r4
	mov r2, #0xe4
	bl FUN_02305618
	mov r3, #0
	ldr r0, _0230153C ; =0x0233FFE0
	add ip, r4, #0xc
	str r3, [r0, #0x10]
	mov r2, r3
_02301440:
	ldr r1, [ip, #8]
	add r3, r3, #1
	add r2, r2, r1
	str r2, [r0, #0x10]
	cmp r3, #3
	add ip, ip, #0x10
	blt _02301440
	ldmia sp!, {r4, pc}
_02301460:
	bl FUN_02304C20
	ldr r2, _0230153C ; =0x0233FFE0
	str r0, [r2, #0x18]
	str r1, [r2, #0x1c]
	ldmia sp!, {r4, pc}
_02301474:
	bl FUN_02304C20
	ldmia sp!, {r4, pc}
_0230147C:
	ldr r0, _02301534 ; =0x0231CF80
	ldrb r0, [r0]
	cmp r0, #0xb
	addls pc, pc, r0, lsl #2
	b _023014C0
_02301490: ; jump table
	b _023014C0 ; case 0
	b _023014C0 ; case 1
	b _023014C0 ; case 2
	b _023014C0 ; case 3
	ldmia sp!, {r4, pc} ; case 4
	b _023014C0 ; case 5
	ldmia sp!, {r4, pc} ; case 6
	b _023014C0 ; case 7
	b _023014C0 ; case 8
	b _023014C0 ; case 9
	ldmia sp!, {r4, pc} ; case 10
	ldmia sp!, {r4, pc} ; case 11
_023014C0:
	ldr r0, _02301534 ; =0x0231CF80
	mov r1, #8
	strb r1, [r0]
	ldmia sp!, {r4, pc}
_023014D0:
	ldr r0, _0230153C ; =0x0233FFE0
	mov r1, #1
	str r1, [r0, #8]
	ldmia sp!, {r4, pc}
_023014E0:
	bl FUN_0230E660
	ldr r0, _02301534 ; =0x0231CF80
	mov r1, #6
	strb r1, [r0]
	ldmia sp!, {r4, pc}
_023014F4:
	ldrh r0, [r4]
	cmp r0, #9
	addls pc, pc, r0, lsl #2
	ldmia sp!, {r4, pc}
_02301504: ; jump table
	ldmia sp!, {r4, pc} ; case 0
	ldmia sp!, {r4, pc} ; case 1
	ldmia sp!, {r4, pc} ; case 2
	ldmia sp!, {r4, pc} ; case 3
	ldmia sp!, {r4, pc} ; case 4
	ldmia sp!, {r4, pc} ; case 5
	ldmia sp!, {r4, pc} ; case 6
	ldmia sp!, {r4, pc} ; case 7
	ldmia sp!, {r4, pc} ; case 8
	b _0230152C ; case 9
_0230152C:
	bl FUN_0230E660
	ldmia sp!, {r4, pc}
	.align 2, 0
_02301534: .word 0x0231CF80
_02301538: .word 0x02340018
_0230153C: .word 0x0233FFE0
	arm_func_end FUN_02301398

	arm_func_start FUN_02301540
FUN_02301540: ; 0x02301540
	stmdb sp!, {r3, r4, r5, lr}
	mov r4, r0
	ldrb lr, [r4]
	and r0, r1, #0xf
	ldrh ip, [sp, #0x10]
	bic r1, lr, #0xf
	orr r0, r1, r0
	strb r0, [r4]
	mov r5, r2
	mov r0, r3
	strb ip, [r4, #1]
	add r1, r4, #2
	mov r2, ip, lsl #1
	bl FUN_02305618
	ldrb r1, [r4]
	mov r0, r5, lsl #0x1c
	bic r1, r1, #0xf0
	orr r0, r1, r0, lsr #24
	strb r0, [r4]
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end FUN_02301540

	arm_func_start FUN_02301590
FUN_02301590: ; 0x02301590
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #0xc
	mov r5, r0
	mov r4, r1
	mov r2, #0
	add r0, sp, #8
	add r1, sp, #4
	str r2, [r5]
	bl FUN_02307EDC
	cmp r0, #0
	bne _02301604
	ldr r0, [sp, #8]
	ldr r1, [r5]
	cmp r0, #1
	moveq r0, #1
	movne r0, #0
	and r0, r0, #1
	bic r1, r1, #1
	orr r0, r1, r0
	str r0, [r5]
	ldr r0, [sp, #4]
	ldr r1, [r5]
	cmp r0, #1
	moveq r0, #1
	movne r0, #0
	mov r0, r0, lsl #0x1f
	bic r1, r1, #2
	orr r0, r1, r0, lsr #30
	b _0230162C
_02301604:
	cmp r4, #0
	movne r3, #1
	ldr r0, [r5]
	moveq r3, #0
	and r1, r3, #1
	bic r0, r0, #1
	orr r2, r0, r1
	bic r0, r2, #2
	mov r1, r3, lsl #0x1f
	orr r0, r0, r1, lsr #30
_0230162C:
	str r0, [r5]
	bl FUN_02307D40
	cmp r0, #1
	moveq r0, #1
	ldr r1, [r5]
	movne r0, #0
	mov r0, r0, lsl #0x1f
	bic r1, r1, #4
	orr r1, r1, r0, lsr #29
	add r0, sp, #0
	str r1, [r5]
	bl FUN_02307E9C
	cmp r0, #0
	bne _02301690
	ldr r0, [sp]
	ldr r1, [r5]
	cmp r0, #1
	moveq r0, #1
	movne r0, #0
	mov r0, r0, lsl #0x1f
	bic r1, r1, #8
	orr r0, r1, r0, lsr #28
	add sp, sp, #0xc
	str r0, [r5]
	ldmia sp!, {r4, r5, pc}
_02301690:
	cmp r4, #0
	movne r0, #1
	moveq r0, #0
	ldr r1, [r5]
	mov r0, r0, lsl #0x1f
	bic r1, r1, #8
	orr r0, r1, r0, lsr #28
	str r0, [r5]
	add sp, sp, #0xc
	ldmia sp!, {r4, r5, pc}
	arm_func_end FUN_02301590

	arm_func_start FUN_023016B8
FUN_023016B8: ; 0x023016B8
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4]
	mov r1, r0, lsl #0x1f
	movs r1, r1, lsr #0x1f
	beq _023016EC
	mov r0, r0, lsl #0x1e
	movs r0, r0, lsr #0x1f
	beq _023016EC
	mov r0, #2
	mov r1, #1
	bl FUN_02308058
	b _02301750
_023016EC:
	cmp r1, #0
	bne _02301714
	ldr r0, [r4]
	mov r0, r0, lsl #0x1e
	movs r0, r0, lsr #0x1f
	bne _02301714
	mov r0, #2
	mov r1, #0
	bl FUN_02308058
	b _02301750
_02301714:
	cmp r1, #0
	movne r1, #1
	moveq r1, #0
	mov r0, #0
	bl FUN_02308058
	cmp r0, #0
	mvnne r0, #0
	ldmneia sp!, {r4, pc}
	ldr r0, [r4]
	mov r0, r0, lsl #0x1e
	movs r0, r0, lsr #0x1f
	movne r1, #1
	moveq r1, #0
	mov r0, #1
	bl FUN_02308058
_02301750:
	cmp r0, #0
	mvnne r0, #0
	ldmneia sp!, {r4, pc}
	ldr r0, [r4]
	mov r0, r0, lsl #0x1d
	movs r0, r0, lsr #0x1f
	movne r0, #1
	moveq r0, #0
	bl FUN_02307D5C
	cmp r0, #0
	mvneq r0, #0
	ldmeqia sp!, {r4, pc}
	ldr r0, [r4]
	mov r0, r0, lsl #0x1c
	movs r0, r0, lsr #0x1f
	movne r0, #1
	moveq r0, #0
	bl FUN_02307F54
	cmp r0, #0
	mvnne r0, #0
	moveq r0, #0
	ldmia sp!, {r4, pc}
	arm_func_end FUN_023016B8

	arm_func_start FUN_023017A8
FUN_023017A8: ; 0x023017A8
	stmdb sp!, {r3, lr}
	ldr r0, _023017DC ; =0x023460FC
	ldr r1, [r0]
	ldr r0, [r0, #4]
	cmp r1, r0
	ldmeqia sp!, {r3, pc}
	ldr r0, _023017E0 ; =0x02346100
	bl FUN_023016B8
	cmp r0, #0
	ldreq r0, _023017DC ; =0x023460FC
	ldreq r1, [r0, #4]
	streq r1, [r0]
	ldmia sp!, {r3, pc}
	.align 2, 0
_023017DC: .word 0x023460FC
_023017E0: .word 0x02346100
	arm_func_end FUN_023017A8

	arm_func_start FUN_023017E4
FUN_023017E4: ; 0x023017E4
	ldr r0, _023017F4 ; =0x023460FC
	mov r1, #0
	str r1, [r0, #4]
	bx lr
	.align 2, 0
_023017F4: .word 0x023460FC
	arm_func_end FUN_023017E4

	arm_func_start FUN_023017F8
FUN_023017F8: ; 0x023017F8
	stmdb sp!, {r3, lr}
	ldr r0, _02301820 ; =0x023460FC
	mov r1, #1
	bl FUN_02301590
	ldr r0, _02301824 ; =0x023460FC
	ldr r1, [r0]
	str r1, [r0, #4]
	str r1, [sp]
	str r1, [r0, #0xc]
	ldmia sp!, {r3, pc}
	.align 2, 0
_02301820: .word 0x023460FC
_02301824: .word 0x023460FC
	arm_func_end FUN_023017F8

	arm_func_start FUN_02301828
FUN_02301828: ; 0x02301828
	ldr r0, _02301838 ; =0x023460FC
	ldr r1, [r0, #0xc]
	str r1, [r0, #4]
	bx lr
	.align 2, 0
_02301838: .word 0x023460FC
	arm_func_end FUN_02301828

	arm_func_start FUN_0230183C
FUN_0230183C: ; 0x0230183C
	ldr r2, _02301898 ; =0x027FFFA8
	ldrh r0, [r2]
	and r0, r0, #0x8000
	movs r0, r0, asr #0xf
	beq _02301884
	ldr r0, _0230189C ; =0x023460FC
	ldr r1, [r0, #8]
	cmp r1, #0
	beq _02301878
	ldr r0, [r2, #-0x36c]
	sub r0, r0, r1
	cmp r0, #0xf
	blo _02301890
	mov r0, #1
	bx lr
_02301878:
	ldr r1, [r2, #-0x36c]
	str r1, [r0, #8]
	b _02301890
_02301884:
	ldr r0, _0230189C ; =0x023460FC
	mov r1, #0
	str r1, [r0, #8]
_02301890:
	mov r0, #0
	bx lr
	.align 2, 0
_02301898: .word 0x027FFFA8
_0230189C: .word 0x023460FC
	arm_func_end FUN_0230183C

	arm_func_start FUN_023018A0
FUN_023018A0: ; 0x023018A0
	stmdb sp!, {r3, lr}
	ldr r0, _02301AB0 ; =0x0231CF14
	mov r1, #1
	str r1, [r0]
	bl FUN_023023D8
	bl FUN_02302360
	ldr r3, _02301AB4 ; =0x04001000
	ldr r0, _02301AB8 ; =0x0400006C
	ldr r2, [r3]
	mvn r1, #0xf
	bic r2, r2, #0x10000
	str r2, [r3]
	bl FUN_02302274
	ldr r0, _02301ABC ; =0x0400106C
	mvn r1, #0xf
	bl FUN_02302274
	ldr r0, _02301AC0 ; =0x000001FF
	bl FUN_023026D4
	mov r0, #0
	mov r1, #0x6800000
	mov r2, #0xa4000
	bl FUN_02305538
	bl FUN_023025DC
	mov r0, #0xc0
	mov r1, #0x7000000
	mov r2, #0x400
	bl FUN_02305538
	mov r0, #0
	mov r1, #0x5000000
	mov r2, #0x400
	bl FUN_02305538
	mov r0, #0xc0
	ldr r1, _02301AC4 ; =0x07000400
	mov r2, #0x400
	bl FUN_02305538
	mov r0, #0
	ldr r1, _02301AC8 ; =0x05000400
	mov r2, #0x400
	bl FUN_02305538
	mov r0, #1
	bl FUN_023026F4
	ldr r0, _02301ACC ; =0x04000008
	ldrh r1, [r0]
	and r1, r1, #0x43
	orr r1, r1, #0xc00
	strh r1, [r0]
	ldrh r1, [r0]
	bic r1, r1, #3
	strh r1, [r0]
	ldrh r1, [r0]
	bic r1, r1, #0x40
	strh r1, [r0]
	ldrh r1, [r0, #2]
	and r1, r1, #0x43
	orr r1, r1, #0x208
	orr r1, r1, #0xc00
	strh r1, [r0, #2]
	ldrh r1, [r0, #2]
	bic r1, r1, #3
	orr r1, r1, #1
	strh r1, [r0, #2]
	ldrh r1, [r0, #2]
	bic r1, r1, #0x40
	strh r1, [r0, #2]
	mov r1, #0
	mov r2, r1
	mov r0, #1
	bl FUN_023022A0
	mov r3, #0x4000000
	ldr r1, [r3]
	ldr r0, _02301AD0 ; =0x023142D0
	bic r1, r1, #0x1f00
	orr ip, r1, #0x300
	mov r1, #0x20
	mov r2, #0x120
	str ip, [r3]
	bl FUN_02302B34
	ldr r0, _02301AD4 ; =0x023145F0
	mov r1, #0x140
	mov r2, #0x240
	bl FUN_02302B34
	ldr r0, _02301AD8 ; =0x0231CCF0
	mov r1, #0x380
	mov r2, #0x200
	bl FUN_02302B34
	mov r1, #0x20
	ldr r0, _02301ADC ; =0x023143F0
	mov r2, r1
	bl FUN_02302B9C
	ldr r0, _02301AE0 ; =0x02314830
	mov r1, #0x40
	mov r2, #0x20
	bl FUN_02302B9C
	ldr r0, _02301AE4 ; =0x0231CEF0
	mov r1, #0x60
	mov r2, #0x20
	bl FUN_02302B9C
	mov r1, #0
	mov r3, #0x5000000
	ldr r2, _02301AE8 ; =0x00007FFF
	strh r1, [r3]
	strh r2, [r3, #2]
	ldr r0, _02301AEC ; =0x00002D6A
	ldr r2, _02301AF0 ; =0x000062F5
	strh r0, [r3, #4]
	strh r0, [r3, #6]
	strh r2, [r3, #8]
	mov r0, #3
	mov r2, #4
	bl FUN_02302070
	bl FUN_02302B00
	mov r2, #0
_02301A60:
	mov r1, r2, lsl #1
	strh r2, [r0, r1]
	add r2, r2, #1
	cmp r2, #0x300
	blt _02301A60
	bl FUN_02302ACC
	mov r2, #0
	mov r3, r2
_02301A80:
	mov r1, r2, lsl #1
	add r2, r2, #1
	strh r3, [r0, r1]
	cmp r2, #0x300
	blt _02301A80
	ldr r2, _02301AB4 ; =0x04001000
	mov r0, #0x5000000
	ldr r1, [r2]
	bic r1, r1, #0x1f00
	str r1, [r2]
	strh r3, [r0]
	ldmia sp!, {r3, pc}
	.align 2, 0
_02301AB0: .word 0x0231CF14
_02301AB4: .word 0x04001000
_02301AB8: .word 0x0400006C
_02301ABC: .word 0x0400106C
_02301AC0: .word 0x000001FF
_02301AC4: .word 0x07000400
_02301AC8: .word 0x05000400
_02301ACC: .word 0x04000008
_02301AD0: .word 0x023142D0
_02301AD4: .word 0x023145F0
_02301AD8: .word 0x0231CCF0
_02301ADC: .word 0x023143F0
_02301AE0: .word 0x02314830
_02301AE4: .word 0x0231CEF0
_02301AE8: .word 0x00007FFF
_02301AEC: .word 0x00002D6A
_02301AF0: .word 0x000062F5
	arm_func_end FUN_023018A0

	arm_func_start FUN_02301AF4
FUN_02301AF4: ; 0x02301AF4
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov r7, r0
	bl FUN_02302ACC
	cmp r7, #1
	moveq r2, #0xc
	movne r2, #6
	rsb r1, r2, #0x18
	mov r6, r1, lsl #5
	cmp r6, #0x40
	mov r5, #0x40
	ble _02301B38
	mov r4, #0
_02301B24:
	mov r3, r5, lsl #1
	add r5, r5, #1
	strh r4, [r0, r3]
	cmp r5, r6
	blt _02301B24
_02301B38:
	cmp r7, #2
	bne _02301BC8
	mov r8, #0
	sub lr, r2, #1
	mov r3, #2
	mov r4, #1
	mov ip, r8
	mov r5, r8
_02301B58:
	cmp r8, #0
	moveq r6, r5
	beq _02301B70
	cmp r8, lr
	movlt r6, #1
	movge r6, #2
_02301B70:
	add r6, r6, r6, lsl #1
	add sb, r8, #0xc
	add r6, r6, #1
	mov sb, sb, lsl #5
	add r7, r6, #0x1000
	mov r6, #0
	add sl, r0, sb, lsl #1
_02301B8C:
	cmp r6, #0
	moveq sb, ip
	beq _02301BA4
	cmp r6, #7
	movlt sb, r4
	movge sb, r3
_02301BA4:
	add fp, sb, r7
	add sb, sl, r6, lsl #1
	strh fp, [sb, #0x30]
	add r6, r6, #1
	cmp r6, #8
	blt _02301B8C
	add r8, r8, #1
	cmp r8, #6
	blt _02301B58
_02301BC8:
	mov r6, #0
	cmp r2, #0
	ldmleia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	sub lr, r2, #1
	mov r3, #2
	mov ip, #1
	mov r4, r6
	mov r8, #6
_02301BE8:
	cmp r6, #0
	moveq r7, r4
	beq _02301C00
	cmp r6, lr
	movlt r7, ip
	movge r7, #2
_02301C00:
	mul r5, r7, r8
	add r5, r5, #0xa
	mov sb, r1, lsl #5
	mov r7, #0
	add r5, r5, #0x2000
	add sb, r0, sb, lsl #1
_02301C18:
	cmp r7, #2
	movlt sl, r7
	blt _02301C30
	cmp r7, #0x1d
	movlt sl, r3
	subge sl, r7, #0x1a
_02301C30:
	add fp, sl, r5
	mov sl, r7, lsl #1
	strh fp, [sl, sb]
	add r7, r7, #1
	cmp r7, #0x20
	blt _02301C18
	add r6, r6, #1
	cmp r6, r2
	add r1, r1, #1
	blt _02301BE8
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	arm_func_end FUN_02301AF4

	arm_func_start FUN_02301C5C
FUN_02301C5C: ; 0x02301C5C
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x8c
	mov r5, r2
	str r1, [sp]
	mov r4, r0
	add r1, sp, #0xc
	mov r0, r5
	bl FUN_02302128
	add r1, sp, #0x4c
	add r0, r5, #0x10
	bl FUN_02302128
	add r1, sp, #0x2c
	add r0, r5, #0x20
	bl FUN_02302128
	add r1, sp, #0x6c
	add r0, r5, #0x30
	bl FUN_02302128
	mov r1, r4, lsr #0x1f
	rsb r0, r1, r4, lsl #30
	add r0, r1, r0, ror #30
	mov r7, r0, lsl #2
	mov r0, r4, lsl #1
	and r1, r0, #0x1f0
	mov r0, r4, asr #2
	and r0, r0, #1
	mov r6, #0
	add r2, r4, #4
	orr r3, r1, r0
	mov r0, r2, lsl #1
	and r1, r0, #0x1f0
	mov r0, r2, asr #2
	and r0, r0, #1
	add fp, r4, #8
	orr r2, r1, r0
	mov r0, fp, lsl #1
	and r1, r0, #0x1f0
	mov r0, fp, asr #2
	and r0, r0, #1
	orr r1, r1, r0
	add sl, r4, #0xc
	mov r0, sl, lsl #1
	add r5, r4, #0x10
	and r4, r0, #0x1f0
	mov r0, sl, asr #2
	and r0, r0, #1
	orr r0, r4, r0
	mov r4, r5, lsl #1
	and sl, r4, #0x1f0
	mov r4, r5, asr #2
	and r4, r4, #1
	orr sl, sl, r4
	mov r0, r0, lsl #1
	str r0, [sp, #4]
	mov r0, sl, lsl #1
	mov r8, r6
	rsb sb, r7, #0x10
	mov r5, r3, lsl #1
	mov r4, r2, lsl #1
	mov fp, r1, lsl #1
	str r0, [sp, #8]
_02301D4C:
	ldr r0, [sp]
	add sl, r0, r6
	bl FUN_02302A98
	mov r1, sl, lsl #1
	mov r2, sl, asr #3
	and r1, r1, #0xe
	orr r1, r1, r2, lsl #9
	add r2, r0, r1, lsl #1
	add r0, sp, #0xc
	mov r1, r8, lsl #1
	add r3, sp, #0xc
	add r0, r0, r8, lsl #1
	ldrh sl, [r5, r2]
	ldrh r3, [r3, r1]
	add r6, r6, #1
	add r8, r8, #2
	orr r3, sl, r3, lsl r7
	strh r3, [r5, r2]
	add r3, sp, #0xc
	ldrh r1, [r3, r1]
	ldrh r3, [r0, #2]
	cmp r6, #0x10
	orr r1, r1, r3, lsl #16
	mov r1, r1, lsr sb
	strh r1, [r4, r2]
	ldrh r3, [r0, #0x40]
	ldrh r1, [r0, #2]
	orr r1, r1, r3, lsl #16
	mov r1, r1, lsr sb
	strh r1, [fp, r2]
	ldrh r3, [r0, #0x42]
	ldrh r1, [r0, #0x40]
	orr r1, r1, r3, lsl #16
	mov r3, r1, lsr sb
	ldr r1, [sp, #4]
	strh r3, [r1, r2]
	ldrh r0, [r0, #0x42]
	mov r1, r0, lsr sb
	ldr r0, [sp, #8]
	strh r1, [r0, r2]
	blt _02301D4C
	add sp, sp, #0x8c
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	arm_func_end FUN_02301C5C

	arm_func_start FUN_02301DF8
FUN_02301DF8: ; 0x02301DF8
	stmdb sp!, {r3, lr}
	bl FUN_02302A98
	mov r1, r0
	mov r0, #0
	mov r2, #0x6000
	bl FUN_023054D8
	ldmia sp!, {r3, pc}
	arm_func_end FUN_02301DF8

	arm_func_start FUN_02301E14
FUN_02301E14: ; 0x02301E14
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	mov r7, r3
	ldrh r0, [r7]
	ldr sl, _02301E88 ; =0x0000FFFF
	mov sb, r1
	ldr r4, _02301E8C ; =0x02314BB0
	ldr r5, _02301E90 ; =0x0231CAF0
	mov r8, r2
	mov r6, sb
	cmp r0, sl
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
_02301E40:
	cmp r0, #0xe000
	moveq sb, r6
	addeq r8, r8, #0x10
	addeq r7, r7, #2
	beq _02301E78
	sub r2, r0, #1
	mov r0, sb
	mov r1, r8
	add r2, r4, r2, lsl #6
	bl FUN_02301C5C
	ldrh r0, [r7], #2
	add r0, r5, r0
	ldrb r0, [r0, #-1]
	add sb, sb, r0
_02301E78:
	ldrh r0, [r7]
	cmp r0, sl
	bne _02301E40
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	.align 2, 0
_02301E88: .word 0x0000FFFF
_02301E8C: .word 0x02314BB0
_02301E90: .word 0x0231CAF0
	arm_func_end FUN_02301E14

	arm_func_start FUN_02301E94
FUN_02301E94: ; 0x02301E94
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	ldr r1, _02301F1C ; =0x02314A30
	mov r6, #0
	mov r7, r6
	add r5, r1, r0, lsl #7
	mov r4, r6
_02301EAC:
	bl FUN_02302A98
	add r1, r6, #0x15
	mov r1, r1, lsl #5
	add r2, r1, #0x1d
	add r2, r0, r2, lsl #5
	mov r1, r4
	mov r3, r4
	add r0, r5, r7, lsl #1
_02301ECC:
	mov r8, r3, lsl #1
	ldrh ip, [r8, r0]
	add r8, r2, r3, lsl #1
	add lr, r0, r3, lsl #1
	strh ip, [r8, #2]
	ldrh ip, [lr, #2]
	add r1, r1, #1
	cmp r1, #8
	strh ip, [r8, #0x20]
	ldrh ip, [lr, #0x20]
	add r3, r3, #2
	strh ip, [r8, #0x22]
	ldrh ip, [lr, #0x22]
	strh ip, [r8, #0x40]
	blt _02301ECC
	add r6, r6, #1
	cmp r6, #2
	add r7, r7, #0x20
	blt _02301EAC
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	.align 2, 0
_02301F1C: .word 0x02314A30
	arm_func_end FUN_02301E94

	arm_func_start FUN_02301F20
FUN_02301F20: ; 0x02301F20
	stmdb sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x14
	ldr r1, _02302004 ; =0x023141F0
	mov r6, r0
	ldrh r2, [r1, #2]
	ldrh r3, [r1]
	ldr r5, _02302008 ; =0x00000199
	strh r2, [sp, #0x10]
	strh r3, [sp, #0xe]
	ldrh r2, [r1, #0xa]
	ldrh r0, [r1, #0xc]
	mov r4, #0xc
	mov r8, #0
	strh r2, [sp, #6]
	strh r0, [sp, #8]
	ldrh r2, [r1, #0xe]
	ldrh r0, [r1, #0x10]
	mov r7, #0x20
	strh r2, [sp, #0xa]
	strh r0, [sp, #0xc]
	ldrh r2, [r1, #4]
	ldrh r0, [r1, #6]
	strh r2, [sp]
	strh r0, [sp, #2]
	ldrh r0, [r1, #8]
	strh r0, [sp, #4]
_02301F88:
	bl FUN_02302A98
	add r1, r0, r5, lsl #5
	mov r0, r8
	mov r2, r7
	bl FUN_023054D8
	add r4, r4, #1
	cmp r4, #0x12
	add r5, r5, #0x20
	blt _02301F88
	cmp r6, #0
	add r3, sp, #0xe
	mov r0, #0
	mov r1, #0xc8
	bne _02301FCC
	mov r2, #0x68
	bl FUN_02301E14
	b _02301FD4
_02301FCC:
	mov r2, #0x78
	bl FUN_02301E14
_02301FD4:
	add r3, sp, #6
	mov r0, #0
	mov r1, #0xd0
	mov r2, #0x68
	bl FUN_02301E14
	add r3, sp, #0
	mov r0, #0
	mov r1, #0xd0
	mov r2, #0x78
	bl FUN_02301E14
	add sp, sp, #0x14
	ldmia sp!, {r3, r4, r5, r6, r7, r8, pc}
	.align 2, 0
_02302004: .word 0x023141F0
_02302008: .word 0x00000199
	arm_func_end FUN_02301F20

	arm_func_start FUN_0230200C
FUN_0230200C: ; 0x0230200C
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl FUN_02302ACC
	cmp r4, #0
	bge _02302038
	mov r1, #0
	strh r1, [r0, #0x3c]
	strh r1, [r0, #0x3e]
	strh r1, [r0, #0x7c]
	strh r1, [r0, #0x7e]
	ldmia sp!, {r4, pc}
_02302038:
	mov r3, r4, lsl #2
	add r1, r3, #0x1c
	add ip, r1, #0x3000
	add r1, r3, #0x1d
	add r2, r3, #0x1e
	strh ip, [r0, #0x3c]
	add r1, r1, #0x3000
	strh r1, [r0, #0x3e]
	add r1, r2, #0x3000
	add r3, r3, #0x1f
	strh r1, [r0, #0x7c]
	add r1, r3, #0x3000
	strh r1, [r0, #0x7e]
	ldmia sp!, {r4, pc}
	arm_func_end FUN_0230200C

	arm_func_start FUN_02302070
FUN_02302070: ; 0x02302070
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x10
	ldr r3, _02302120 ; =0x0234610C
	mov r7, #0
	strh r1, [r3, #2]
	strh r0, [r3]
	strh r2, [r3, #4]
	str r2, [sp, #8]
	ldr sb, _02302124 ; =0x02346112
	mov lr, r7
	str r7, [sp]
	str r0, [sp, #4]
	str r1, [sp, #0xc]
	add r2, sp, #0
	mov r3, r7
	mov ip, r7
_023020B0:
	ldr r8, [r2, lr, lsl #2]
	mov r4, #0
_023020B8:
	ldr r0, [r2, r4, lsl #2]
	mov r5, ip
_023020C0:
	ldr r1, [r2, r5, lsl #2]
	mov r6, r3
_023020C8:
	ldr fp, [r2, r6, lsl #2]
	mov sl, r7, lsl #1
	mov fp, fp, lsl #0xc
	orr fp, fp, r1, lsl #8
	orr fp, fp, r0, lsl #4
	orr fp, r8, fp
	strh fp, [sb, sl]
	add r6, r6, #1
	cmp r6, #4
	add r7, r7, #1
	blt _023020C8
	add r5, r5, #1
	cmp r5, #4
	blt _023020C0
	add r4, r4, #1
	cmp r4, #4
	blt _023020B8
	add lr, lr, #1
	cmp lr, #4
	blt _023020B0
	add sp, sp, #0x10
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_02302120: .word 0x0234610C
_02302124: .word 0x02346112
	arm_func_end FUN_02302070

	arm_func_start FUN_02302128
FUN_02302128: ; 0x02302128
	ldrh r3, [r0]
	ldr r2, _02302270 ; =0x02346112
	mov r3, r3, lsr #8
	mov r3, r3, lsl #1
	ldrh r3, [r2, r3]
	strh r3, [r1]
	ldrh r3, [r0]
	mov r3, r3, lsl #0x18
	mov r3, r3, lsr #0x17
	ldrh r3, [r2, r3]
	strh r3, [r1, #2]
	ldrh r3, [r0, #2]
	mov r3, r3, lsr #8
	mov r3, r3, lsl #1
	ldrh r3, [r2, r3]
	strh r3, [r1, #4]
	ldrh r3, [r0, #2]
	mov r3, r3, lsl #0x18
	mov r3, r3, lsr #0x17
	ldrh r3, [r2, r3]
	strh r3, [r1, #6]
	ldrh r3, [r0, #4]
	mov r3, r3, lsr #8
	mov r3, r3, lsl #1
	ldrh r3, [r2, r3]
	strh r3, [r1, #8]
	ldrh r3, [r0, #4]
	mov r3, r3, lsl #0x18
	mov r3, r3, lsr #0x17
	ldrh r3, [r2, r3]
	strh r3, [r1, #0xa]
	ldrh r3, [r0, #6]
	mov r3, r3, lsr #8
	mov r3, r3, lsl #1
	ldrh r3, [r2, r3]
	strh r3, [r1, #0xc]
	ldrh r3, [r0, #6]
	mov r3, r3, lsl #0x18
	mov r3, r3, lsr #0x17
	ldrh r3, [r2, r3]
	strh r3, [r1, #0xe]
	ldrh r3, [r0, #8]
	mov r3, r3, lsr #8
	mov r3, r3, lsl #1
	ldrh r3, [r2, r3]
	strh r3, [r1, #0x10]
	ldrh r3, [r0, #8]
	mov r3, r3, lsl #0x18
	mov r3, r3, lsr #0x17
	ldrh r3, [r2, r3]
	strh r3, [r1, #0x12]
	ldrh r3, [r0, #0xa]
	mov r3, r3, lsr #8
	mov r3, r3, lsl #1
	ldrh r3, [r2, r3]
	strh r3, [r1, #0x14]
	ldrh r3, [r0, #0xa]
	mov r3, r3, lsl #0x18
	mov r3, r3, lsr #0x17
	ldrh r3, [r2, r3]
	strh r3, [r1, #0x16]
	ldrh r3, [r0, #0xc]
	mov r3, r3, lsr #8
	mov r3, r3, lsl #1
	ldrh r3, [r2, r3]
	strh r3, [r1, #0x18]
	ldrh r3, [r0, #0xc]
	mov r3, r3, lsl #0x18
	mov r3, r3, lsr #0x17
	ldrh r3, [r2, r3]
	strh r3, [r1, #0x1a]
	ldrh r3, [r0, #0xe]
	mov r3, r3, lsr #8
	mov r3, r3, lsl #1
	ldrh r3, [r2, r3]
	strh r3, [r1, #0x1c]
	ldrh r0, [r0, #0xe]
	mov r0, r0, lsl #0x18
	mov r0, r0, lsr #0x17
	ldrh r0, [r2, r0]
	strh r0, [r1, #0x1e]
	bx lr
	.align 2, 0
_02302270: .word 0x02346112
	arm_func_end FUN_02302128

	arm_func_start FUN_02302274
FUN_02302274: ; 0x02302274
	cmp r1, #0
	moveq r1, #0
	streqh r1, [r0]
	bxeq lr
	cmp r1, #0
	orrgt r1, r1, #0x4000
	strgth r1, [r0]
	rsble r1, r1, #0
	orrle r1, r1, #0x8000
	strleh r1, [r0]
	bx lr
	arm_func_end FUN_02302274

	arm_func_start FUN_023022A0
FUN_023022A0: ; 0x023022A0
	stmdb sp!, {lr}
	sub sp, sp, #4
	ldr r3, _02302308 ; =0x0231CF10
	mov lr, #0x4000000
	ldrh ip, [r3]
	ldr lr, [lr]
	ldr r3, _0230230C ; =0x02346318
	cmp ip, #0
	strh r0, [r3]
	ldr r3, _02302310 ; =0xFFF0FFF0
	moveq r0, #0
	and r3, lr, r3
	orr r0, r3, r0, lsl #16
	orr r0, r1, r0
	orr r1, r0, r2, lsl #3
	mov ip, #0x4000000
	ldr r0, _0230230C ; =0x02346318
	str r1, [ip]
	ldrh r0, [r0]
	cmp r0, #0
	ldreq r0, _02302308 ; =0x0231CF10
	moveq r1, #0
	streqh r1, [r0]
	add sp, sp, #4
	ldmia sp!, {lr}
	bx lr
	.align 2, 0
_02302308: .word 0x0231CF10
_0230230C: .word 0x02346318
_02302310: .word 0xFFF0FFF0
	arm_func_end FUN_023022A0

	arm_func_start FUN_02302314
FUN_02302314: ; 0x02302314
	ldr r0, _02302358 ; =0x02346318
	ldr r1, _0230235C ; =0x0231CF10
	ldrh r2, [r0]
	mov r0, #1
	strh r0, [r1]
	cmp r2, #0
	moveq r1, #0x4000000
	ldreq r0, [r1]
	orreq r0, r0, #0x10000
	streq r0, [r1]
	bxeq lr
	mov r1, #0x4000000
	ldr r0, [r1]
	bic r0, r0, #0x30000
	orr r0, r0, r2, lsl #16
	str r0, [r1]
	bx lr
	.align 2, 0
_02302358: .word 0x02346318
_0230235C: .word 0x0231CF10
	arm_func_end FUN_02302314

	arm_func_start FUN_02302360
FUN_02302360: ; 0x02302360
	stmdb sp!, {lr}
	sub sp, sp, #4
	mov lr, #0x4000000
	ldr ip, [lr]
	ldr r1, _023023A0 ; =0x0231CF10
	and r2, ip, #0x30000
	mov r3, #0
	ldr r0, _023023A4 ; =0x02346318
	mov r2, r2, lsr #0x10
	strh r3, [r1]
	strh r2, [r0]
	bic r0, ip, #0x30000
	str r0, [lr]
	add sp, sp, #4
	ldmia sp!, {lr}
	bx lr
	.align 2, 0
_023023A0: .word 0x0231CF10
_023023A4: .word 0x02346318
	arm_func_end FUN_02302360

	arm_func_start FUN_023023A8
FUN_023023A8: ; 0x023023A8
	ldr r2, _023023D4 ; =0x04000004
	cmp r0, #0
	ldrh r0, [r2]
	ldrneh r1, [r2]
	and r0, r0, #8
	orrne r1, r1, #8
	strneh r1, [r2]
	ldreqh r1, [r2]
	biceq r1, r1, #8
	streqh r1, [r2]
	bx lr
	.align 2, 0
_023023D4: .word 0x04000004
	arm_func_end FUN_023023A8

	arm_func_start FUN_023023D8
FUN_023023D8: ; 0x023023D8
	stmdb sp!, {r4, r5, r6, lr}
	ldr r3, _02302518 ; =0x04000304
	ldr r0, _0230251C ; =0xFFFFFDF1
	ldrh r2, [r3]
	ldr r1, _02302520 ; =0x0000020E
	orr r2, r2, #0x8000
	strh r2, [r3]
	ldrh r2, [r3]
	and r0, r2, r0
	orr r0, r0, r1
	strh r0, [r3]
	ldrh r0, [r3]
	orr r0, r0, #1
	strh r0, [r3]
	bl FUN_0230255C
	ldr r5, _02302524 ; =0x02346314
	ldrh r0, [r5]
	cmp r0, #0
	bne _0230244C
	mvn r4, #2
_02302428:
	bl FUN_02302FB4
	mov r6, r0
	cmp r6, r4
	bne _0230243C
	bl FUN_02305188
_0230243C:
	strh r6, [r5]
	ldrh r0, [r5]
	cmp r0, #0
	beq _02302428
_0230244C:
	ldr r0, _02302528 ; =0x04000004
	mov r2, #0
	strh r2, [r0]
	mov r1, #0x4000000
	ldr r0, _0230252C ; =0x0231CF14
	str r2, [r1]
	ldr r0, [r0]
	mvn r1, #0
	cmp r0, r1
	beq _023024A4
	ldr r1, _02302530 ; =0x04000008
	mov r3, #0x60
	bl FUN_02305448
	ldr r1, _02302534 ; =0x0400006C
	mov r2, #0
	ldr r0, _0230252C ; =0x0231CF14
	strh r2, [r1]
	ldr r0, [r0]
	ldr r1, _02302538 ; =0x04001000
	mov r3, #0x70
	bl FUN_02305448
	b _023024CC
_023024A4:
	ldr r1, _02302530 ; =0x04000008
	mov r0, r2
	mov r2, #0x60
	bl FUN_0230550C
	ldr r3, _02302534 ; =0x0400006C
	mov r0, #0
	ldr r1, _02302538 ; =0x04001000
	mov r2, #0x70
	strh r0, [r3]
	bl FUN_0230550C
_023024CC:
	ldr r1, _0230253C ; =0x04000020
	mov r2, #0x100
	ldr r0, _02302540 ; =0x04000026
	strh r2, [r1]
	ldr r1, _02302544 ; =0x04000030
	strh r2, [r0]
	ldr r0, _02302548 ; =0x04000036
	strh r2, [r1]
	ldr r1, _0230254C ; =0x04001020
	strh r2, [r0]
	ldr r0, _02302550 ; =0x04001026
	strh r2, [r1]
	ldr r1, _02302554 ; =0x04001030
	strh r2, [r0]
	ldr r0, _02302558 ; =0x04001036
	strh r2, [r1]
	strh r2, [r0]
	ldmia sp!, {r4, r5, r6, lr}
	bx lr
	.align 2, 0
_02302518: .word 0x04000304
_0230251C: .word 0xFFFFFDF1
_02302520: .word 0x0000020E
_02302524: .word 0x02346314
_02302528: .word 0x04000004
_0230252C: .word 0x0231CF14
_02302530: .word 0x04000008
_02302534: .word 0x0400006C
_02302538: .word 0x04001000
_0230253C: .word 0x04000020
_02302540: .word 0x04000026
_02302544: .word 0x04000030
_02302548: .word 0x04000036
_0230254C: .word 0x04001020
_02302550: .word 0x04001026
_02302554: .word 0x04001030
_02302558: .word 0x04001036
	arm_func_end FUN_023023D8

	arm_func_start FUN_0230255C
FUN_0230255C: ; 0x0230255C
	ldr r0, _023025C4 ; =0x0234631C
	mov r3, #0
	ldr r2, _023025C8 ; =0x04000240
	strh r3, [r0]
	strh r3, [r0, #2]
	strh r3, [r0, #4]
	strh r3, [r0, #6]
	strh r3, [r0, #8]
	strh r3, [r0, #0xa]
	strh r3, [r0, #0xc]
	strh r3, [r0, #0xe]
	strh r3, [r0, #0x10]
	strh r3, [r0, #0x12]
	strh r3, [r0, #0x14]
	strh r3, [r0, #0x16]
	strh r3, [r0, #0x18]
	ldr r1, _023025CC ; =0x04000244
	str r3, [r2]
	ldr r0, _023025D0 ; =0x04000245
	strb r3, [r1]
	ldr r1, _023025D4 ; =0x04000246
	strb r3, [r0]
	ldr r0, _023025D8 ; =0x04000248
	strb r3, [r1]
	strh r3, [r0]
	bx lr
	.align 2, 0
_023025C4: .word 0x0234631C
_023025C8: .word 0x04000240
_023025CC: .word 0x04000244
_023025D0: .word 0x04000245
_023025D4: .word 0x04000246
_023025D8: .word 0x04000248
	arm_func_end FUN_0230255C

	arm_func_start FUN_023025DC
FUN_023025DC: ; 0x023025DC
	ldr ip, _023025E8 ; =FUN_023025F0
	ldr r0, _023025EC ; =0x0234631C
	bx ip
	.align 2, 0
_023025E8: .word FUN_023025F0
_023025EC: .word 0x0234631C
	arm_func_end FUN_023025DC

	arm_func_start FUN_023025F0
FUN_023025F0: ; 0x023025F0
	stmdb sp!, {r4, lr}
	ldrh r4, [r0]
	mov r1, #0
	strh r1, [r0]
	ands r0, r4, #1
	ldrne r0, _023026AC ; =0x04000240
	strneb r1, [r0]
	ands r0, r4, #2
	ldrne r0, _023026B0 ; =0x04000241
	movne r1, #0
	strneb r1, [r0]
	ands r0, r4, #4
	ldrne r0, _023026B4 ; =0x04000242
	movne r1, #0
	strneb r1, [r0]
	ands r0, r4, #8
	ldrne r0, _023026B8 ; =0x04000243
	movne r1, #0
	strneb r1, [r0]
	ands r0, r4, #0x10
	ldrne r0, _023026BC ; =0x04000244
	movne r1, #0
	strneb r1, [r0]
	ands r0, r4, #0x20
	ldrne r0, _023026C0 ; =0x04000245
	movne r1, #0
	strneb r1, [r0]
	ands r0, r4, #0x40
	ldrne r0, _023026C4 ; =0x04000246
	movne r1, #0
	strneb r1, [r0]
	ands r0, r4, #0x80
	ldrne r0, _023026C8 ; =0x04000248
	movne r1, #0
	strneb r1, [r0]
	ands r0, r4, #0x100
	ldrne r0, _023026CC ; =0x04000249
	movne r1, #0
	strneb r1, [r0]
	ldr r1, _023026D0 ; =0x02346314
	mov r0, r4, lsl #0x10
	ldrh r1, [r1]
	mov r0, r0, lsr #0x10
	bl FUN_023050C0
	mov r0, r4
	ldmia sp!, {r4, lr}
	bx lr
	.align 2, 0
_023026AC: .word 0x04000240
_023026B0: .word 0x04000241
_023026B4: .word 0x04000242
_023026B8: .word 0x04000243
_023026BC: .word 0x04000244
_023026C0: .word 0x04000245
_023026C4: .word 0x04000246
_023026C8: .word 0x04000248
_023026CC: .word 0x04000249
_023026D0: .word 0x02346314
	arm_func_end FUN_023025F0

	arm_func_start FUN_023026D4
FUN_023026D4: ; 0x023026D4
	ldr r1, _023026EC ; =0x0234631C
	ldr ip, _023026F0 ; =FUN_023029AC
	ldrh r2, [r1]
	orr r2, r2, r0
	strh r2, [r1]
	bx ip
	.align 2, 0
_023026EC: .word 0x0234631C
_023026F0: .word FUN_023029AC
	arm_func_end FUN_023026D4

	arm_func_start FUN_023026F4
FUN_023026F4: ; 0x023026F4
	stmdb sp!, {lr}
	sub sp, sp, #4
	ldr r1, _0230298C ; =0x0234631C
	mvn ip, r0
	ldrh r2, [r1, #2]
	ldrh r3, [r1]
	cmp r0, #0x40
	strh r0, [r1, #2]
	orr r2, r3, r2
	and r2, ip, r2
	strh r2, [r1]
	bgt _023027D0
	cmp r0, #0x40
	bge _02302968
	cmp r0, #0x20
	bgt _023027C4
	cmp r0, #0
	addge pc, pc, r0, lsl #2
	b _02302974
_02302740: ; jump table
	b _02302974 ; case 0
	b _02302870 ; case 1
	b _0230283C ; case 2
	b _02302864 ; case 3
	b _02302814 ; case 4
	b _023028B4 ; case 5
	b _02302830 ; case 6
	b _02302858 ; case 7
	b _023027F8 ; case 8
	b _023028D0 ; case 9
	b _023028EC ; case 10
	b _02302880 ; case 11
	b _02302808 ; case 12
	b _023028A8 ; case 13
	b _02302824 ; case 14
	b _0230284C ; case 15
	b _02302920 ; case 16
	b _02302974 ; case 17
	b _02302974 ; case 18
	b _02302974 ; case 19
	b _02302974 ; case 20
	b _02302974 ; case 21
	b _02302974 ; case 22
	b _02302974 ; case 23
	b _02302974 ; case 24
	b _02302974 ; case 25
	b _02302974 ; case 26
	b _02302974 ; case 27
	b _02302974 ; case 28
	b _02302974 ; case 29
	b _02302974 ; case 30
	b _02302974 ; case 31
	b _02302958 ; case 32
_023027C4:
	cmp r0, #0x30
	beq _02302914
	b _02302974
_023027D0:
	cmp r0, #0x60
	bgt _023027EC
	cmp r0, #0x60
	bge _0230294C
	cmp r0, #0x50
	beq _02302930
	b _02302974
_023027EC:
	cmp r0, #0x70
	beq _02302908
	b _02302974
_023027F8:
	ldr r0, _02302990 ; =0x04000243
	mov r1, #0x81
	strb r1, [r0]
	b _02302974
_02302808:
	ldr r0, _02302990 ; =0x04000243
	mov r1, #0x89
	strb r1, [r0]
_02302814:
	ldr r0, _02302994 ; =0x04000242
	mov r1, #0x81
	strb r1, [r0]
	b _02302974
_02302824:
	ldr r0, _02302990 ; =0x04000243
	mov r1, #0x91
	strb r1, [r0]
_02302830:
	ldr r0, _02302994 ; =0x04000242
	mov r1, #0x89
	strb r1, [r0]
_0230283C:
	ldr r0, _02302998 ; =0x04000241
	mov r1, #0x81
	strb r1, [r0]
	b _02302974
_0230284C:
	ldr r0, _02302990 ; =0x04000243
	mov r1, #0x99
	strb r1, [r0]
_02302858:
	ldr r0, _02302994 ; =0x04000242
	mov r1, #0x91
	strb r1, [r0]
_02302864:
	ldr r0, _02302998 ; =0x04000241
	mov r1, #0x89
	strb r1, [r0]
_02302870:
	ldr r0, _0230299C ; =0x04000240
	mov r1, #0x81
	strb r1, [r0]
	b _02302974
_02302880:
	ldr r0, _0230299C ; =0x04000240
	mov r2, #0x81
	ldr r1, _02302998 ; =0x04000241
	strb r2, [r0]
	mov r2, #0x89
	ldr r0, _02302990 ; =0x04000243
	strb r2, [r1]
	mov r1, #0x91
	strb r1, [r0]
	b _02302974
_023028A8:
	ldr r0, _02302990 ; =0x04000243
	mov r1, #0x91
	strb r1, [r0]
_023028B4:
	ldr r1, _0230299C ; =0x04000240
	mov r2, #0x81
	ldr r0, _02302994 ; =0x04000242
	strb r2, [r1]
	mov r1, #0x89
	strb r1, [r0]
	b _02302974
_023028D0:
	ldr r1, _0230299C ; =0x04000240
	mov r2, #0x81
	ldr r0, _02302990 ; =0x04000243
	strb r2, [r1]
	mov r1, #0x89
	strb r1, [r0]
	b _02302974
_023028EC:
	ldr r1, _02302998 ; =0x04000241
	mov r2, #0x81
	ldr r0, _02302990 ; =0x04000243
	strb r2, [r1]
	mov r1, #0x89
	strb r1, [r0]
	b _02302974
_02302908:
	ldr r0, _023029A0 ; =0x04000246
	mov r1, #0x99
	strb r1, [r0]
_02302914:
	ldr r0, _023029A4 ; =0x04000245
	mov r1, #0x91
	strb r1, [r0]
_02302920:
	ldr r0, _023029A8 ; =0x04000244
	mov r1, #0x81
	strb r1, [r0]
	b _02302974
_02302930:
	ldr r1, _023029A0 ; =0x04000246
	mov r2, #0x91
	ldr r0, _023029A8 ; =0x04000244
	strb r2, [r1]
	mov r1, #0x81
	strb r1, [r0]
	b _02302974
_0230294C:
	ldr r0, _023029A0 ; =0x04000246
	mov r1, #0x89
	strb r1, [r0]
_02302958:
	ldr r0, _023029A4 ; =0x04000245
	mov r1, #0x81
	strb r1, [r0]
	b _02302974
_02302968:
	ldr r0, _023029A0 ; =0x04000246
	mov r1, #0x81
	strb r1, [r0]
_02302974:
	ldr r0, _0230298C ; =0x0234631C
	ldrh r0, [r0]
	bl FUN_023029AC
	add sp, sp, #4
	ldmia sp!, {lr}
	bx lr
	.align 2, 0
_0230298C: .word 0x0234631C
_02302990: .word 0x04000243
_02302994: .word 0x04000242
_02302998: .word 0x04000241
_0230299C: .word 0x04000240
_023029A0: .word 0x04000246
_023029A4: .word 0x04000245
_023029A8: .word 0x04000244
	arm_func_end FUN_023026F4

	arm_func_start FUN_023029AC
FUN_023029AC: ; 0x023029AC
	ands r1, r0, #1
	ldrne r1, _02302A40 ; =0x04000240
	movne r2, #0x80
	strneb r2, [r1]
	ands r1, r0, #2
	ldrne r1, _02302A44 ; =0x04000241
	movne r2, #0x80
	strneb r2, [r1]
	ands r1, r0, #4
	ldrne r1, _02302A48 ; =0x04000242
	movne r2, #0x80
	strneb r2, [r1]
	ands r1, r0, #8
	ldrne r1, _02302A4C ; =0x04000243
	movne r2, #0x80
	strneb r2, [r1]
	ands r1, r0, #0x10
	ldrne r1, _02302A50 ; =0x04000244
	movne r2, #0x80
	strneb r2, [r1]
	ands r1, r0, #0x20
	ldrne r1, _02302A54 ; =0x04000245
	movne r2, #0x80
	strneb r2, [r1]
	ands r1, r0, #0x40
	ldrne r1, _02302A58 ; =0x04000246
	movne r2, #0x80
	strneb r2, [r1]
	ands r1, r0, #0x80
	ldrne r1, _02302A5C ; =0x04000248
	movne r2, #0x80
	strneb r2, [r1]
	ands r0, r0, #0x100
	ldrne r0, _02302A60 ; =0x04000249
	movne r1, #0x80
	strneb r1, [r0]
	bx lr
	.align 2, 0
_02302A40: .word 0x04000240
_02302A44: .word 0x04000241
_02302A48: .word 0x04000242
_02302A4C: .word 0x04000243
_02302A50: .word 0x04000244
_02302A54: .word 0x04000245
_02302A58: .word 0x04000246
_02302A5C: .word 0x04000248
_02302A60: .word 0x04000249
	arm_func_end FUN_023029AC

	arm_func_start FUN_02302A64
FUN_02302A64: ; 0x02302A64
	ldr r1, _02302A94 ; =0x0400000A
	mov r0, #0x4000000
	ldrh r1, [r1]
	ldr r0, [r0]
	and r0, r0, #0x7000000
	mov r0, r0, lsr #0x18
	and r1, r1, #0x3c
	mov r0, r0, lsl #0x10
	mov r1, r1, asr #2
	add r0, r0, #0x6000000
	add r0, r0, r1, lsl #14
	bx lr
	.align 2, 0
_02302A94: .word 0x0400000A
	arm_func_end FUN_02302A64

	arm_func_start FUN_02302A98
FUN_02302A98: ; 0x02302A98
	ldr r1, _02302AC8 ; =0x04000008
	mov r0, #0x4000000
	ldrh r1, [r1]
	ldr r0, [r0]
	and r0, r0, #0x7000000
	mov r0, r0, lsr #0x18
	and r1, r1, #0x3c
	mov r0, r0, lsl #0x10
	mov r1, r1, asr #2
	add r0, r0, #0x6000000
	add r0, r0, r1, lsl #14
	bx lr
	.align 2, 0
_02302AC8: .word 0x04000008
	arm_func_end FUN_02302A98

	arm_func_start FUN_02302ACC
FUN_02302ACC: ; 0x02302ACC
	ldr r1, _02302AFC ; =0x0400000A
	mov r0, #0x4000000
	ldrh r1, [r1]
	ldr r0, [r0]
	and r0, r0, #0x38000000
	mov r0, r0, lsr #0x1b
	and r1, r1, #0x1f00
	mov r0, r0, lsl #0x10
	mov r1, r1, asr #8
	add r0, r0, #0x6000000
	add r0, r0, r1, lsl #11
	bx lr
	.align 2, 0
_02302AFC: .word 0x0400000A
	arm_func_end FUN_02302ACC

	arm_func_start FUN_02302B00
FUN_02302B00: ; 0x02302B00
	ldr r1, _02302B30 ; =0x04000008
	mov r0, #0x4000000
	ldrh r1, [r1]
	ldr r0, [r0]
	and r0, r0, #0x38000000
	mov r0, r0, lsr #0x1b
	and r1, r1, #0x1f00
	mov r0, r0, lsl #0x10
	mov r1, r1, asr #8
	add r0, r0, #0x6000000
	add r0, r0, r1, lsl #11
	bx lr
	.align 2, 0
_02302B30: .word 0x04000008
	arm_func_end FUN_02302B00

	arm_func_start FUN_02302B34
FUN_02302B34: ; 0x02302B34
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	mov r4, r2
	bl FUN_02302A64
	ldr r1, _02302B98 ; =0x0231CF14
	mov ip, r0
	ldr r0, [r1]
	mvn r1, #0
	cmp r0, r1
	beq _02302B80
	cmp r4, #0x30
	bls _02302B80
	mov r1, r6
	mov r3, r4
	add r2, ip, r5
	bl FUN_023053CC
	ldmia sp!, {r4, r5, r6, lr}
	bx lr
_02302B80:
	mov r0, r6
	mov r2, r4
	add r1, ip, r5
	bl FUN_02305520
	ldmia sp!, {r4, r5, r6, lr}
	bx lr
	.align 2, 0
_02302B98: .word 0x0231CF14
	arm_func_end FUN_02302B34

	arm_func_start FUN_02302B9C
FUN_02302B9C: ; 0x02302B9C
	stmdb sp!, {r4, lr}
	ldr r3, _02302BF4 ; =0x0231CF14
	mov r4, r0
	ldr r0, [r3]
	mvn ip, #0
	mov lr, r1
	mov r3, r2
	cmp r0, ip
	beq _02302BDC
	cmp r3, #0x1c
	bls _02302BDC
	mov r1, r4
	add r2, lr, #0x5000000
	bl FUN_02305354
	ldmia sp!, {r4, lr}
	bx lr
_02302BDC:
	mov r0, r4
	mov r2, r3
	add r1, lr, #0x5000000
	bl FUN_023054F0
	ldmia sp!, {r4, lr}
	bx lr
	.align 2, 0
_02302BF4: .word 0x0231CF14
	arm_func_end FUN_02302B9C

	arm_func_start FUN_02302BF8
FUN_02302BF8: ; 0x02302BF8
	stmdb sp!, {r4, r5, r6, lr}
	mov r5, r0
	mov r4, r1
	bl FUN_02304ED0
	cmp r5, #0
	beq _02302C28
	ldr r1, _02302C6C ; =_027E0000
	mvn r2, r4
	add r1, r1, #0x3000
	ldr r3, [r1, #0xff8]
	and r2, r3, r2
	str r2, [r1, #0xff8]
_02302C28:
	bl FUN_02304EE4
	ldr r1, _02302C6C ; =_027E0000
	add r0, r1, #0x3000
	ldr r0, [r0, #0xff8]
	ands r0, r4, r0
	ldmneia sp!, {r4, r5, r6, lr}
	bxne lr
	ldr r0, _02302C70 ; =0x00003FF8
	add r6, r1, r0
	ldr r5, _02302C74 ; =0x027E0060
_02302C50:
	mov r0, r5
	bl FUN_023035DC
	ldr r0, [r6]
	ands r0, r4, r0
	beq _02302C50
	ldmia sp!, {r4, r5, r6, lr}
	bx lr
	.align 2, 0
_02302C6C: .word _027E0000
_02302C70: .word 0x00003FF8
_02302C74: .word 0x027E0060
	arm_func_end FUN_02302BF8

	arm_func_start FUN_02302C78
FUN_02302C78: ; 0x02302C78
	ldr ip, _02302C84 ; =FUN_02302CF8
	mov r0, #7
	bx ip
	.align 2, 0
_02302C84: .word FUN_02302CF8
	arm_func_end FUN_02302C78

	arm_func_start FUN_02302C88
FUN_02302C88: ; 0x02302C88
	ldr ip, _02302C94 ; =FUN_02302CF8
	mov r0, #6
	bx ip
	.align 2, 0
_02302C94: .word FUN_02302CF8
	arm_func_end FUN_02302C88

	arm_func_start FUN_02302C98
FUN_02302C98: ; 0x02302C98
	ldr ip, _02302CA4 ; =FUN_02302CF8
	mov r0, #5
	bx ip
	.align 2, 0
_02302CA4: .word FUN_02302CF8
	arm_func_end FUN_02302C98

	arm_func_start FUN_02302CA8
FUN_02302CA8: ; 0x02302CA8
	ldr ip, _02302CB4 ; =FUN_02302CF8
	mov r0, #4
	bx ip
	.align 2, 0
_02302CB4: .word FUN_02302CF8
	arm_func_end FUN_02302CA8

	arm_func_start FUN_02302CB8
FUN_02302CB8: ; 0x02302CB8
	ldr ip, _02302CC4 ; =FUN_02302CF8
	mov r0, #3
	bx ip
	.align 2, 0
_02302CC4: .word FUN_02302CF8
	arm_func_end FUN_02302CB8

	arm_func_start FUN_02302CC8
FUN_02302CC8: ; 0x02302CC8
	ldr ip, _02302CD4 ; =FUN_02302CF8
	mov r0, #2
	bx ip
	.align 2, 0
_02302CD4: .word FUN_02302CF8
	arm_func_end FUN_02302CC8

	arm_func_start FUN_02302CD8
FUN_02302CD8: ; 0x02302CD8
	ldr ip, _02302CE4 ; =FUN_02302CF8
	mov r0, #1
	bx ip
	.align 2, 0
_02302CE4: .word FUN_02302CF8
	arm_func_end FUN_02302CD8

	arm_func_start FUN_02302CE8
FUN_02302CE8: ; 0x02302CE8
	ldr ip, _02302CF4 ; =FUN_02302CF8
	mov r0, #0
	bx ip
	.align 2, 0
_02302CF4: .word FUN_02302CF8
	arm_func_end FUN_02302CE8

	arm_func_start FUN_02302CF8
FUN_02302CF8: ; 0x02302CF8
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	mov r1, #0xc
	mul r4, r0, r1
	ldr r2, _02302D80 ; =0x02346338
	ldr r3, _02302D84 ; =0x0231CF18
	mov r0, r0, lsl #1
	ldr r1, [r2, r4]
	ldrh r3, [r3, r0]
	mov r5, #1
	mov r0, #0
	str r0, [r2, r4]
	cmp r1, #0
	mov r5, r5, lsl r3
	beq _02302D40
	ldr r0, _02302D88 ; =0x02346340
	ldr r0, [r0, r4]
	blx r1
_02302D40:
	ldr r0, _02302D8C ; =_027E0000
	ldr r1, _02302D90 ; =0x0234633C
	add r0, r0, #0x3000
	ldr r2, [r0, #0xff8]
	orr r2, r2, r5
	str r2, [r0, #0xff8]
	ldr r0, [r1, r4]
	cmp r0, #0
	addne sp, sp, #4
	ldmneia sp!, {r4, r5, lr}
	bxne lr
	mov r0, r5
	bl FUN_02302E00
	add sp, sp, #4
	ldmia sp!, {r4, r5, lr}
	bx lr
	.align 2, 0
_02302D80: .word 0x02346338
_02302D84: .word 0x0231CF18
_02302D88: .word 0x02346340
_02302D8C: .word _027E0000
_02302D90: .word 0x0234633C
	arm_func_end FUN_02302CF8

	arm_func_start FUN_02302D94
FUN_02302D94: ; 0x02302D94
	bx lr
	arm_func_end FUN_02302D94

	arm_func_start FUN_02302D98
FUN_02302D98: ; 0x02302D98
	ldr ip, _02302DBC ; =_027E0000
	ldr r3, _02302DC0 ; =0xFDDB597D
	add r0, ip, #0x3000
	ldr r2, _02302DC4 ; =0x7BF9DD5B
	ldr r1, _02302DC8 ; =0x00000800
	str r3, [r0, #0xf7c]
	add r0, ip, #0x3f80
	str r2, [r0, -r1]
	bx lr
	.align 2, 0
_02302DBC: .word _027E0000
_02302DC0: .word 0xFDDB597D
_02302DC4: .word 0x7BF9DD5B
_02302DC8: .word 0x00000800
	arm_func_end FUN_02302D98

	arm_func_start FUN_02302DCC
FUN_02302DCC: ; 0x02302DCC
	ldr ip, _02302DF8 ; =0x04000208
	mov r1, #0
	ldrh r3, [ip]
	ldr r2, _02302DFC ; =0x04000214
	strh r1, [ip]
	ldr r1, [r2]
	str r0, [r2]
	ldrh r0, [ip]
	mov r0, r1
	strh r3, [ip]
	bx lr
	.align 2, 0
_02302DF8: .word 0x04000208
_02302DFC: .word 0x04000214
	arm_func_end FUN_02302DCC

	arm_func_start FUN_02302E00
FUN_02302E00: ; 0x02302E00
	stmdb sp!, {lr}
	sub sp, sp, #4
	ldr lr, _02302E40 ; =0x04000208
	mov r3, #0
	ldrh ip, [lr]
	ldr r2, _02302E44 ; =0x04000210
	mvn r1, r0
	strh r3, [lr]
	ldr r0, [r2]
	and r1, r0, r1
	str r1, [r2]
	ldrh r1, [lr]
	strh ip, [lr]
	add sp, sp, #4
	ldmia sp!, {lr}
	bx lr
	.align 2, 0
_02302E40: .word 0x04000208
_02302E44: .word 0x04000210
	arm_func_end FUN_02302E00

	arm_func_start FUN_02302E48
FUN_02302E48: ; 0x02302E48
	ldr ip, _02302E78 ; =0x04000208
	mov r1, #0
	ldrh r3, [ip]
	ldr r2, _02302E7C ; =0x04000210
	strh r1, [ip]
	ldr r1, [r2]
	orr r0, r1, r0
	str r0, [r2]
	ldrh r0, [ip]
	mov r0, r1
	strh r3, [ip]
	bx lr
	.align 2, 0
_02302E78: .word 0x04000208
_02302E7C: .word 0x04000210
	arm_func_end FUN_02302E48

	arm_func_start FUN_02302E80
FUN_02302E80: ; 0x02302E80
	ldr ip, _02302EAC ; =0x04000208
	mov r1, #0
	ldrh r3, [ip]
	ldr r2, _02302EB0 ; =0x04000210
	strh r1, [ip]
	ldr r1, [r2]
	str r0, [r2]
	ldrh r0, [ip]
	mov r0, r1
	strh r3, [ip]
	bx lr
	.align 2, 0
_02302EAC: .word 0x04000208
_02302EB0: .word 0x04000210
	arm_func_end FUN_02302E80

	arm_func_start FUN_02302EB4
FUN_02302EB4: ; 0x02302EB4
	stmdb sp!, {r4, lr}
	mov r3, #0xc
	mul r4, r0, r3
	ldr ip, _02302EF4 ; =0x02346368
	add r0, r0, #3
	mov r3, #1
	mov r0, r3, lsl r0
	ldr r3, _02302EF8 ; =0x02346370
	str r1, [ip, r4]
	str r2, [r3, r4]
	bl FUN_02302E48
	ldr r0, _02302EFC ; =0x0234636C
	mov r1, #1
	str r1, [r0, r4]
	ldmia sp!, {r4, lr}
	bx lr
	.align 2, 0
_02302EF4: .word 0x02346368
_02302EF8: .word 0x02346370
_02302EFC: .word 0x0234636C
	arm_func_end FUN_02302EB4

	arm_func_start FUN_02302F00
FUN_02302F00: ; 0x02302F00
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	mov r8, #0
	ldr lr, _02302F88 ; =_027E0000
	ldr r5, _02302F8C ; =0x02346338
	mov r6, r8
	mov ip, r8
	mov r3, #1
	mov r2, #0xc
_02302F20:
	ands r4, r0, #1
	beq _02302F70
	mov r7, r6
	cmp r8, #8
	blt _02302F44
	cmp r8, #0xb
	suble r4, r8, #8
	mlale r7, r4, r2, r5
	ble _02302F60
_02302F44:
	cmp r8, #3
	blt _02302F5C
	cmp r8, #6
	addle r4, r8, #1
	mlale r7, r4, r2, r5
	ble _02302F60
_02302F5C:
	str r1, [lr, r8, lsl #2]
_02302F60:
	cmp r7, #0
	strne r1, [r7]
	strne ip, [r7, #8]
	strne r3, [r7, #4]
_02302F70:
	add r8, r8, #1
	cmp r8, #0x16
	mov r0, r0, lsr #1
	blt _02302F20
	ldmia sp!, {r4, r5, r6, r7, r8, lr}
	bx lr
	.align 2, 0
_02302F88: .word _027E0000
_02302F8C: .word 0x02346338
	arm_func_end FUN_02302F00

	arm_func_start FUN_02302F90
FUN_02302F90: ; 0x02302F90
	ldr r0, _02302FA4 ; =0x027E0060
	mov r1, #0
	str r1, [r0, #4]
	str r1, [r0]
	bx lr
	.align 2, 0
_02302FA4: .word 0x027E0060
	arm_func_end FUN_02302F90

	arm_func_start FUN_02302FA8
FUN_02302FA8: ; 0x02302FA8
	ldr r1, _02302FB0 ; =FUN_023030CC
	bx r1
	.align 2, 0
_02302FB0: .word FUN_023030CC
	arm_func_end FUN_02302FA8

	arm_func_start FUN_02302FB4
FUN_02302FB4: ; 0x02302FB4
	ldr r3, _02303004 ; =0x027FFFB0
	ldr r1, [r3]
	clz r2, r1
	cmp r2, #0x20
	movne r0, #0x40
	bne _02302FE8
	add r3, r3, #4
	ldr r1, [r3]
	clz r2, r1
	cmp r2, #0x20
	ldr r0, _02303008 ; =0xFFFFFFFD
	bxeq lr
	mov r0, #0x60
_02302FE8:
	add r0, r0, r2
	mov r1, #0x80000000
	mov r1, r1, lsr r2
	ldr r2, [r3]
	bic r2, r2, r1
	str r2, [r3]
	bx lr
	.align 2, 0
_02303004: .word 0x027FFFB0
_02303008: .word 0xFFFFFFFD
	arm_func_end FUN_02302FB4

	arm_func_start FUN_0230300C
FUN_0230300C: ; 0x0230300C
	ldrh r0, [r0, #4]
	bx lr
	arm_func_end FUN_0230300C

	arm_func_start FUN_02303014
FUN_02303014: ; 0x02303014
	ldr r1, _02303028 ; =0x04000204
	ldrh r0, [r1]
	orr r0, r0, #0x800
	strh r0, [r1]
	bx lr
	.align 2, 0
_02303028: .word 0x04000204
	arm_func_end FUN_02303014

	arm_func_start FUN_0230302C
FUN_0230302C: ; 0x0230302C
	ldr r1, _02303040 ; =0x04000204
	ldrh r0, [r1]
	bic r0, r0, #0x800
	strh r0, [r1]
	bx lr
	.align 2, 0
_02303040: .word 0x04000204
	arm_func_end FUN_0230302C

	arm_func_start FUN_02303044
FUN_02303044: ; 0x02303044
	ldr ip, _02303054 ; =FUN_0230316C
	ldr r1, _02303058 ; =0x027FFFE0
	ldr r2, _0230305C ; =FUN_02303014
	bx ip
	.align 2, 0
_02303054: .word FUN_0230316C
_02303058: .word 0x027FFFE0
_0230305C: .word FUN_02303014
	arm_func_end FUN_02303044

	arm_func_start FUN_02303060
FUN_02303060: ; 0x02303060
	ldr ip, _02303070 ; =FUN_0230320C
	ldr r1, _02303074 ; =0x027FFFE0
	ldr r2, _02303078 ; =FUN_0230302C
	bx ip
	.align 2, 0
_02303070: .word FUN_0230320C
_02303074: .word 0x027FFFE0
_02303078: .word FUN_0230302C
	arm_func_end FUN_02303060

	arm_func_start FUN_0230307C
FUN_0230307C: ; 0x0230307C
	ldr r1, _02303090 ; =0x04000204
	ldrh r0, [r1]
	orr r0, r0, #0x80
	strh r0, [r1]
	bx lr
	.align 2, 0
_02303090: .word 0x04000204
	arm_func_end FUN_0230307C

	arm_func_start FUN_02303094
FUN_02303094: ; 0x02303094
	ldr r1, _023030A8 ; =0x04000204
	ldrh r0, [r1]
	bic r0, r0, #0x80
	strh r0, [r1]
	bx lr
	.align 2, 0
_023030A8: .word 0x04000204
	arm_func_end FUN_02303094

	arm_func_start FUN_023030AC
FUN_023030AC: ; 0x023030AC
	ldr ip, _023030C0 ; =FUN_023030EC
	ldr r1, _023030C4 ; =0x027FFFE8
	ldr r2, _023030C8 ; =FUN_02303094
	mov r3, #1
	bx ip
	.align 2, 0
_023030C0: .word FUN_023030EC
_023030C4: .word 0x027FFFE8
_023030C8: .word FUN_02303094
	arm_func_end FUN_023030AC

	arm_func_start FUN_023030CC
FUN_023030CC: ; 0x023030CC
	ldr ip, _023030E0 ; =FUN_0230317C
	ldr r1, _023030E4 ; =0x027FFFE8
	ldr r2, _023030E8 ; =FUN_0230307C
	mov r3, #1
	bx ip
	.align 2, 0
_023030E0: .word FUN_0230317C
_023030E4: .word 0x027FFFE8
_023030E8: .word FUN_0230307C
	arm_func_end FUN_023030CC

	arm_func_start FUN_023030EC
FUN_023030EC: ; 0x023030EC
	stmdb sp!, {r4, r5, r6, r7, r8, sb, lr}
	sub sp, sp, #4
	movs r6, r3
	mov sb, r0
	mov r8, r1
	mov r7, r2
	beq _02303114
	bl FUN_02304EFC
	mov r5, r0
	b _0230311C
_02303114:
	bl FUN_02304ED0
	mov r5, r0
_0230311C:
	mov r0, sb
	mov r1, r8
	bl FUN_02305748
	movs r4, r0
	bne _02303140
	cmp r7, #0
	beq _0230313C
	blx r7
_0230313C:
	strh sb, [r8, #4]
_02303140:
	cmp r6, #0
	beq _02303154
	mov r0, r5
	bl FUN_02304F10
	b _0230315C
_02303154:
	mov r0, r5
	bl FUN_02304EE4
_0230315C:
	mov r0, r4
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, r8, sb, lr}
	bx lr
	arm_func_end FUN_023030EC

	arm_func_start FUN_0230316C
FUN_0230316C: ; 0x0230316C
	ldr ip, _02303178 ; =FUN_0230317C
	mov r3, #0
	bx ip
	.align 2, 0
_02303178: .word FUN_0230317C
	arm_func_end FUN_0230316C

	arm_func_start FUN_0230317C
FUN_0230317C: ; 0x0230317C
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #4
	mov r7, r1
	ldrh r1, [r7, #4]
	mov r6, r2
	mov r5, r3
	cmp r0, r1
	addne sp, sp, #4
	mvnne r0, #1
	ldmneia sp!, {r4, r5, r6, r7, lr}
	bxne lr
	cmp r5, #0
	beq _023031BC
	bl FUN_02304EFC
	mov r4, r0
	b _023031C4
_023031BC:
	bl FUN_02304ED0
	mov r4, r0
_023031C4:
	mov r0, #0
	strh r0, [r7, #4]
	cmp r6, #0
	beq _023031D8
	blx r6
_023031D8:
	mov r0, #0
	str r0, [r7]
	cmp r5, #0
	beq _023031F4
	mov r0, r4
	bl FUN_02304F10
	b _023031FC
_023031F4:
	mov r0, r4
	bl FUN_02304EE4
_023031FC:
	mov r0, #0
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, lr}
	bx lr
	arm_func_end FUN_0230317C

	arm_func_start FUN_0230320C
FUN_0230320C: ; 0x0230320C
	ldr ip, _02303218 ; =FUN_0230321C
	mov r3, #0
	bx ip
	.align 2, 0
_02303218: .word FUN_0230321C
	arm_func_end FUN_0230320C

	arm_func_start FUN_0230321C
FUN_0230321C: ; 0x0230321C
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	mov r8, r0
	mov r7, r1
	mov r6, r2
	mov r5, r3
	bl FUN_023030EC
	cmp r0, #0
	ldmleia sp!, {r4, r5, r6, r7, r8, lr}
	bxle lr
	mov r4, #0x400
_02303244:
	mov r0, r4
	blx SVC_WaitByLoop
	mov r0, r8
	mov r1, r7
	mov r2, r6
	mov r3, r5
	bl FUN_023030EC
	cmp r0, #0
	bgt _02303244
	ldmia sp!, {r4, r5, r6, r7, r8, lr}
	bx lr
	arm_func_end FUN_0230321C

	arm_func_start FUN_02303270
FUN_02303270: ; 0x02303270
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	ldr r0, _02303348 ; =0x02346398
	ldr r1, [r0]
	cmp r1, #0
	addne sp, sp, #4
	ldmneia sp!, {r4, r5, lr}
	bxne lr
	mov r2, #1
	ldr r1, _0230334C ; =0x027FFFF0
	str r2, [r0]
	mov r2, #0
	mov r0, #0x7e
	str r2, [r1]
	bl FUN_0230320C
	ldr r5, _0230334C ; =0x027FFFF0
	ldrh r0, [r5, #6]
	cmp r0, #0
	beq _023032D4
	mov r4, #0x400
_023032C0:
	mov r0, r4
	blx SVC_WaitByLoop
	ldrh r0, [r5, #6]
	cmp r0, #0
	bne _023032C0
_023032D4:
	ldr r2, _02303350 ; =0x027FFFB0
	mvn ip, #0
	mov r0, #0x10000
	ldr r3, _02303354 ; =0x027FFFB4
	ldr r1, _02303358 ; =0x027FFFC0
	str ip, [r2]
	rsb ip, r0, #0
	mov r0, #0
	mov r2, #0x28
	str ip, [r3]
	bl FUN_0230550C
	ldr ip, _0230335C ; =0x04000204
	ldr r1, _0230334C ; =0x027FFFF0
	ldrh r3, [ip]
	mov r0, #0x7e
	mov r2, #0
	orr r3, r3, #0x800
	strh r3, [ip]
	ldrh r3, [ip]
	orr r3, r3, #0x80
	strh r3, [ip]
	bl FUN_0230316C
	ldr r1, _0230334C ; =0x027FFFF0
	mov r0, #0x7f
	mov r2, #0
	bl FUN_0230320C
	add sp, sp, #4
	ldmia sp!, {r4, r5, lr}
	bx lr
	.align 2, 0
_02303348: .word 0x02346398
_0230334C: .word 0x027FFFF0
_02303350: .word 0x027FFFB0
_02303354: .word 0x027FFFB4
_02303358: .word 0x027FFFC0
_0230335C: .word 0x04000204
	arm_func_end FUN_02303270

	arm_func_start FUN_02303360
FUN_02303360: ; 0x02303360
	str r1, [r0, #0xb4]
	bx lr
	arm_func_end FUN_02303360

	arm_func_start FUN_02303368
FUN_02303368: ; 0x02303368
	stmdb sp!, {r4, lr}
	bl FUN_02304ED0
	ldr r1, _0230339C ; =0x023463A0
	mov r4, #0
	ldr r3, [r1]
	cmp r3, #0
	subne r2, r3, #1
	movne r4, r3
	strne r2, [r1]
	bl FUN_02304EE4
	mov r0, r4
	ldmia sp!, {r4, lr}
	bx lr
	.align 2, 0
_0230339C: .word 0x023463A0
	arm_func_end FUN_02303368

	arm_func_start FUN_023033A0
FUN_023033A0: ; 0x023033A0
	stmdb sp!, {r4, lr}
	bl FUN_02304ED0
	ldr r2, _023033D4 ; =0x023463A0
	mvn r1, #0
	ldr r3, [r2]
	cmp r3, r1
	addlo r1, r3, #1
	movlo r4, r3
	strlo r1, [r2]
	bl FUN_02304EE4
	mov r0, r4
	ldmia sp!, {r4, lr}
	bx lr
	.align 2, 0
_023033D4: .word 0x023463A0
	arm_func_end FUN_023033A0

	arm_func_start FUN_023033D8
FUN_023033D8: ; 0x023033D8
	stmdb sp!, {lr}
	sub sp, sp, #4
	bl FUN_02304EBC
_023033E4:
	bl FUN_0230517C
	b _023033E4
	arm_func_end FUN_023033D8

	arm_func_start FUN_023033EC
FUN_023033EC: ; 0x023033EC
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	mov r5, r0
	bl FUN_02304ED0
	ldr r1, _0230341C ; =0x023463B4
	ldr r4, [r1, #0xc]
	str r5, [r1, #0xc]
	bl FUN_02304EE4
	mov r0, r4
	add sp, sp, #4
	ldmia sp!, {r4, r5, lr}
	bx lr
	.align 2, 0
_0230341C: .word 0x023463B4
	arm_func_end FUN_023033EC

	arm_func_start FUN_02303420
FUN_02303420: ; 0x02303420
	ldr r0, [r0, #0x70]
	bx lr
	arm_func_end FUN_02303420

	arm_func_start FUN_02303428
FUN_02303428: ; 0x02303428
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	ldr r2, _023034D4 ; =0x023463B4
	mov r6, r0
	mov r5, r1
	ldr r8, [r2, #8]
	mov r7, #0
	bl FUN_02304ED0
	mov r4, r0
	b _02303454
_0230344C:
	mov r7, r8
	ldr r8, [r8, #0x68]
_02303454:
	cmp r8, #0
	beq _02303464
	cmp r8, r6
	bne _0230344C
_02303464:
	cmp r8, #0
	beq _02303478
	ldr r0, _023034D8 ; =0x023463C4
	cmp r8, r0
	bne _0230348C
_02303478:
	mov r0, r4
	bl FUN_02304EE4
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, lr}
	bx lr
_0230348C:
	ldr r0, [r8, #0x70]
	cmp r0, r5
	beq _023034C0
	cmp r7, #0
	ldreq r1, [r6, #0x68]
	ldreq r0, _023034D4 ; =0x023463B4
	streq r1, [r0, #8]
	ldrne r0, [r6, #0x68]
	strne r0, [r7, #0x68]
	mov r0, r6
	str r5, [r6, #0x70]
	bl FUN_02303B08
	bl FUN_023039D4
_023034C0:
	mov r0, r4
	bl FUN_02304EE4
	mov r0, #1
	ldmia sp!, {r4, r5, r6, r7, r8, lr}
	bx lr
	.align 2, 0
_023034D4: .word 0x023463B4
_023034D8: .word 0x023463C4
	arm_func_end FUN_02303428

	arm_func_start FUN_023034DC
FUN_023034DC: ; 0x023034DC
	stmdb sp!, {r4, lr}
	bl FUN_02304ED0
	mov r4, r0
	bl FUN_023039D4
	mov r0, r4
	bl FUN_02304EE4
	ldmia sp!, {r4, lr}
	bx lr
	arm_func_end FUN_023034DC

	arm_func_start FUN_023034FC
FUN_023034FC: ; 0x023034FC
	ldr r0, _02303524 ; =0x023463B4
	ldr r0, [r0, #8]
	b _0230350C
_02303508:
	ldr r0, [r0, #0x68]
_0230350C:
	cmp r0, #0
	bxeq lr
	ldr r1, [r0, #0x64]
	cmp r1, #1
	bne _02303508
	bx lr
	.align 2, 0
_02303524: .word 0x023463B4
	arm_func_end FUN_023034FC

	arm_func_start FUN_02303528
FUN_02303528: ; 0x02303528
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	mov r5, r0
	bl FUN_02304ED0
	mov r1, #1
	mov r4, r0
	str r1, [r5, #0x64]
	bl FUN_023039D4
	mov r0, r4
	bl FUN_02304EE4
	add sp, sp, #4
	ldmia sp!, {r4, r5, lr}
	bx lr
	arm_func_end FUN_02303528

	arm_func_start FUN_0230355C
FUN_0230355C: ; 0x0230355C
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #4
	mov r5, r0
	bl FUN_02304ED0
	ldr r1, [r5]
	mov r4, r0
	cmp r1, #0
	beq _023035C8
	cmp r1, #0
	beq _023035B4
	mov r7, #1
	mov r6, #0
_0230358C:
	mov r0, r5
	bl FUN_02303BF4
	str r7, [r0, #0x64]
	str r6, [r0, #0x78]
	str r6, [r0, #0x80]
	ldr r1, [r0, #0x80]
	str r1, [r0, #0x7c]
	ldr r0, [r5]
	cmp r0, #0
	bne _0230358C
_023035B4:
	mov r0, #0
	str r0, [r5, #4]
	ldr r0, [r5, #4]
	str r0, [r5]
	bl FUN_023039D4
_023035C8:
	mov r0, r4
	bl FUN_02304EE4
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, lr}
	bx lr
	arm_func_end FUN_0230355C

	arm_func_start FUN_023035DC
FUN_023035DC: ; 0x023035DC
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r0
	bl FUN_02304ED0
	ldr r1, _0230362C ; =0x023463AC
	mov r5, r0
	ldr r0, [r1]
	cmp r6, #0
	ldr r4, [r0]
	beq _02303610
	mov r0, r6
	mov r1, r4
	str r6, [r4, #0x78]
	bl FUN_02303C28
_02303610:
	mov r0, #0
	str r0, [r4, #0x64]
	bl FUN_023039D4
	mov r0, r5
	bl FUN_02304EE4
	ldmia sp!, {r4, r5, r6, lr}
	bx lr
	.align 2, 0
_0230362C: .word 0x023463AC
	arm_func_end FUN_023035DC

	arm_func_start FUN_02303630
FUN_02303630: ; 0x02303630
	stmdb sp!, {r4, lr}
	ldr r0, _0230368C ; =0x023463AC
	ldr r0, [r0]
	ldr r4, [r0]
	bl FUN_023033A0
	mov r0, r4
	bl FUN_02304004
	ldr r0, [r4, #0x78]
	cmp r0, #0
	beq _02303660
	mov r1, r4
	bl FUN_02303BA0
_02303660:
	mov r0, r4
	bl FUN_02303AC0
	mov r1, #2
	add r0, r4, #0x9c
	str r1, [r4, #0x64]
	bl FUN_0230355C
	bl FUN_02303368
	bl FUN_023034DC
	bl FUN_02305188
	ldmia sp!, {r4, lr}
	bx lr
	.align 2, 0
_0230368C: .word 0x023463AC
	arm_func_end FUN_02303630

	arm_func_start FUN_02303690
FUN_02303690: ; 0x02303690
	stmdb sp!, {lr}
	sub sp, sp, #4
	ldr r1, _023036D0 ; =0x023463AC
	ldr r1, [r1]
	ldr r3, [r1]
	ldr r2, [r3, #0xb4]
	cmp r2, #0
	beq _023036C0
	mov r1, #0
	str r1, [r3, #0xb4]
	blx r2
	bl FUN_02304ED0
_023036C0:
	bl FUN_02303630
	add sp, sp, #4
	ldmia sp!, {lr}
	bx lr
	.align 2, 0
_023036D0: .word 0x023463AC
	arm_func_end FUN_02303690

	arm_func_start FUN_023036D4
FUN_023036D4: ; 0x023036D4
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	ldr r2, _0230373C ; =0x0234639C
	mov r5, r0
	ldr r2, [r2]
	mov r4, r1
	cmp r2, #0
	beq _02303728
	ldr r1, _02303740 ; =FUN_02303690
	bl FUN_02303CB8
	str r4, [r5, #4]
	ldr r1, [r5]
	mov r0, r5
	orr r1, r1, #0x80
	str r1, [r5]
	mov r1, #1
	str r1, [r5, #0x64]
	bl FUN_02303D70
	add sp, sp, #4
	ldmia sp!, {r4, r5, lr}
	bx lr
_02303728:
	mov r0, r4
	bl FUN_02303690
	add sp, sp, #4
	ldmia sp!, {r4, r5, lr}
	bx lr
	.align 2, 0
_0230373C: .word 0x0234639C
_02303740: .word FUN_02303690
	arm_func_end FUN_023036D4

	arm_func_start FUN_02303744
FUN_02303744: ; 0x02303744
	stmdb sp!, {lr}
	sub sp, sp, #4
	bl FUN_02304ED0
	ldr r0, _0230376C ; =0x023463B4
	mov r1, #0
	ldr r0, [r0, #4]
	bl FUN_023036D4
	add sp, sp, #4
	ldmia sp!, {lr}
	bx lr
	.align 2, 0
_0230376C: .word 0x023463B4
	arm_func_end FUN_02303744

	arm_func_start FUN_02303770
FUN_02303770: ; 0x02303770
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	mov r8, r0
	mov r5, r1
	mov r7, r2
	mov r6, r3
	bl FUN_02304ED0
	mov r4, r0
	bl FUN_02303CA0
	ldr r2, [sp, #0x1c]
	mov r1, #0
	str r2, [r8, #0x70]
	str r0, [r8, #0x6c]
	str r1, [r8, #0x64]
	str r1, [r8, #0x74]
	mov r0, r8
	bl FUN_02303B08
	mov r1, r5
	str r6, [r8, #0x94]
	ldr r0, [sp, #0x18]
	mov ip, #0
	sub r5, r6, r0
	sub r2, r6, #4
	str r5, [r8, #0x90]
	str ip, [r8, #0x98]
	ldr r3, _0230386C ; =0xFDDB597D
	ldr r0, [r8, #0x94]
	ldr r6, _02303870 ; =0x7BF9DD5B
	str r3, [r0, #-4]
	ldr r3, [r8, #0x90]
	mov r0, r8
	str r6, [r3]
	str ip, [r8, #0xa0]
	ldr r3, [r8, #0xa0]
	str r3, [r8, #0x9c]
	bl FUN_02303CB8
	str r7, [r8, #4]
	add r1, r5, #4
	ldr r2, _02303874 ; =FUN_02303744
	mov r0, #0
	str r2, [r8, #0x3c]
	ldr r2, [sp, #0x18]
	sub r2, r2, #8
	bl FUN_0230550C
	mov r1, #0
	str r1, [r8, #0x84]
	str r1, [r8, #0x88]
	str r1, [r8, #0x8c]
	mov r0, r8
	bl FUN_02303360
	mov r0, #0
	str r0, [r8, #0x78]
	str r0, [r8, #0x80]
	ldr r2, [r8, #0x80]
	add r1, r8, #0xa4
	str r2, [r8, #0x7c]
	mov r2, #0xc
	bl FUN_0230550C
	mov r0, r4
	mov r1, #0
	str r1, [r8, #0xb0]
	bl FUN_02304EE4
	ldmia sp!, {r4, r5, r6, r7, r8, lr}
	bx lr
	.align 2, 0
_0230386C: .word 0xFDDB597D
_02303870: .word 0x7BF9DD5B
_02303874: .word FUN_02303744
	arm_func_end FUN_02303770

	arm_func_start FUN_02303878
FUN_02303878: ; 0x02303878
	stmdb sp!, {r4, r5, r6, lr}
	sub sp, sp, #8
	ldr r3, _02303998 ; =0x023463B0
	ldr r0, [r3]
	cmp r0, #0
	addne sp, sp, #8
	ldmneia sp!, {r4, r5, r6, lr}
	bxne lr
	ldr ip, _0230399C ; =0x00000400
	ldr r1, _023039A0 ; =0x02346484
	mov lr, #0
	ldr r0, _023039A4 ; =0x023463B4
	mov r6, #1
	mov r4, #0x10
	str r1, [r0, #8]
	str r1, [r0, #4]
	cmp ip, #0
	ldrle r0, _023039A8 ; =0x027E0080
	str r4, [r1, #0x70]
	suble r4, r0, ip
	str lr, [r1, #0x6c]
	str r6, [r1, #0x64]
	str lr, [r1, #0x68]
	str lr, [r1, #0x74]
	ldrgt r1, _023039AC ; =_027E0000
	ldrgt r0, _023039B0 ; =0x00000800
	addgt r1, r1, #0x3f80
	subgt r0, r1, r0
	subgt r4, r0, ip
	ldr r1, _023039AC ; =_027E0000
	ldr r5, _023039B4 ; =0x023463B8
	ldr r2, _023039B8 ; =0x023463AC
	ldr r0, _023039B0 ; =0x00000800
	str r5, [r2]
	ldr r2, _023039A0 ; =0x02346484
	add r1, r1, #0x3f80
	str r6, [r3]
	sub r3, r1, r0
	mov r0, #0
	ldr r1, _023039BC ; =0xFDDB597D
	str r3, [r2, #0x94]
	str r4, [r2, #0x90]
	str r0, [r2, #0x98]
	str r1, [r3, #-4]
	ldr r3, [r2, #0x90]
	ldr ip, _023039C0 ; =0x7BF9DD5B
	ldr r1, _023039A4 ; =0x023463B4
	str ip, [r3]
	ldr r3, _023039C4 ; =0x027FFFA0
	str r0, [r2, #0xa0]
	str r0, [r2, #0x9c]
	strh r0, [r1]
	strh r0, [r1, #2]
	str r1, [r3]
	bl FUN_023033EC
	mov r2, #0xc8
	str r2, [sp]
	mov ip, #0x1f
	ldr r0, _023039C8 ; =0x023463C4
	ldr r1, _023039CC ; =FUN_023033D8
	ldr r3, _023039D0 ; =0x0234660C
	mov r2, #0
	str ip, [sp, #4]
	bl FUN_02303770
	ldr r0, _023039C8 ; =0x023463C4
	mov r2, #0x20
	mov r1, #1
	str r2, [r0, #0x70]
	str r1, [r0, #0x64]
	add sp, sp, #8
	ldmia sp!, {r4, r5, r6, lr}
	bx lr
	.align 2, 0
_02303998: .word 0x023463B0
_0230399C: .word 0x00000400
_023039A0: .word 0x02346484
_023039A4: .word 0x023463B4
_023039A8: .word 0x027E0080
_023039AC: .word _027E0000
_023039B0: .word 0x00000800
_023039B4: .word 0x023463B8
_023039B8: .word 0x023463AC
_023039BC: .word 0xFDDB597D
_023039C0: .word 0x7BF9DD5B
_023039C4: .word 0x027FFFA0
_023039C8: .word 0x023463C4
_023039CC: .word FUN_023033D8
_023039D0: .word 0x0234660C
	arm_func_end FUN_02303878

	arm_func_start FUN_023039D4
FUN_023039D4: ; 0x023039D4
	stmdb sp!, {r4, r5, r6, lr}
	ldr r0, _02303AB0 ; =0x023463A0
	ldr r0, [r0]
	cmp r0, #0
	ldmneia sp!, {r4, r5, r6, lr}
	bxne lr
	ldr r4, _02303AB4 ; =0x023463B4
	ldrh r0, [r4, #2]
	cmp r0, #0
	bne _02303A08
	bl FUN_02304F34
	cmp r0, #0x12
	bne _02303A18
_02303A08:
	mov r0, #1
	strh r0, [r4]
	ldmia sp!, {r4, r5, r6, lr}
	bx lr
_02303A18:
	ldr r0, _02303AB8 ; =0x023463AC
	ldr r0, [r0]
	ldr r6, [r0]
	bl FUN_023034FC
	mov r5, r0
	cmp r6, r5
	ldmeqia sp!, {r4, r5, r6, lr}
	bxeq lr
	cmp r5, #0
	ldmeqia sp!, {r4, r5, r6, lr}
	bxeq lr
	ldr r0, [r6, #0x64]
	cmp r0, #2
	beq _02303A64
	mov r0, r6
	bl FUN_02303D24
	cmp r0, #0
	ldmneia sp!, {r4, r5, r6, lr}
	bxne lr
_02303A64:
	ldr r0, _02303ABC ; =0x023463A8
	ldr r2, [r0]
	cmp r2, #0
	beq _02303A80
	mov r0, r6
	mov r1, r5
	blx r2
_02303A80:
	ldr r2, [r4, #0xc]
	cmp r2, #0
	beq _02303A98
	mov r0, r6
	mov r1, r5
	blx r2
_02303A98:
	ldr r1, _02303AB4 ; =0x023463B4
	mov r0, r5
	str r5, [r1, #4]
	bl FUN_02303D70
	ldmia sp!, {r4, r5, r6, lr}
	bx lr
	.align 2, 0
_02303AB0: .word 0x023463A0
_02303AB4: .word 0x023463B4
_02303AB8: .word 0x023463AC
_02303ABC: .word 0x023463A8
	arm_func_end FUN_023039D4

	arm_func_start FUN_02303AC0
FUN_02303AC0: ; 0x02303AC0
	ldr r1, _02303B04 ; =0x023463B4
	mov r2, #0
	ldr r1, [r1, #8]
	b _02303AD8
_02303AD0:
	mov r2, r1
	ldr r1, [r1, #0x68]
_02303AD8:
	cmp r1, #0
	beq _02303AE8
	cmp r1, r0
	bne _02303AD0
_02303AE8:
	cmp r2, #0
	ldreq r1, [r0, #0x68]
	ldreq r0, _02303B04 ; =0x023463B4
	streq r1, [r0, #8]
	ldrne r0, [r0, #0x68]
	strne r0, [r2, #0x68]
	bx lr
	.align 2, 0
_02303B04: .word 0x023463B4
	arm_func_end FUN_02303AC0

	arm_func_start FUN_02303B08
FUN_02303B08: ; 0x02303B08
	stmdb sp!, {lr}
	sub sp, sp, #4
	ldr r1, _02303B6C ; =0x023463B4
	mov ip, #0
	ldr r3, [r1, #8]
	mov lr, r3
	b _02303B2C
_02303B24:
	mov ip, lr
	ldr lr, [lr, #0x68]
_02303B2C:
	cmp lr, #0
	beq _02303B44
	ldr r2, [lr, #0x70]
	ldr r1, [r0, #0x70]
	cmp r2, r1
	blo _02303B24
_02303B44:
	cmp ip, #0
	ldreq r1, _02303B6C ; =0x023463B4
	streq r3, [r0, #0x68]
	streq r0, [r1, #8]
	ldrne r1, [ip, #0x68]
	strne r1, [r0, #0x68]
	strne r0, [ip, #0x68]
	add sp, sp, #4
	ldmia sp!, {lr}
	bx lr
	.align 2, 0
_02303B6C: .word 0x023463B4
	arm_func_end FUN_02303B08

	arm_func_start FUN_02303B70
FUN_02303B70: ; 0x02303B70
	ldr r2, [r0]
	cmp r2, #0
	beq _02303B98
	ldr r1, [r2, #0x10]
	str r1, [r0]
	cmp r1, #0
	movne r0, #0
	strne r0, [r1, #0x14]
	moveq r1, #0
	streq r1, [r0, #4]
_02303B98:
	mov r0, r2
	bx lr
	arm_func_end FUN_02303B70

	arm_func_start FUN_02303BA0
FUN_02303BA0: ; 0x02303BA0
	ldr r2, [r0]
	mov ip, r2
	cmp r2, #0
	beq _02303BEC
_02303BB0:
	cmp ip, r1
	ldr r3, [ip, #0x80]
	bne _02303BE0
	cmp r2, ip
	ldr r2, [ip, #0x7c]
	streq r3, [r0]
	strne r3, [r2, #0x80]
	ldr r1, [r0, #4]
	cmp r1, ip
	streq r2, [r0, #4]
	strne r2, [r3, #0x7c]
	b _02303BEC
_02303BE0:
	mov ip, r3
	cmp r3, #0
	bne _02303BB0
_02303BEC:
	mov r0, ip
	bx lr
	arm_func_end FUN_02303BA0

	arm_func_start FUN_02303BF4
FUN_02303BF4: ; 0x02303BF4
	ldr r2, [r0]
	cmp r2, #0
	beq _02303C20
	ldr r1, [r2, #0x80]
	str r1, [r0]
	cmp r1, #0
	movne r0, #0
	strne r0, [r1, #0x7c]
	moveq r1, #0
	streq r1, [r0, #4]
	streq r1, [r2, #0x78]
_02303C20:
	mov r0, r2
	bx lr
	arm_func_end FUN_02303BF4

	arm_func_start FUN_02303C28
FUN_02303C28: ; 0x02303C28
	ldr ip, [r0]
	b _02303C3C
_02303C30:
	cmp ip, r1
	bxeq lr
	ldr ip, [ip, #0x80]
_02303C3C:
	cmp ip, #0
	beq _02303C54
	ldr r3, [ip, #0x70]
	ldr r2, [r1, #0x70]
	cmp r3, r2
	bls _02303C30
_02303C54:
	cmp ip, #0
	bne _02303C80
	ldr r2, [r0, #4]
	cmp r2, #0
	streq r1, [r0]
	strne r1, [r2, #0x80]
	str r2, [r1, #0x7c]
	mov r2, #0
	str r2, [r1, #0x80]
	str r1, [r0, #4]
	bx lr
_02303C80:
	ldr r2, [ip, #0x7c]
	cmp r2, #0
	streq r1, [r0]
	strne r1, [r2, #0x80]
	str r2, [r1, #0x7c]
	str ip, [r1, #0x80]
	str r1, [ip, #0x7c]
	bx lr
	arm_func_end FUN_02303C28

	arm_func_start FUN_02303CA0
FUN_02303CA0: ; 0x02303CA0
	ldr r1, _02303CB4 ; =0x023463A4
	ldr r0, [r1]
	add r0, r0, #1
	str r0, [r1]
	bx lr
	.align 2, 0
_02303CB4: .word 0x023463A4
	arm_func_end FUN_02303CA0

	arm_func_start FUN_02303CB8
FUN_02303CB8: ; 0x02303CB8
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
	arm_func_end FUN_02303CB8

	arm_func_start FUN_02303D24
FUN_02303D24: ; 0x02303D24
	stmdb sp!, {r0, lr}
	add r0, r0, #0x48
	ldr r1, _02303D6C ; =FUN_02307C34
	blx r1
	ldmia sp!, {r0, lr}
	add r1, r0, #0
	mrs r2, cpsr
	str r2, [r1], #4
	mov r0, #0xd3
	msr cpsr_c, r0
	str sp, [r1, #0x40]
	msr cpsr_c, r2
	mov r0, #1
	stmia r1, {r0, r1, r2, r3, r4, r5, r6, r7, r8, sb, sl, fp, ip, sp, lr}
	add r0, pc, #0x8 ; =_02303D6C
	str r0, [r1, #0x3c]
	mov r0, #0
	bx lr
	.align 2, 0
_02303D6C: .word FUN_02307C34
	arm_func_end FUN_02303D24

	arm_func_start FUN_02303D70
FUN_02303D70: ; 0x02303D70
	stmdb sp!, {r0, lr}
	add r0, r0, #0x48
	ldr r1, _02303DB0 ; =FUN_02307C74
	blx r1
	ldmia sp!, {r0, lr}
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
	.align 2, 0
_02303DB0: .word FUN_02307C74
	arm_func_end FUN_02303D70

	arm_func_start FUN_02303DB4
FUN_02303DB4: ; 0x02303DB4
	ldr r0, _02303DC4 ; =0x82000001
	ldr r1, _02303DC8 ; =0x0231CF28
	str r0, [r1]
	bx lr
	.align 2, 0
_02303DC4: .word 0x82000001
_02303DC8: .word 0x0231CF28
	arm_func_end FUN_02303DB4

	arm_func_start FUN_02303DCC
FUN_02303DCC: ; 0x02303DCC
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #4
	mov r6, r0
	mov r5, r1
	mov r7, r2
	bl FUN_02304ED0
	ldr r1, [r6, #0x14]
	ldr r2, [r6, #0x1c]
	mov r4, r0
	cmp r1, r2
	bgt _02303E34
	and r7, r7, #1
_02303DFC:
	cmp r7, #0
	bne _02303E1C
	mov r0, r4
	bl FUN_02304EE4
	add sp, sp, #4
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, lr}
	bx lr
_02303E1C:
	mov r0, r6
	bl FUN_023035DC
	ldr r1, [r6, #0x14]
	ldr r0, [r6, #0x1c]
	cmp r1, r0
	ble _02303DFC
_02303E34:
	ldr r0, [r6, #0x18]
	add r0, r0, r1
	sub r0, r0, #1
	bl FUN_0231390C
	str r1, [r6, #0x18]
	ldr r2, [r6, #0x10]
	ldr r1, [r6, #0x18]
	add r0, r6, #8
	str r5, [r2, r1, lsl #2]
	ldr r1, [r6, #0x1c]
	add r1, r1, #1
	str r1, [r6, #0x1c]
	bl FUN_0230355C
	mov r0, r4
	bl FUN_02304EE4
	mov r0, #1
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, lr}
	bx lr
	arm_func_end FUN_02303DCC

	arm_func_start FUN_02303E80
FUN_02303E80: ; 0x02303E80
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	mov r6, r0
	mov r5, r1
	mov r7, r2
	bl FUN_02304ED0
	ldr r1, [r6, #0x1c]
	mov r4, r0
	cmp r1, #0
	bne _02303EDC
	and r8, r7, #1
	add r7, r6, #8
_02303EAC:
	cmp r8, #0
	bne _02303EC8
	mov r0, r4
	bl FUN_02304EE4
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, lr}
	bx lr
_02303EC8:
	mov r0, r7
	bl FUN_023035DC
	ldr r0, [r6, #0x1c]
	cmp r0, #0
	beq _02303EAC
_02303EDC:
	cmp r5, #0
	ldrne r1, [r6, #0x10]
	ldrne r0, [r6, #0x18]
	ldrne r0, [r1, r0, lsl #2]
	strne r0, [r5]
	ldr r0, [r6, #0x18]
	ldr r1, [r6, #0x14]
	add r0, r0, #1
	bl FUN_0231390C
	str r1, [r6, #0x18]
	ldr r1, [r6, #0x1c]
	mov r0, r6
	sub r1, r1, #1
	str r1, [r6, #0x1c]
	bl FUN_0230355C
	mov r0, r4
	bl FUN_02304EE4
	mov r0, #1
	ldmia sp!, {r4, r5, r6, r7, r8, lr}
	bx lr
	arm_func_end FUN_02303E80

	arm_func_start FUN_02303F2C
FUN_02303F2C: ; 0x02303F2C
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #4
	mov r6, r0
	mov r5, r1
	mov r7, r2
	bl FUN_02304ED0
	ldr r2, [r6, #0x1c]
	ldr r1, [r6, #0x14]
	mov r4, r0
	cmp r1, r2
	bgt _02303F94
	and r7, r7, #1
_02303F5C:
	cmp r7, #0
	bne _02303F7C
	mov r0, r4
	bl FUN_02304EE4
	add sp, sp, #4
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, lr}
	bx lr
_02303F7C:
	mov r0, r6
	bl FUN_023035DC
	ldr r2, [r6, #0x1c]
	ldr r1, [r6, #0x14]
	cmp r1, r2
	ble _02303F5C
_02303F94:
	ldr r0, [r6, #0x18]
	add r0, r0, r2
	bl FUN_0231390C
	ldr r2, [r6, #0x10]
	add r0, r6, #8
	str r5, [r2, r1, lsl #2]
	ldr r1, [r6, #0x1c]
	add r1, r1, #1
	str r1, [r6, #0x1c]
	bl FUN_0230355C
	mov r0, r4
	bl FUN_02304EE4
	mov r0, #1
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, lr}
	bx lr
	arm_func_end FUN_02303F2C

	arm_func_start FUN_02303FD4
FUN_02303FD4: ; 0x02303FD4
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
	arm_func_end FUN_02303FD4

	arm_func_start FUN_02304004
FUN_02304004: ; 0x02304004
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r0
	ldr r0, [r6, #0x88]
	cmp r0, #0
	ldmeqia sp!, {r4, r5, r6, lr}
	bxeq lr
	add r5, r6, #0x88
	mov r4, #0
_02304024:
	mov r0, r5
	bl FUN_02303B70
	str r4, [r0, #0xc]
	str r4, [r0, #8]
	bl FUN_0230355C
	ldr r0, [r6, #0x88]
	cmp r0, #0
	bne _02304024
	ldmia sp!, {r4, r5, r6, lr}
	bx lr
	arm_func_end FUN_02304004

	arm_func_start FUN_0230404C
FUN_0230404C: ; 0x0230404C
	mov r2, #0
	str r2, [r0, #4]
	ldr r1, [r0, #4]
	str r1, [r0]
	str r2, [r0, #8]
	str r2, [r0, #0xc]
	bx lr
	arm_func_end FUN_0230404C

	arm_func_start FUN_02304068
FUN_02304068: ; 0x02304068
	mov ip, #0
	mov r1, #0
_02304070:
	mov r0, #0
_02304074:
	orr r2, r1, r0
	mcr p15, 0, ip, c7, c10, 4
	mcr p15, 0, r2, c7, c14, 2
	add r0, r0, #0x20
	cmp r0, #0x400
	blt _02304074
	add r1, r1, #0x40000000
	cmp r1, #0
	bne _02304070
	bx lr
	arm_func_end FUN_02304068

	arm_func_start FUN_0230409C
FUN_0230409C: ; 0x0230409C
	add r1, r1, r0
	bic r0, r0, #0x1f
_023040A4:
	mcr p15, 0, r0, c7, c6, 1
	add r0, r0, #0x20
	cmp r0, r1
	blt _023040A4
	bx lr
	arm_func_end FUN_0230409C

	arm_func_start FUN_023040B8
FUN_023040B8: ; 0x023040B8
	add r1, r1, r0
	bic r0, r0, #0x1f
_023040C0:
	mcr p15, 0, r0, c7, c10, 1
	add r0, r0, #0x20
	cmp r0, r1
	blt _023040C0
	bx lr
	arm_func_end FUN_023040B8

	arm_func_start FUN_023040D4
FUN_023040D4: ; 0x023040D4
	mov ip, #0
	add r1, r1, r0
	bic r0, r0, #0x1f
_023040E0:
	mcr p15, 0, ip, c7, c10, 4
	mcr p15, 0, r0, c7, c14, 1
	add r0, r0, #0x20
	cmp r0, r1
	blt _023040E0
	bx lr
	arm_func_end FUN_023040D4

	arm_func_start FUN_023040F8
FUN_023040F8: ; 0x023040F8
	mov r0, #0
	mcr p15, 0, r0, c7, c10, 4
	bx lr
	arm_func_end FUN_023040F8

	arm_func_start FUN_02304104
FUN_02304104: ; 0x02304104
	add r1, r1, r0
	bic r0, r0, #0x1f
_0230410C:
	mcr p15, 0, r0, c7, c5, 1
	add r0, r0, #0x20
	cmp r0, r1
	blt _0230410C
	bx lr
	arm_func_end FUN_02304104

	arm_func_start FUN_02304120
FUN_02304120: ; 0x02304120
	stmdb sp!, {lr}
	sub sp, sp, #4
	bl FUN_0230445C
	bl FUN_02305800
	bl FUN_02303270
	bl FUN_023043DC
	bl FUN_02302F90
	bl FUN_02302D98
	bl FUN_02304B94
	bl FUN_023057DC
	bl FUN_02304E4C
	bl FUN_02305148
	bl FUN_02303878
	bl FUN_02304FB8
	bl FUN_0230F49C
	bl FUN_02309270
	bl FUN_02308498
	add sp, sp, #4
	ldmia sp!, {lr}
	bx lr
	arm_func_end FUN_02304120

	arm_func_start FUN_02304170
FUN_02304170: ; 0x02304170
	mov r0, r0, lsl #2
	add r0, r0, #0x2700000
	add r0, r0, #0xff000
	str r1, [r0, #0xda0]
	bx lr
	arm_func_end FUN_02304170

	arm_func_start FUN_02304184
FUN_02304184: ; 0x02304184
	mov r0, r0, lsl #2
	add r0, r0, #0x2700000
	add r0, r0, #0xff000
	str r1, [r0, #0xdc4]
	bx lr
	arm_func_end FUN_02304184

	arm_func_start FUN_02304198
FUN_02304198: ; 0x02304198
	stmdb sp!, {lr}
	sub sp, sp, #4
	cmp r0, #6
	addls pc, pc, r0, lsl #2
	b _02304258
_023041AC: ; jump table
	b _023041C8 ; case 0
	b _02304258 ; case 1
	b _023041D8 ; case 2
	b _02304218 ; case 3
	b _02304228 ; case 4
	b _02304238 ; case 5
	b _02304248 ; case 6
_023041C8:
	add sp, sp, #4
	ldr r0, _02304268 ; =0x02004BC0
	ldmia sp!, {lr}
	bx lr
_023041D8:
	ldr r0, _0230426C ; =0x02346610
	ldr r0, [r0]
	cmp r0, #0
	beq _023041F8
	bl FUN_02303DB4
	and r0, r0, #3
	cmp r0, #1
	bne _02304208
_023041F8:
	add sp, sp, #4
	mov r0, #0
	ldmia sp!, {lr}
	bx lr
_02304208:
	add sp, sp, #4
	ldr r0, _02304270 ; =0x02400000
	ldmia sp!, {lr}
	bx lr
_02304218:
	add sp, sp, #4
	ldr r0, _02304274 ; =0x01FF82E0
	ldmia sp!, {lr}
	bx lr
_02304228:
	add sp, sp, #4
	ldr r0, _02304278 ; =0x027E0080
	ldmia sp!, {lr}
	bx lr
_02304238:
	add sp, sp, #4
	ldr r0, _0230427C ; =0x027FF000
	ldmia sp!, {lr}
	bx lr
_02304248:
	add sp, sp, #4
	ldr r0, _02304280 ; =0x037F8000
	ldmia sp!, {lr}
	bx lr
_02304258:
	mov r0, #0
	add sp, sp, #4
	ldmia sp!, {lr}
	bx lr
	.align 2, 0
_02304268: .word 0x02004BC0
_0230426C: .word 0x02346610
_02304270: .word 0x02400000
_02304274: .word 0x01FF82E0
_02304278: .word 0x027E0080
_0230427C: .word 0x027FF000
_02304280: .word 0x037F8000
	arm_func_end FUN_02304198

	arm_func_start FUN_02304284
FUN_02304284: ; 0x02304284
	stmdb sp!, {lr}
	sub sp, sp, #4
	cmp r0, #6
	addls pc, pc, r0, lsl #2
	b _02304384
_02304298: ; jump table
	b _023042B4 ; case 0
	b _02304384 ; case 1
	b _023042C4 ; case 2
	b _02304304 ; case 3
	b _02304314 ; case 4
	b _02304364 ; case 5
	b _02304374 ; case 6
_023042B4:
	add sp, sp, #4
	ldr r0, _02304394 ; =0x023E0000
	ldmia sp!, {lr}
	bx lr
_023042C4:
	ldr r0, _02304398 ; =0x02346610
	ldr r0, [r0]
	cmp r0, #0
	beq _023042E4
	bl FUN_02303DB4
	and r0, r0, #3
	cmp r0, #1
	bne _023042F4
_023042E4:
	add sp, sp, #4
	mov r0, #0
	ldmia sp!, {lr}
	bx lr
_023042F4:
	add sp, sp, #4
	mov r0, #0x2700000
	ldmia sp!, {lr}
	bx lr
_02304304:
	add sp, sp, #4
	mov r0, #0x2000000
	ldmia sp!, {lr}
	bx lr
_02304314:
	ldr r0, _0230439C ; =_027E0000
	ldr r1, _023043A0 ; =0x00000400
	ldr r2, _023043A4 ; =0x00000800
	add r3, r0, #0x3f80
	cmp r1, #0
	sub r2, r3, r2
	bne _02304348
	ldr r1, _023043A8 ; =0x027E0080
	add sp, sp, #4
	cmp r0, r1
	movlo r0, r1
	ldmia sp!, {lr}
	bx lr
_02304348:
	cmp r1, #0
	ldrlt r0, _023043A8 ; =0x027E0080
	add sp, sp, #4
	sublt r0, r0, r1
	subge r0, r2, r1
	ldmia sp!, {lr}
	bx lr
_02304364:
	add sp, sp, #4
	ldr r0, _023043AC ; =0x027FF680
	ldmia sp!, {lr}
	bx lr
_02304374:
	add sp, sp, #4
	ldr r0, _023043B0 ; =0x037F8000
	ldmia sp!, {lr}
	bx lr
_02304384:
	mov r0, #0
	add sp, sp, #4
	ldmia sp!, {lr}
	bx lr
	.align 2, 0
_02304394: .word 0x023E0000
_02304398: .word 0x02346610
_0230439C: .word _027E0000
_023043A0: .word 0x00000400
_023043A4: .word 0x00000800
_023043A8: .word 0x027E0080
_023043AC: .word 0x027FF680
_023043B0: .word 0x037F8000
	arm_func_end FUN_02304284

	arm_func_start FUN_023043B4
FUN_023043B4: ; 0x023043B4
	mov r0, r0, lsl #2
	add r0, r0, #0x2700000
	add r0, r0, #0xff000
	ldr r0, [r0, #0xda0]
	bx lr
	arm_func_end FUN_023043B4

	arm_func_start FUN_023043C8
FUN_023043C8: ; 0x023043C8
	mov r0, r0, lsl #2
	add r0, r0, #0x2700000
	add r0, r0, #0xff000
	ldr r0, [r0, #0xdc4]
	bx lr
	arm_func_end FUN_023043C8

	arm_func_start FUN_023043DC
FUN_023043DC: ; 0x023043DC
	stmdb sp!, {lr}
	sub sp, sp, #4
	mov r0, #2
	bl FUN_02304284
	mov r1, r0
	mov r0, #2
	bl FUN_02304184
	mov r0, #2
	bl FUN_02304198
	mov r1, r0
	mov r0, #2
	bl FUN_02304170
	ldr r0, _02304450 ; =0x02346610
	ldr r0, [r0]
	cmp r0, #0
	beq _02304434
	bl FUN_02303DB4
	and r0, r0, #3
	cmp r0, #1
	addne sp, sp, #4
	ldmneia sp!, {lr}
	bxne lr
_02304434:
	ldr r0, _02304454 ; =0x0200002B
	bl FUN_02304A00
	ldr r0, _02304458 ; =0x023E0021
	bl FUN_02304A08
	add sp, sp, #4
	ldmia sp!, {lr}
	bx lr
	.align 2, 0
_02304450: .word 0x02346610
_02304454: .word 0x0200002B
_02304458: .word 0x023E0021
	arm_func_end FUN_023043DC

	arm_func_start FUN_0230445C
FUN_0230445C: ; 0x0230445C
	stmdb sp!, {lr}
	sub sp, sp, #4
	ldr r1, _02304570 ; =0x0234660C
	ldr r0, [r1]
	cmp r0, #0
	addne sp, sp, #4
	ldmneia sp!, {lr}
	bxne lr
	mov r2, #1
	mov r0, #0
	str r2, [r1]
	bl FUN_02304284
	mov r1, r0
	mov r0, #0
	bl FUN_02304184
	mov r0, #0
	bl FUN_02304198
	mov r1, r0
	mov r0, #0
	bl FUN_02304170
	mov r0, #2
	mov r1, #0
	bl FUN_02304170
	mov r0, #2
	mov r1, #0
	bl FUN_02304184
	mov r0, #3
	bl FUN_02304284
	mov r1, r0
	mov r0, #3
	bl FUN_02304184
	mov r0, #3
	bl FUN_02304198
	mov r1, r0
	mov r0, #3
	bl FUN_02304170
	mov r0, #4
	bl FUN_02304284
	mov r1, r0
	mov r0, #4
	bl FUN_02304184
	mov r0, #4
	bl FUN_02304198
	mov r1, r0
	mov r0, #4
	bl FUN_02304170
	mov r0, #5
	bl FUN_02304284
	mov r1, r0
	mov r0, #5
	bl FUN_02304184
	mov r0, #5
	bl FUN_02304198
	mov r1, r0
	mov r0, #5
	bl FUN_02304170
	mov r0, #6
	bl FUN_02304284
	mov r1, r0
	mov r0, #6
	bl FUN_02304184
	mov r0, #6
	bl FUN_02304198
	mov r1, r0
	mov r0, #6
	bl FUN_02304170
	add sp, sp, #4
	ldmia sp!, {lr}
	bx lr
	.align 2, 0
_02304570: .word 0x0234660C
	arm_func_end FUN_0230445C

	arm_func_start FUN_02304574
FUN_02304574: ; 0x02304574
	stmdb sp!, {r4, r5, r6, lr}
	mov r4, r0
	mov r6, r1
	mov r5, r2
	bl FUN_02304ED0
	ldr r2, _02304610 ; =0x02346614
	add r1, r6, #0x1f
	ldr r2, [r2, r4, lsl #2]
	bic r6, r1, #0x1f
	ldr r3, [r2, #4]
	bic r5, r5, #0x1f
	cmp r3, #0
	mov r4, #0
	ble _02304600
	ldr ip, [r2, #0x10]
_023045B0:
	ldr r1, [ip]
	cmp r1, #0
	bge _023045F0
	sub r1, r5, r6
	str r1, [ip]
	mov r2, #0
	str r2, [r6]
	str r2, [r6, #4]
	ldr r1, [ip]
	str r1, [r6, #8]
	str r6, [ip, #4]
	str r2, [ip, #8]
	bl FUN_02304EE4
	mov r0, r4
	ldmia sp!, {r4, r5, r6, lr}
	bx lr
_023045F0:
	add r4, r4, #1
	cmp r4, r3
	add ip, ip, #0xc
	blt _023045B0
_02304600:
	bl FUN_02304EE4
	mvn r0, #0
	ldmia sp!, {r4, r5, r6, lr}
	bx lr
	.align 2, 0
_02304610: .word 0x02346614
	arm_func_end FUN_02304574

	arm_func_start FUN_02304614
FUN_02304614: ; 0x02304614
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #4
	mov r7, r0
	mov r6, r1
	mov r5, r2
	mov r4, r3
	bl FUN_02304ED0
	ldr r2, _023046CC ; =0x02346614
	mov r1, #0xc
	str r6, [r2, r7, lsl #2]
	add r2, r6, #0x14
	str r2, [r6, #0x10]
	str r4, [r6, #4]
	ldr r2, [r6, #4]
	mul r1, r4, r1
	cmp r2, #0
	mov r7, #0
	ble _02304694
	mov lr, r7
	mov r3, r7
	mvn r4, #0
_02304668:
	ldr r2, [r6, #0x10]
	add r7, r7, #1
	str r4, [r2, lr]
	add ip, r2, lr
	str r3, [ip, #8]
	ldr r2, [ip, #8]
	add lr, lr, #0xc
	str r2, [ip, #4]
	ldr r2, [r6, #4]
	cmp r7, r2
	blt _02304668
_02304694:
	mvn r2, #0
	str r2, [r6]
	ldr r3, [r6, #0x10]
	bic r2, r5, #0x1f
	add r1, r3, r1
	add r1, r1, #0x1f
	bic r1, r1, #0x1f
	str r1, [r6, #8]
	str r2, [r6, #0xc]
	bl FUN_02304EE4
	ldr r0, [r6, #8]
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, lr}
	bx lr
	.align 2, 0
_023046CC: .word 0x02346614
	arm_func_end FUN_02304614

	arm_func_start FUN_023046D0
FUN_023046D0: ; 0x023046D0
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	mov r4, r0
	mov r5, r1
	bl FUN_02304ED0
	ldr r1, _02304708 ; =0x02346614
	ldr r1, [r1, r4, lsl #2]
	ldr r4, [r1]
	str r5, [r1]
	bl FUN_02304EE4
	mov r0, r4
	add sp, sp, #4
	ldmia sp!, {r4, r5, lr}
	bx lr
	.align 2, 0
_02304708: .word 0x02346614
	arm_func_end FUN_023046D0

	arm_func_start FUN_0230470C
FUN_0230470C: ; 0x0230470C
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #4
	mov r7, r0
	mov r5, r1
	mov r4, r2
	bl FUN_02304ED0
	ldr r1, _0230477C ; =0x02346614
	mov r6, r0
	ldr r0, [r1, r7, lsl #2]
	cmp r5, #0
	ldrlt r5, [r0]
	ldr r1, [r0, #0x10]
	mov r0, #0xc
	mla r7, r5, r0, r1
	sub r4, r4, #0x20
	ldr r0, [r7, #8]
	mov r1, r4
	bl FUN_02304974
	str r0, [r7, #8]
	ldr r0, [r7, #4]
	mov r1, r4
	bl FUN_023048AC
	str r0, [r7, #4]
	mov r0, r6
	bl FUN_02304EE4
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, lr}
	bx lr
	.align 2, 0
_0230477C: .word 0x02346614
	arm_func_end FUN_0230470C

	arm_func_start FUN_02304780
FUN_02304780: ; 0x02304780
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #4
	mov r6, r0
	mov r5, r1
	mov r7, r2
	bl FUN_02304ED0
	ldr r1, _023048A8 ; =0x02346614
	mov r4, r0
	ldr r1, [r1, r6, lsl #2]
	cmp r1, #0
	bne _023047C0
	bl FUN_02304EE4
	add sp, sp, #4
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, lr}
	bx lr
_023047C0:
	cmp r5, #0
	ldrlt r5, [r1]
	ldr r1, [r1, #0x10]
	mov r0, #0xc
	mla r6, r5, r0, r1
	ldr r0, [r6, #4]
	add r1, r7, #0x20
	add r1, r1, #0x1f
	mov r5, r0
	cmp r0, #0
	bic r7, r1, #0x1f
	beq _02304808
_023047F0:
	ldr r1, [r5, #8]
	cmp r7, r1
	ble _02304808
	ldr r5, [r5, #4]
	cmp r5, #0
	bne _023047F0
_02304808:
	cmp r5, #0
	bne _02304828
	mov r0, r4
	bl FUN_02304EE4
	add sp, sp, #4
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, lr}
	bx lr
_02304828:
	ldr r1, [r5, #8]
	sub r1, r1, r7
	cmp r1, #0x40
	bhs _02304848
	mov r1, r5
	bl FUN_02304974
	str r0, [r6, #4]
	b _02304880
_02304848:
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
_02304880:
	ldr r0, [r6, #8]
	mov r1, r5
	bl FUN_0230499C
	str r0, [r6, #8]
	mov r0, r4
	bl FUN_02304EE4
	add r0, r5, #0x20
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, lr}
	bx lr
	.align 2, 0
_023048A8: .word 0x02346614
	arm_func_end FUN_02304780

	arm_func_start FUN_023048AC
FUN_023048AC: ; 0x023048AC
	stmdb sp!, {lr}
	sub sp, sp, #4
	mov ip, r0
	cmp r0, #0
	mov lr, #0
	beq _023048DC
_023048C4:
	cmp r1, ip
	bls _023048DC
	mov lr, ip
	ldr ip, [ip, #4]
	cmp ip, #0
	bne _023048C4
_023048DC:
	str ip, [r1, #4]
	str lr, [r1]
	cmp ip, #0
	beq _0230491C
	str r1, [ip]
	ldr r3, [r1, #8]
	add r2, r1, r3
	cmp r2, ip
	bne _0230491C
	ldr r2, [ip, #8]
	add r2, r3, r2
	str r2, [r1, #8]
	ldr ip, [ip, #4]
	str ip, [r1, #4]
	cmp ip, #0
	strne r1, [ip]
_0230491C:
	cmp lr, #0
	beq _02304964
	str r1, [lr, #4]
	ldr r2, [lr, #8]
	add r3, lr, r2
	cmp r3, r1
	addne sp, sp, #4
	ldmneia sp!, {lr}
	bxne lr
	ldr r1, [r1, #8]
	add sp, sp, #4
	add r1, r2, r1
	str r1, [lr, #8]
	str ip, [lr, #4]
	cmp ip, #0
	strne lr, [ip]
	ldmia sp!, {lr}
	bx lr
_02304964:
	mov r0, r1
	add sp, sp, #4
	ldmia sp!, {lr}
	bx lr
	arm_func_end FUN_023048AC

	arm_func_start FUN_02304974
FUN_02304974: ; 0x02304974
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
	arm_func_end FUN_02304974

	arm_func_start FUN_0230499C
FUN_0230499C: ; 0x0230499C
	str r0, [r1, #4]
	mov r2, #0
	str r2, [r1]
	cmp r0, #0
	strne r1, [r0]
	mov r0, r1
	bx lr
	arm_func_end FUN_0230499C

	arm_func_start FUN_023049B8
FUN_023049B8: ; 0x023049B8
	mrc p15, 0, r0, c9, c1, 0
	ldr r1, _023049C8 ; =0xFFFFF000
	and r0, r0, r1
	bx lr
	.align 2, 0
_023049C8: .word 0xFFFFF000
	arm_func_end FUN_023049B8

	arm_func_start FUN_023049CC
FUN_023049CC: ; 0x023049CC
	mrc p15, 0, r0, c1, c0, 0
	orr r0, r0, #1
	mcr p15, 0, r0, c1, c0, 0
	bx lr
	arm_func_end FUN_023049CC

	arm_func_start FUN_023049DC
FUN_023049DC: ; 0x023049DC
	mrc p15, 0, r0, c1, c0, 0
	bic r0, r0, #1
	mcr p15, 0, r0, c1, c0, 0
	bx lr
	arm_func_end FUN_023049DC

	arm_func_start FUN_023049EC
FUN_023049EC: ; 0x023049EC
	mrc p15, 0, r2, c5, c0, 2
	bic r2, r2, r0
	orr r2, r2, r1
	mcr p15, 0, r2, c5, c0, 2
	bx lr
	arm_func_end FUN_023049EC

	arm_func_start FUN_02304A00
FUN_02304A00: ; 0x02304A00
	mcr p15, 0, r0, c6, c1, 0
	bx lr
	arm_func_end FUN_02304A00

	arm_func_start FUN_02304A08
FUN_02304A08: ; 0x02304A08
	mcr p15, 0, r0, c6, c2, 0
	bx lr
	arm_func_end FUN_02304A08

	arm_func_start FUN_02304A10
FUN_02304A10: ; 0x02304A10
	ldr ip, _02304A7C ; =0x02346640
	ldr ip, [ip]
	cmp ip, #0
	movne lr, pc
	bxne ip
	ldr ip, _02304A80 ; =0x02000000
	stmdb ip!, {r0, r1, r2, r3, sp, lr}
	and r0, sp, #1
	mov sp, ip
	mrs r1, cpsr
	and r1, r1, #0x1f
	teq r1, #0x17
	bne _02304A4C
	bl FUN_02304A84
	b _02304A58
_02304A4C:
	teq r1, #0x1b
	bne _02304A58
	bl FUN_02304A84
_02304A58:
	ldr ip, _02304A7C ; =0x02346640
	ldr ip, [ip]
	cmp ip, #0
_02304A64:
	beq _02304A64
_02304A68:
	mov r0, r0
	b _02304A68
	arm_func_end FUN_02304A10

	arm_func_start FUN_02304A70
FUN_02304A70: ; 0x02304A70
	ldmia sp!, {r0, r1, r2, r3, ip, lr}
	mov sp, ip
	bx lr
	.align 2, 0
_02304A7C: .word 0x02346640
_02304A80: .word 0x02000000
	arm_func_end FUN_02304A70

	arm_func_start FUN_02304A84
FUN_02304A84: ; 0x02304A84
	stmdb sp!, {r0, lr}
	bl FUN_02304A98
	bl FUN_02304B28
	ldmia sp!, {r0, lr}
	bx lr
	arm_func_end FUN_02304A84

	arm_func_start FUN_02304A98
FUN_02304A98: ; 0x02304A98
	ldr r1, _02304B24 ; =0x02346644
	mrs r2, cpsr
	str r2, [r1, #0x74]
	str r0, [r1, #0x6c]
	ldr r0, [ip]
	str r0, [r1, #4]
	ldr r0, [ip, #4]
	str r0, [r1, #8]
	ldr r0, [ip, #8]
	str r0, [r1, #0xc]
	ldr r0, [ip, #0xc]
	str r0, [r1, #0x10]
	ldr r2, [ip, #0x10]
	bic r2, r2, #1
	add r0, r1, #0x14
	stmia r0, {r4, r5, r6, r7, r8, sb, sl, fp}
	str ip, [r1, #0x70]
	ldr r0, [r2]
	str r0, [r1, #0x64]
	ldr r3, [r2, #4]
	str r3, [r1]
	ldr r0, [r2, #8]
	str r0, [r1, #0x34]
	ldr r0, [r2, #0xc]
	str r0, [r1, #0x40]
	mrs r0, cpsr
	orr r3, r3, #0x80
	bic r3, r3, #0x20
	msr cpsr_fsxc, r3
	str sp, [r1, #0x38]
	str lr, [r1, #0x3c]
	mrs r2, spsr
	str r2, [r1, #0x7c]
	msr cpsr_fsxc, r0
	bx lr
	.align 2, 0
_02304B24: .word 0x02346644
	arm_func_end FUN_02304A98

	arm_func_start FUN_02304B28
FUN_02304B28: ; 0x02304B28
	stmdb sp!, {lr}
	sub sp, sp, #4
	ldr r0, _02304B84 ; =0x02346638
	ldr r0, [r0]
	cmp r0, #0
	addeq sp, sp, #4
	ldmeqia sp!, {lr}
	bxeq lr
	mov r0, sp
	ldr r1, _02304B88 ; =0x0000009F
	msr cpsr_fsxc, r1
	mov sp, r0
	bl FUN_023049CC
	ldr r1, _02304B8C ; =0x0234663C
	ldr r0, _02304B84 ; =0x02346638
	ldr r1, [r1]
	ldr r2, [r0]
	ldr r0, _02304B90 ; =0x02346644
	blx r2
	bl FUN_023049DC
	add sp, sp, #4
	ldmia sp!, {lr}
	bx lr
	.align 2, 0
_02304B84: .word 0x02346638
_02304B88: .word 0x0000009F
_02304B8C: .word 0x0234663C
_02304B90: .word 0x02346644
	arm_func_end FUN_02304B28

	arm_func_start FUN_02304B94
FUN_02304B94: ; 0x02304B94
	ldr r0, _02304BF0 ; =0x027FFD9C
	ldr r1, [r0]
	cmp r1, #0x2600000
	blo _02304BB4
	cmp r1, #0x2800000
	ldrlo r0, _02304BF4 ; =0x02346640
	strlo r1, [r0]
	blo _02304BC0
_02304BB4:
	ldr r0, _02304BF4 ; =0x02346640
	mov r1, #0
	str r1, [r0]
_02304BC0:
	ldr r0, _02304BF4 ; =0x02346640
	ldr r0, [r0]
	cmp r0, #0
	ldreq r2, _02304BF8 ; =FUN_02304A10
	ldreq r1, _02304BF0 ; =0x027FFD9C
	ldreq r0, _02304BFC ; =0x027E3000
	streq r2, [r1]
	streq r2, [r0, #0xfdc]
	ldr r0, _02304C00 ; =0x02346638
	mov r1, #0
	str r1, [r0]
	bx lr
	.align 2, 0
_02304BF0: .word 0x027FFD9C
_02304BF4: .word 0x02346640
_02304BF8: .word FUN_02304A10
_02304BFC: .word 0x027E3000
_02304C00: .word 0x02346638
	arm_func_end FUN_02304B94

	arm_func_start FUN_02304C04
FUN_02304C04: ; 0x02304C04
	ldr r1, _02304C1C ; =0x023466C4
	mov r2, #1
	ldrh r3, [r1]
	orr r0, r3, r2, lsl r0
	strh r0, [r1]
	bx lr
	.align 2, 0
_02304C1C: .word 0x023466C4
	arm_func_end FUN_02304C04

	arm_func_start FUN_02304C20
FUN_02304C20: ; 0x02304C20
	stmdb sp!, {lr}
	sub sp, sp, #0xc
	bl FUN_02304ED0
	ldr r1, _02304CC0 ; =0x04000100
	ldr r3, _02304CC4 ; =0x023466D0
	ldrh ip, [r1]
	ldr r2, _02304CC8 ; =0x0000FFFF
	mvn r1, #0
	strh ip, [sp]
	ldr ip, [r3]
	ldr r3, [r3, #4]
	and r1, ip, r1
	and r2, r3, r2
	str r1, [sp, #4]
	ldr r1, _02304CCC ; =0x04000214
	str r2, [sp, #8]
	ldr r1, [r1]
	ands r1, r1, #8
	beq _02304C94
	ldrh r1, [sp]
	ands r1, r1, #0x8000
	bne _02304C94
	ldr r3, [sp, #4]
	mov r1, #1
	ldr r2, [sp, #8]
	adds r3, r3, r1
	adc r1, r2, #0
	str r3, [sp, #4]
	str r1, [sp, #8]
_02304C94:
	bl FUN_02304EE4
	ldr r2, [sp, #4]
	ldr r1, [sp, #8]
	ldrh r0, [sp]
	mov r1, r1, lsl #0x10
	orr r1, r1, r2, lsr #16
	orr r1, r1, r0, asr #31
	orr r0, r0, r2, lsl #16
	add sp, sp, #0xc
	ldmia sp!, {lr}
	bx lr
	.align 2, 0
_02304CC0: .word 0x04000100
_02304CC4: .word 0x023466D0
_02304CC8: .word 0x0000FFFF
_02304CCC: .word 0x04000214
	arm_func_end FUN_02304C20

	arm_func_start FUN_02304CD0
FUN_02304CD0: ; 0x02304CD0
	stmdb sp!, {lr}
	sub sp, sp, #4
	ldr r2, _02304D44 ; =0x023466D0
	ldr r1, _02304D48 ; =0x023466CC
	ldr ip, [r2]
	mov r0, #1
	ldr r3, [r2, #4]
	adds ip, ip, r0
	ldr r0, [r1]
	adc r3, r3, #0
	str ip, [r2]
	str r3, [r2, #4]
	cmp r0, #0
	mov r3, #0
	beq _02304D28
	ldr r2, _02304D4C ; =0x04000102
	ldr r0, _02304D50 ; =0x04000100
	strh r3, [r2]
	strh r3, [r0]
	mov r0, #0xc1
	strh r0, [r2]
	str r3, [r1]
_02304D28:
	mov r0, #0
	ldr r1, _02304D54 ; =FUN_02304CD0
	mov r2, r0
	bl FUN_02302EB4
	add sp, sp, #4
	ldmia sp!, {lr}
	bx lr
	.align 2, 0
_02304D44: .word 0x023466D0
_02304D48: .word 0x023466CC
_02304D4C: .word 0x04000102
_02304D50: .word 0x04000100
_02304D54: .word FUN_02304CD0
	arm_func_end FUN_02304CD0

	arm_func_start FUN_02304D58
FUN_02304D58: ; 0x02304D58
	stmdb sp!, {lr}
	sub sp, sp, #4
	ldr r1, _02304DDC ; =0x023466C8
	ldrh r0, [r1]
	cmp r0, #0
	addne sp, sp, #4
	ldmneia sp!, {lr}
	bxne lr
	mov r2, #1
	mov r0, #0
	strh r2, [r1]
	bl FUN_02304C04
	ldr r0, _02304DE0 ; =0x023466D0
	mov r2, #0
	str r2, [r0]
	ldr r3, _02304DE4 ; =0x04000102
	str r2, [r0, #4]
	ldr r0, _02304DE8 ; =0x04000100
	strh r2, [r3]
	ldr r1, _02304DEC ; =FUN_02304CD0
	strh r2, [r0]
	mov r2, #0xc1
	mov r0, #8
	strh r2, [r3]
	bl FUN_02302F00
	mov r0, #8
	bl FUN_02302E48
	ldr r0, _02304DF0 ; =0x023466CC
	mov r1, #0
	str r1, [r0]
	add sp, sp, #4
	ldmia sp!, {lr}
	bx lr
	.align 2, 0
_02304DDC: .word 0x023466C8
_02304DE0: .word 0x023466D0
_02304DE4: .word 0x04000102
_02304DE8: .word 0x04000100
_02304DEC: .word FUN_02304CD0
_02304DF0: .word 0x023466CC
	arm_func_end FUN_02304D58

	arm_func_start FUN_02304DF4
FUN_02304DF4: ; 0x02304DF4
	stmdb sp!, {lr}
	sub sp, sp, #4
	ldr r1, _02304E44 ; =0x023466D8
	ldrh r0, [r1]
	cmp r0, #0
	addne sp, sp, #4
	ldmneia sp!, {lr}
	bxne lr
	mov r0, #1
	strh r0, [r1]
	bl FUN_02304C04
	ldr r1, _02304E48 ; =0x023466DC
	mov r2, #0
	mov r0, #0x10
	str r2, [r1]
	str r2, [r1, #4]
	bl FUN_02302E00
	add sp, sp, #4
	ldmia sp!, {lr}
	bx lr
	.align 2, 0
_02304E44: .word 0x023466D8
_02304E48: .word 0x023466DC
	arm_func_end FUN_02304DF4

	arm_func_start FUN_02304E4C
FUN_02304E4C: ; 0x02304E4C
	stmdb sp!, {lr}
	sub sp, sp, #4
	ldr r2, _02304EAC ; =0x023466E4
	ldrh r0, [r2]
	cmp r0, #0
	addne sp, sp, #4
	ldmneia sp!, {lr}
	bxne lr
	ldr r1, _02304EB0 ; =0x023466F0
	mov r3, #0
	mov ip, #1
	mov r0, #4
	strh ip, [r2]
	str r3, [r1]
	str r3, [r1, #4]
	bl FUN_02302E00
	ldr r1, _02304EB4 ; =0x023466EC
	mov r2, #0
	ldr r0, _02304EB8 ; =0x023466E8
	str r2, [r1]
	str r2, [r0]
	add sp, sp, #4
	ldmia sp!, {lr}
	bx lr
	.align 2, 0
_02304EAC: .word 0x023466E4
_02304EB0: .word 0x023466F0
_02304EB4: .word 0x023466EC
_02304EB8: .word 0x023466E8
	arm_func_end FUN_02304E4C

	arm_func_start FUN_02304EBC
FUN_02304EBC: ; 0x02304EBC
	mrs r0, cpsr
	bic r1, r0, #0x80
	msr cpsr_c, r1
	and r0, r0, #0x80
	bx lr
	arm_func_end FUN_02304EBC

	arm_func_start FUN_02304ED0
FUN_02304ED0: ; 0x02304ED0
	mrs r0, cpsr
	orr r1, r0, #0x80
	msr cpsr_c, r1
	and r0, r0, #0x80
	bx lr
	arm_func_end FUN_02304ED0

	arm_func_start FUN_02304EE4
FUN_02304EE4: ; 0x02304EE4
	mrs r1, cpsr
	bic r2, r1, #0x80
	orr r2, r2, r0
	msr cpsr_c, r2
	and r0, r1, #0x80
	bx lr
	arm_func_end FUN_02304EE4

	arm_func_start FUN_02304EFC
FUN_02304EFC: ; 0x02304EFC
	mrs r0, cpsr
	orr r1, r0, #0xc0
	msr cpsr_c, r1
	and r0, r0, #0xc0
	bx lr
	arm_func_end FUN_02304EFC

	arm_func_start FUN_02304F10
FUN_02304F10: ; 0x02304F10
	mrs r1, cpsr
	bic r2, r1, #0xc0
	orr r2, r2, r0
	msr cpsr_c, r2
	and r0, r1, #0xc0
	bx lr
	arm_func_end FUN_02304F10

	arm_func_start FUN_02304F28
FUN_02304F28: ; 0x02304F28
	mrs r0, cpsr
	and r0, r0, #0x80
	bx lr
	arm_func_end FUN_02304F28

	arm_func_start FUN_02304F34
FUN_02304F34: ; 0x02304F34
	mrs r0, cpsr
	and r0, r0, #0x1f
	bx lr
_02304F40:
	subs r0, r0, #4
	bhs _02304F40
	bx lr
	arm_func_end FUN_02304F34

	arm_func_start FUN_02304F4C
FUN_02304F4C: ; 0x02304F4C
	stmdb sp!, {lr}
	sub sp, sp, #4
	mov r0, #1
	blx SVC_WaitByLoop
	mov r0, #1
	mov r1, r0
	bl FUN_02302BF8
	add sp, sp, #4
	ldmia sp!, {lr}
	bx lr
	arm_func_end FUN_02304F4C

	arm_func_start FUN_02304F74
FUN_02304F74: ; 0x02304F74
	stmdb sp!, {lr}
	sub sp, sp, #4
	and r0, r1, #0x7f00
	mov r0, r0, lsl #8
	mov r0, r0, lsr #0x10
	cmp r0, #0x10
	ldreq r0, _02304FB4 ; =0x023466FC
	moveq r1, #1
	streqh r1, [r0]
	addeq sp, sp, #4
	ldmeqia sp!, {lr}
	bxeq lr
	bl FUN_02305188
	add sp, sp, #4
	ldmia sp!, {lr}
	bx lr
	.align 2, 0
_02304FB4: .word 0x023466FC
	arm_func_end FUN_02304F74

	arm_func_start FUN_02304FB8
FUN_02304FB8: ; 0x02304FB8
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	ldr r0, _02305018 ; =0x023466F8
	ldrh r1, [r0]
	cmp r1, #0
	addne sp, sp, #4
	ldmneia sp!, {r4, r5, lr}
	bxne lr
	mov r1, #1
	strh r1, [r0]
	bl FUN_02305800
	mov r5, #0xc
	mov r4, #1
_02304FEC:
	mov r0, r5
	mov r1, r4
	bl FUN_023059E4
	cmp r0, #0
	beq _02304FEC
	ldr r1, _0230501C ; =FUN_02304F74
	mov r0, #0xc
	bl FUN_02305A0C
	add sp, sp, #4
	ldmia sp!, {r4, r5, lr}
	bx lr
	.align 2, 0
_02305018: .word 0x023466F8
_0230501C: .word FUN_02304F74
	arm_func_end FUN_02304FB8

	arm_func_start FUN_02305020
FUN_02305020: ; 0x02305020
	stmdb sp!, {r4, lr}
	ldr ip, _02305098 ; =0x027FFC80
	mov r4, r0
	ldrh r2, [ip, #0x64]
	add r0, ip, #6
	add r1, r4, #4
	mov r2, r2, lsl #0x1d
	mov r2, r2, lsr #0x1d
	strb r2, [r4]
	ldrb r3, [ip, #2]
	mov r2, #0x14
	mov r3, r3, lsl #0x1c
	mov r3, r3, lsr #0x1c
	strb r3, [r4, #1]
	ldrb r3, [ip, #3]
	strb r3, [r4, #2]
	ldrb r3, [ip, #4]
	strb r3, [r4, #3]
	ldrb r3, [ip, #0x1a]
	strh r3, [r4, #0x18]
	ldrb r3, [ip, #0x50]
	strh r3, [r4, #0x4e]
	bl FUN_023054F0
	ldr r0, _02305098 ; =0x027FFC80
	add r1, r4, #0x1a
	add r0, r0, #0x1c
	mov r2, #0x34
	bl FUN_023054F0
	ldmia sp!, {r4, lr}
	bx lr
	.align 2, 0
_02305098: .word 0x027FFC80
	arm_func_end FUN_02305020

	arm_func_start FUN_0230509C
FUN_0230509C: ; 0x0230509C
	ldr ip, _023050B0 ; =FUN_02305618
	mov r1, r0
	ldr r0, _023050B4 ; =0x027FFCF4
	mov r2, #6
	bx ip
	.align 2, 0
_023050B0: .word FUN_02305618
_023050B4: .word 0x027FFCF4
	arm_func_end FUN_0230509C

	arm_func_start FUN_023050B8
FUN_023050B8: ; 0x023050B8
	clz r0, r0
	bx lr
	arm_func_end FUN_023050B8

	arm_func_start FUN_023050C0
FUN_023050C0: ; 0x023050C0
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	mov r5, r0
	mov sl, r1
	bl FUN_02304ED0
	ldr r4, _0230513C ; =0x02346700
	ldr r1, _02305140 ; =0x000001FF
	ldr r2, [r4]
	mov r8, r0
	and r0, r5, r2
	and sb, r0, r1
	ldr r6, _02305144 ; =0x02346704
	mov r7, #1
	mov r5, #0
_023050F4:
	mov r0, sb
	bl FUN_023050B8
	rsbs r2, r0, #0x1f
	bmi _0230512C
	mov r1, r2, lsl #1
	ldrh r0, [r6, r1]
	mvn r2, r7, lsl r2
	cmp sl, r0
	ldreq r0, [r4]
	and sb, sb, r2
	andeq r0, r0, r2
	streqh r5, [r6, r1]
	streq r0, [r4]
	b _023050F4
_0230512C:
	mov r0, r8
	bl FUN_02304EE4
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	bx lr
	.align 2, 0
_0230513C: .word 0x02346700
_02305140: .word 0x000001FF
_02305144: .word 0x02346704
	arm_func_end FUN_023050C0

	arm_func_start FUN_02305148
FUN_02305148: ; 0x02305148
	ldr r0, _02305174 ; =0x02346700
	mov r3, #0
	str r3, [r0]
	ldr r0, _02305178 ; =0x02346704
	mov r2, r3
_0230515C:
	mov r1, r3, lsl #1
	add r3, r3, #1
	strh r2, [r0, r1]
	cmp r3, #9
	blt _0230515C
	bx lr
	.align 2, 0
_02305174: .word 0x02346700
_02305178: .word 0x02346704
	arm_func_end FUN_02305148

	arm_func_start FUN_0230517C
FUN_0230517C: ; 0x0230517C
	mov r0, #0
	mcr p15, 0, r0, c7, c0, 4
	bx lr
	arm_func_end FUN_0230517C

	arm_func_start FUN_02305188
FUN_02305188: ; 0x02305188
	stmdb sp!, {lr}
	sub sp, sp, #4
_02305190:
	bl FUN_02304ED0
	bl FUN_0230517C
	b _02305190
	arm_func_end FUN_02305188

	arm_func_start FUN_0230519C
FUN_0230519C: ; 0x0230519C
	ldr r1, _023051A8 ; =0x04000247
	strb r0, [r1]
	bx lr
	.align 2, 0
_023051A8: .word 0x04000247
	arm_func_end FUN_0230519C

	arm_func_start FUN_023051AC
FUN_023051AC: ; 0x023051AC
	stmdb sp!, {lr}
	sub sp, sp, #4
	cmp r0, #0
	addne sp, sp, #4
	ldmneia sp!, {lr}
	bxne lr
	cmp r3, #0
	and r0, r1, #0xff000000
	beq _023051DC
	cmp r3, #0x800000
	subeq r1, r1, r2
	b _023051E0
_023051DC:
	add r1, r1, r2
_023051E0:
	cmp r0, #0x4000000
	beq _0230520C
	cmp r0, #0x8000000
	bhs _0230520C
	and r0, r1, #0xff000000
	cmp r0, #0x4000000
	beq _0230520C
	cmp r0, #0x8000000
	addlo sp, sp, #4
	ldmloia sp!, {lr}
	bxlo lr
_0230520C:
	bl FUN_02305188
	add sp, sp, #4
	ldmia sp!, {lr}
	bx lr
	arm_func_end FUN_023051AC

	arm_func_start FUN_0230521C
FUN_0230521C: ; 0x0230521C
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #4
	ldr r4, _023052CC ; =0x040000B8
	mov r7, r0
	mov r6, r1
	mov r5, #0
_02305234:
	cmp r5, r7
	beq _023052B0
	ldr r1, [r4]
	ands r0, r1, #0x80000000
	beq _023052B0
	and r0, r1, #0x38000000
	cmp r0, r6
	beq _023052B0
	cmp r0, #0x8000000
	bne _02305264
	cmp r6, #0x10000000
	beq _023052B0
_02305264:
	cmp r0, #0x10000000
	bne _02305274
	cmp r6, #0x8000000
	beq _023052B0
_02305274:
	cmp r0, #0x18000000
	beq _023052AC
	cmp r0, #0x20000000
	beq _023052AC
	cmp r0, #0x28000000
	beq _023052AC
	cmp r0, #0x30000000
	beq _023052AC
	cmp r0, #0x38000000
	beq _023052AC
	cmp r0, #0x8000000
	beq _023052AC
	cmp r0, #0x10000000
	bne _023052B0
_023052AC:
	bl FUN_02305188
_023052B0:
	add r5, r5, #1
	cmp r5, #3
	add r4, r4, #0xc
	blt _02305234
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, lr}
	bx lr
	.align 2, 0
_023052CC: .word 0x040000B8
	arm_func_end FUN_0230521C

	arm_func_start FUN_023052D0
FUN_023052D0: ; 0x023052D0
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl FUN_02304ED0
	mov r1, #6
	mul r1, r4, r1
	add r1, r1, #5
	mov r1, r1, lsl #1
	add r1, r1, #0x4000000
	ldrh r2, [r1, #0xb0]
	cmp r4, #0
	bic r2, r2, #0x3a00
	strh r2, [r1, #0xb0]
	ldrh r2, [r1, #0xb0]
	bic r2, r2, #0x8000
	strh r2, [r1, #0xb0]
	ldrh r2, [r1, #0xb0]
	ldrh r1, [r1, #0xb0]
	bne _02305340
	mov r1, #0xc
	mul ip, r4, r1
	ldr r1, _0230534C ; =0x040000B0
	add r2, ip, #0x4000000
	mov r3, #0
	str r3, [r2, #0xb0]
	add r2, ip, r1
	ldr r1, _02305350 ; =0x81400001
	str r3, [r2, #4]
	str r1, [r2, #8]
_02305340:
	bl FUN_02304EE4
	ldmia sp!, {r4, lr}
	bx lr
	.align 2, 0
_0230534C: .word 0x040000B0
_02305350: .word 0x81400001
	arm_func_end FUN_023052D0

	arm_func_start FUN_02305354
FUN_02305354: ; 0x02305354
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	movs r5, r3
	mov r8, r0
	mov r7, r1
	mov r6, r2
	ldmeqia sp!, {r4, r5, r6, r7, r8, lr}
	bxeq lr
	mov r2, r5
	mov r3, #0
	bl FUN_023051AC
	mov r0, #3
	mul r1, r8, r0
	ldr r0, _023053C8 ; =0x040000B0
	add r1, r1, #2
	add r4, r0, r1, lsl #2
_02305390:
	ldr r0, [r4]
	ands r0, r0, #0x80000000
	bne _02305390
	mov r3, r5, lsr #1
	mov r0, r8
	mov r1, r7
	mov r2, r6
	orr r3, r3, #0x80000000
	bl FUN_01FF8214
_023053B4:
	ldr r0, [r4]
	ands r0, r0, #0x80000000
	bne _023053B4
	ldmia sp!, {r4, r5, r6, r7, r8, lr}
	bx lr
	.align 2, 0
_023053C8: .word 0x040000B0
	arm_func_end FUN_02305354

	arm_func_start FUN_023053CC
FUN_023053CC: ; 0x023053CC
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	mov r5, r3
	mov r6, r2
	mov r2, r5
	mov r3, #0
	mov r8, r0
	mov r7, r1
	bl FUN_023051AC
	cmp r5, #0
	ldmeqia sp!, {r4, r5, r6, r7, r8, lr}
	bxeq lr
	mov r0, #3
	mul r1, r8, r0
	ldr r0, _02305444 ; =0x040000B0
	add r1, r1, #2
	add r4, r0, r1, lsl #2
_0230540C:
	ldr r0, [r4]
	ands r0, r0, #0x80000000
	bne _0230540C
	mov r3, r5, lsr #2
	mov r0, r8
	mov r1, r7
	mov r2, r6
	orr r3, r3, #0x84000000
	bl FUN_01FF8214
_02305430:
	ldr r0, [r4]
	ands r0, r0, #0x80000000
	bne _02305430
	ldmia sp!, {r4, r5, r6, r7, r8, lr}
	bx lr
	.align 2, 0
_02305444: .word 0x040000B0
	arm_func_end FUN_023053CC

	arm_func_start FUN_02305448
FUN_02305448: ; 0x02305448
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	movs r4, r3
	mov r8, r0
	mov r7, r1
	mov r6, r2
	ldmeqia sp!, {r4, r5, r6, r7, r8, lr}
	bxeq lr
	mov r0, #3
	mul r1, r8, r0
	ldr r0, _023054D0 ; =0x040000B0
	add r1, r1, #2
	add r5, r0, r1, lsl #2
_02305478:
	ldr r0, [r5]
	ands r0, r0, #0x80000000
	bne _02305478
	bl FUN_02304ED0
	ldr r1, _023054D4 ; =0x040000E0
	mov r2, r8, lsl #2
	mov r3, r4, lsr #2
	mov r4, r0
	add ip, r2, #0x4000000
	mov r0, r8
	mov r2, r7
	add r1, r1, r8, lsl #2
	orr r3, r3, #0x85000000
	str r6, [ip, #0xe0]
	bl FUN_01FF81B4
	mov r0, r4
	bl FUN_02304EE4
_023054BC:
	ldr r0, [r5]
	ands r0, r0, #0x80000000
	bne _023054BC
	ldmia sp!, {r4, r5, r6, r7, r8, lr}
	bx lr
	.align 2, 0
_023054D0: .word 0x040000B0
_023054D4: .word 0x040000E0
	arm_func_end FUN_02305448

	arm_func_start FUN_023054D8
FUN_023054D8: ; 0x023054D8
	mov r3, #0
_023054DC:
	cmp r3, r2
	strlth r0, [r1, r3]
	addlt r3, r3, #2
	blt _023054DC
	bx lr
	arm_func_end FUN_023054D8

	arm_func_start FUN_023054F0
FUN_023054F0: ; 0x023054F0
	mov ip, #0
_023054F4:
	cmp ip, r2
	ldrlth r3, [r0, ip]
	strlth r3, [r1, ip]
	addlt ip, ip, #2
	blt _023054F4
	bx lr
	arm_func_end FUN_023054F0

	arm_func_start FUN_0230550C
FUN_0230550C: ; 0x0230550C
	add ip, r1, r2
_02305510:
	cmp r1, ip
	stmltia r1!, {r0}
	blt _02305510
	bx lr
	arm_func_end FUN_0230550C

	arm_func_start FUN_02305520
FUN_02305520: ; 0x02305520
	add ip, r1, r2
_02305524:
	cmp r1, ip
	ldmltia r0!, {r2}
	stmltia r1!, {r2}
	blt _02305524
	bx lr
	arm_func_end FUN_02305520

	arm_func_start FUN_02305538
FUN_02305538: ; 0x02305538
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
_02305564:
	cmp r1, ip
	stmltia r1!, {r0, r2, r3, r4, r5, r6, r7, r8}
	blt _02305564
_02305570:
	cmp r1, sb
	stmltia r1!, {r0}
	blt _02305570
	ldmia sp!, {r4, r5, r6, r7, r8, sb}
	bx lr
	arm_func_end FUN_02305538

	arm_func_start FUN_02305584
FUN_02305584: ; 0x02305584
	cmp r2, #0
	bxeq lr
	tst r0, #1
	beq _023055B0
	ldrh ip, [r0, #-1]
	and ip, ip, #0xff
	orr r3, ip, r1, lsl #8
	strh r3, [r0, #-1]
	add r0, r0, #1
	subs r2, r2, #1
	bxeq lr
_023055B0:
	cmp r2, #2
	blo _023055F8
	orr r1, r1, r1, lsl #8
	tst r0, #2
	beq _023055D0
	strh r1, [r0], #2
	subs r2, r2, #2
	bxeq lr
_023055D0:
	orr r1, r1, r1, lsl #16
	bics r3, r2, #3
	beq _023055F0
	sub r2, r2, r3
	add ip, r3, r0
_023055E4:
	str r1, [r0], #4
	cmp r0, ip
	blo _023055E4
_023055F0:
	tst r2, #2
	strneh r1, [r0], #2
_023055F8:
	tst r2, #1
	bxeq lr
	ldrh r3, [r0]
	and r3, r3, #0xff00
	and r1, r1, #0xff
	orr r1, r1, r3
	strh r1, [r0]
	bx lr
	arm_func_end FUN_02305584

	arm_func_start FUN_02305618
FUN_02305618: ; 0x02305618
	cmp r2, #0
	bxeq lr
	tst r1, #1
	beq _02305658
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
_02305658:
	eor ip, r1, r0
	tst ip, #1
	beq _023056AC
	bic r0, r0, #1
	ldrh ip, [r0], #2
	mov r3, ip, lsr #8
	subs r2, r2, #2
	blo _02305690
_02305678:
	ldrh ip, [r0], #2
	orr ip, r3, ip, lsl #8
	strh ip, [r1], #2
	mov r3, ip, lsr #0x10
	subs r2, r2, #2
	bhs _02305678
_02305690:
	tst r2, #1
	bxeq lr
	ldrh ip, [r1]
	and ip, ip, #0xff00
	orr ip, ip, r3
	strh ip, [r1]
	bx lr
_023056AC:
	tst ip, #2
	beq _023056D8
	bics r3, r2, #1
	beq _02305724
	sub r2, r2, r3
	add ip, r3, r1
_023056C4:
	ldrh r3, [r0], #2
	strh r3, [r1], #2
	cmp r1, ip
	blo _023056C4
	b _02305724
_023056D8:
	cmp r2, #2
	blo _02305724
	tst r1, #2
	beq _023056F8
	ldrh r3, [r0], #2
	strh r3, [r1], #2
	subs r2, r2, #2
	bxeq lr
_023056F8:
	bics r3, r2, #3
	beq _02305718
	sub r2, r2, r3
	add ip, r3, r1
_02305708:
	ldr r3, [r0], #4
	str r3, [r1], #4
	cmp r1, ip
	blo _02305708
_02305718:
	tst r2, #2
	ldrneh r3, [r0], #2
	strneh r3, [r1], #2
_02305724:
	tst r2, #1
	bxeq lr
	ldrh r2, [r1]
	ldrh r0, [r0]
	and r2, r2, #0xff00
	and r0, r0, #0xff
	orr r0, r2, r0
	strh r0, [r1]
	bx lr
	arm_func_end FUN_02305618

	arm_func_start FUN_02305748
FUN_02305748: ; 0x02305748
	.word 0xE1010090
	bx lr
	arm_func_end FUN_02305748

	arm_func_start FUN_02305750
FUN_02305750: ; 0x02305750
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #4
	mov r5, r1
	mov r6, r0
	mov r7, r3
	mvn r1, #0
	mov r4, r2
	bl FUN_0230521C
	mov r0, r6
	mov r1, r5
	mov r2, r7
	mov r3, #0x1000000
	bl FUN_023051AC
	cmp r7, #0
	addeq sp, sp, #4
	ldmeqia sp!, {r4, r5, r6, r7, lr}
	bxeq lr
	mov r0, #3
	mul r1, r6, r0
	ldr r0, _023057D4 ; =0x040000B0
	add r1, r1, #2
	add r1, r0, r1, lsl #2
_023057A8:
	ldr r0, [r1]
	ands r0, r0, #0x80000000
	bne _023057A8
	ldr r3, _023057D8 ; =0xAF000001
	mov r0, r6
	mov r1, r5
	mov r2, r4
	bl FUN_01FF8288
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, lr}
	bx lr
	.align 2, 0
_023057D4: .word 0x040000B0
_023057D8: .word 0xAF000001
	arm_func_end FUN_02305750

	arm_func_start FUN_023057DC
FUN_023057DC: ; 0x023057DC
	stmdb sp!, {lr}
	sub sp, sp, #4
	mov r0, #3
	bl FUN_0230519C
	mov r0, #0
	bl FUN_023052D0
	add sp, sp, #4
	ldmia sp!, {lr}
	bx lr
	arm_func_end FUN_023057DC

	arm_func_start FUN_02305800
FUN_02305800: ; 0x02305800
	ldr ip, _02305808 ; =FUN_02305A78
	bx ip
	.align 2, 0
_02305808: .word FUN_02305A78
	arm_func_end FUN_02305800

	arm_func_start FUN_0230580C
FUN_0230580C: ; 0x0230580C
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	sub sp, sp, #8
	ldr sl, _02305924 ; =0x04000184
	ldr r5, _02305928 ; =0x0234671C
	ldr r4, _0230592C ; =0x04000188
	mov r7, #0x4100000
	mov r6, #0
	mvn r8, #3
	mvn sb, #2
_02305830:
	ldrh r0, [sl]
	ands r0, r0, #0x4000
	ldrneh r0, [sl]
	movne r1, sb
	orrne r0, r0, #0xc000
	strneh r0, [sl]
	bne _02305878
	bl FUN_02304ED0
	ldrh r1, [sl]
	ands r1, r1, #0x100
	beq _02305868
	bl FUN_02304EE4
	mov r1, r8
	b _02305878
_02305868:
	ldr r1, [r7]
	str r1, [sp]
	bl FUN_02304EE4
	mov r1, r6
_02305878:
	cmp r1, r8
	addeq sp, sp, #8
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	bxeq lr
	mvn r0, #2
	cmp r1, r0
	beq _02305830
	ldr r1, [sp]
	mov r0, r1, lsl #0x1b
	movs r0, r0, lsr #0x1b
	beq _02305830
	ldr r3, [r5, r0, lsl #2]
	cmp r3, #0
	beq _023058C4
	mov r2, r1, lsl #0x1a
	mov r1, r1, lsr #6
	mov r2, r2, lsr #0x1f
	blx r3
	b _02305830
_023058C4:
	mov r0, r1, lsl #0x1a
	movs r0, r0, lsr #0x1f
	bne _02305830
	orr r0, r1, #0x20
	str r0, [sp]
	ldrh r0, [sl]
	ands r0, r0, #0x4000
	ldrneh r0, [sl]
	orrne r0, r0, #0xc000
	strneh r0, [sl]
	bne _02305830
	bl FUN_02304ED0
	ldrh r1, [sl]
	ands r1, r1, #2
	beq _02305908
	bl FUN_02304EE4
	b _02305830
_02305908:
	ldr r1, [sp]
	str r1, [r4]
	bl FUN_02304EE4
	b _02305830
	arm_func_end FUN_0230580C

	arm_func_start FUN_02305918
FUN_02305918: ; 0x02305918
	add sp, sp, #8
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	bx lr
	.align 2, 0
_02305924: .word 0x04000184
_02305928: .word 0x0234671C
_0230592C: .word 0x04000188
	arm_func_end FUN_02305918

	arm_func_start FUN_02305930
FUN_02305930: ; 0x02305930
	stmdb sp!, {lr}
	sub sp, sp, #4
	ldr r3, [sp]
	and r0, r0, #0x1f
	bic r3, r3, #0x1f
	orr ip, r3, r0
	bic r3, ip, #0x20
	and r0, r2, #1
	orr r3, r3, r0, lsl #5
	str ip, [sp]
	and r2, r3, #0x3f
	bic r0, r1, #0xfc000000
	orr r0, r2, r0, lsl #6
	str r3, [sp]
	ldr r2, _023059DC ; =0x04000184
	str r0, [sp]
	ldrh r0, [r2]
	ands r0, r0, #0x4000
	ldrneh r1, [r2]
	addne sp, sp, #4
	mvnne r0, #0
	orrne r1, r1, #0xc000
	strneh r1, [r2]
	ldmneia sp!, {lr}
	bxne lr
	bl FUN_02304ED0
	ldr r1, _023059DC ; =0x04000184
	ldrh r1, [r1]
	ands r1, r1, #2
	beq _023059BC
	bl FUN_02304EE4
	add sp, sp, #4
	mvn r0, #1
	ldmia sp!, {lr}
	bx lr
_023059BC:
	ldr r2, [sp]
	ldr r1, _023059E0 ; =0x04000188
	str r2, [r1]
	bl FUN_02304EE4
	mov r0, #0
	add sp, sp, #4
	ldmia sp!, {lr}
	bx lr
	.align 2, 0
_023059DC: .word 0x04000184
_023059E0: .word 0x04000188
	arm_func_end FUN_02305930

	arm_func_start FUN_023059E4
FUN_023059E4: ; 0x023059E4
	ldr r2, _02305A08 ; =0x027FFC00
	mov r3, #1
	add r1, r2, r1, lsl #2
	mov r2, r3, lsl r0
	ldr r0, [r1, #0x388]
	ands r0, r2, r0
	moveq r3, #0
	mov r0, r3
	bx lr
	.align 2, 0
_02305A08: .word 0x027FFC00
	arm_func_end FUN_023059E4

	arm_func_start FUN_02305A0C
FUN_02305A0C: ; 0x02305A0C
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	mov r4, r0
	mov r5, r1
	bl FUN_02304ED0
	ldr r1, _02305A70 ; =0x0234671C
	cmp r5, #0
	str r5, [r1, r4, lsl #2]
	beq _02305A48
	ldr r3, _02305A74 ; =0x027FFC00
	mov r1, #1
	ldr r2, [r3, #0x388]
	orr r1, r2, r1, lsl r4
	str r1, [r3, #0x388]
	b _02305A60
_02305A48:
	ldr r3, _02305A74 ; =0x027FFC00
	mov r1, #1
	mvn r1, r1, lsl r4
	ldr r2, [r3, #0x388]
	and r1, r2, r1
	str r1, [r3, #0x388]
_02305A60:
	bl FUN_02304EE4
	add sp, sp, #4
	ldmia sp!, {r4, r5, lr}
	bx lr
	.align 2, 0
_02305A70: .word 0x0234671C
_02305A74: .word 0x027FFC00
	arm_func_end FUN_02305A0C

	arm_func_start FUN_02305A78
FUN_02305A78: ; 0x02305A78
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	bl FUN_02304ED0
	ldr r1, _02305B68 ; =0x02346718
	mov r4, r0
	ldrh r0, [r1]
	cmp r0, #0
	bne _02305B54
	mov r2, #1
	ldr r0, _02305B6C ; =0x027FFC00
	strh r2, [r1]
	mov r2, #0
	str r2, [r0, #0x388]
	ldr r0, _02305B70 ; =0x0234671C
	mov r1, r2
_02305AB4:
	str r1, [r0, r2, lsl #2]
	add r2, r2, #1
	cmp r2, #0x20
	blt _02305AB4
	ldr r2, _02305B74 ; =0x0000C408
	ldr r1, _02305B78 ; =0x04000184
	mov r0, #0x40000
	strh r2, [r1]
	bl FUN_02302DCC
	ldr r1, _02305B7C ; =FUN_0230580C
	mov r0, #0x40000
	bl FUN_02302F00
	mov r0, #0x40000
	bl FUN_02302E48
	mov ip, #0
	ldr r3, _02305B80 ; =0x04000180
	mov r1, ip
	mov r2, #0x3e8
_02305AFC:
	ldrh r0, [r3]
	ands lr, r0, #0xf
	mov r0, lr, lsl #8
	strh r0, [r3]
	bne _02305B18
	cmp ip, #4
	bgt _02305B54
_02305B18:
	ldrh r0, [r3]
	mov r5, r2
	and r0, r0, #0xf
	cmp r0, lr
	bne _02305B4C
_02305B2C:
	cmp r5, #0
	movle ip, r1
	ble _02305B4C
	ldrh r0, [r3]
	sub r5, r5, #1
	and r0, r0, #0xf
	cmp r0, lr
	beq _02305B2C
_02305B4C:
	add ip, ip, #1
	b _02305AFC
_02305B54:
	mov r0, r4
	bl FUN_02304EE4
	add sp, sp, #4
	ldmia sp!, {r4, r5, lr}
	bx lr
	.align 2, 0
_02305B68: .word 0x02346718
_02305B6C: .word 0x027FFC00
_02305B70: .word 0x0234671C
_02305B74: .word 0x0000C408
_02305B78: .word 0x04000184
_02305B7C: .word FUN_0230580C
_02305B80: .word 0x04000180
	arm_func_end FUN_02305A78

	arm_func_start FUN_02305B84
FUN_02305B84: ; 0x02305B84
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	mov r8, r0
	ldr r0, [r8, #0xc]
	mov r7, r1
	mov r1, #1
	ldr r5, [r8, #8]
	mov r4, r1, lsl r7
	ands r0, r0, #4
	moveq r1, #0
	cmp r1, #0
	ldrne r0, [r5, #0x1c]
	orrne r0, r0, #0x200
	strne r0, [r5, #0x1c]
	ldreq r0, [r5, #0x1c]
	orreq r0, r0, #0x100
	streq r0, [r5, #0x1c]
	ldr r0, [r5, #0x58]
	ands r0, r0, r4
	beq _02305C34
	ldr r2, [r5, #0x54]
	mov r0, r8
	mov r1, r7
	blx r2
	mov r6, r0
	cmp r6, #8
	addls pc, pc, r6, lsl #2
	b _02305C38
_02305BF0: ; jump table
	b _02305C14 ; case 0
	b _02305C14 ; case 1
	b _02305C38 ; case 2
	b _02305C38 ; case 3
	b _02305C14 ; case 4
	b _02305C38 ; case 5
	b _02305C38 ; case 6
	b _02305C38 ; case 7
	b _02305C1C ; case 8
_02305C14:
	str r6, [r8, #0x14]
	b _02305C38
_02305C1C:
	ldr r1, [r5, #0x58]
	mvn r0, r4
	and r0, r1, r0
	str r0, [r5, #0x58]
	mov r6, #7
	b _02305C38
_02305C34:
	mov r6, #7
_02305C38:
	cmp r6, #7
	bne _02305C54
	ldr r1, _02305CFC ; =0x02314204
	mov r0, r8
	ldr r1, [r1, r7, lsl #2]
	blx r1
	mov r6, r0
_02305C54:
	cmp r6, #6
	bne _02305CB0
	ldr r0, [r8, #0xc]
	ands r0, r0, #4
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	beq _02305CF0
	bl FUN_02304ED0
	ldr r1, [r5, #0x1c]
	mov r4, r0
	ands r0, r1, #0x200
	beq _02305CA0
	add r6, r5, #0xc
_02305C8C:
	mov r0, r6
	bl FUN_023035DC
	ldr r0, [r5, #0x1c]
	ands r0, r0, #0x200
	bne _02305C8C
_02305CA0:
	mov r0, r4
	ldr r6, [r8, #0x14]
	bl FUN_02304EE4
	b _02305CF0
_02305CB0:
	ldr r0, [r8, #0xc]
	ands r0, r0, #4
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	ldrne r0, [r5, #0x1c]
	bicne r0, r0, #0x200
	strne r0, [r5, #0x1c]
	strne r6, [r8, #0x14]
	bne _02305CF0
	ldr r1, [r5, #0x1c]
	mov r0, r8
	bic r2, r1, #0x100
	mov r1, r6
	str r2, [r5, #0x1c]
	bl FUN_02305D00
_02305CF0:
	mov r0, r6
	ldmia sp!, {r4, r5, r6, r7, r8, lr}
	bx lr
	.align 2, 0
_02305CFC: .word 0x02314204
	arm_func_end FUN_02305B84

	arm_func_start FUN_02305D00
FUN_02305D00: ; 0x02305D00
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	bl FUN_02304ED0
	ldr r1, [r6]
	mov r4, r0
	ldr r0, [r6, #4]
	cmp r1, #0
	strne r0, [r1, #4]
	cmp r0, #0
	strne r1, [r0]
	mov r0, #0
	str r0, [r6]
	ldr r1, [r6]
	add r0, r6, #0x18
	str r1, [r6, #4]
	ldr r1, [r6, #0xc]
	bic r1, r1, #0x4f
	str r1, [r6, #0xc]
	str r5, [r6, #0x14]
	bl FUN_0230355C
	mov r0, r4
	bl FUN_02304EE4
	ldmia sp!, {r4, r5, r6, lr}
	bx lr
	arm_func_end FUN_02305D00

	arm_func_start FUN_02305D64
FUN_02305D64: ; 0x02305D64
	mov r0, #0
	bx lr
	arm_func_end FUN_02305D64

	arm_func_start FUN_02305D6C
FUN_02305D6C: ; 0x02305D6C
	ldr r1, [r0, #0x30]
	str r1, [r0, #0x24]
	ldr r1, [r0, #0x30]
	str r1, [r0, #0x2c]
	ldr r1, [r0, #0x34]
	str r1, [r0, #0x28]
	ldr r1, [r0, #0x38]
	str r1, [r0, #0x20]
	mov r0, #0
	bx lr
	arm_func_end FUN_02305D6C

	arm_func_start FUN_02305D94
FUN_02305D94: ; 0x02305D94
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #0x14
	mov r5, r0
	ldr r1, [r5, #8]
	ldr r4, [r5, #0x34]
	ldr r0, [r1, #0x30]
	mov r2, r4, lsl #3
	cmp r2, r0
	addhs sp, sp, #0x14
	movhs r0, #1
	ldmhsia sp!, {r4, r5, lr}
	bxhs lr
	str r1, [sp, #8]
	ldr r1, [r1, #0x2c]
	add r0, sp, #8
	add r3, r1, r2
	add r1, sp, #0
	mov r2, #8
	str r3, [sp, #0xc]
	bl FUN_02306680
	cmp r0, #0
	addne sp, sp, #0x14
	ldmneia sp!, {r4, r5, lr}
	bxne lr
	ldr r1, [sp]
	mov r0, r5
	str r1, [r5, #0x30]
	ldr r2, [sp, #4]
	mov r1, #7
	str r2, [r5, #0x34]
	str r4, [r5, #0x38]
	bl FUN_02305B84
	add sp, sp, #0x14
	ldmia sp!, {r4, r5, lr}
	bx lr
	arm_func_end FUN_02305D94

	arm_func_start FUN_02305E20
FUN_02305E20: ; 0x02305E20
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0xe4
	mov r4, r0
	ldr r1, [r4, #8]
	add r0, sp, #0x98
	add fp, r4, #0x30
	str r1, [sp]
	bl FUN_023072A0
	ldr r0, [r4, #8]
	str r0, [sp, #0xa0]
	ldr r0, [r4, #0xc]
	ands r0, r0, #0x20
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	ldrneh r5, [r4, #0x24]
	movne r4, #0x10000
	bne _02305F0C
	ldrh r0, [fp, #8]
	ldr r4, [r4, #0x20]
	cmp r0, #0
	ldrneh r5, [fp, #0xa]
	bne _02305F0C
	mov sl, #0
	mov sb, sl
	mov r5, #0x10000
	add r8, sp, #0x98
	mov r6, #3
	mov r7, #1
_02305E94:
	mov r0, r8
	mov r1, sl
	bl FUN_0230664C
	add r2, sp, #4
	cmp sl, #0
	mov r0, r8
	mov r1, r6
	ldreq sb, [sp, #0xc4]
	str r2, [sp, #0xc8]
	str r7, [sp, #0xcc]
	bl FUN_02305B84
	cmp r0, #0
	bne _02305EF8
_02305EC8:
	ldr r0, [sp, #0x10]
	cmp r0, #0
	bne _02305EE4
	ldr r0, [sp, #8]
	cmp r0, r4
	ldreqh r5, [sp, #0xbc]
	beq _02305EF8
_02305EE4:
	mov r0, r8
	mov r1, r6
	bl FUN_02305B84
	cmp r0, #0
	beq _02305EC8
_02305EF8:
	cmp r5, #0x10000
	bne _02305F0C
	add sl, sl, #1
	cmp sl, sb
	blo _02305E94
_02305F0C:
	cmp r5, #0x10000
	moveq r0, #0
	streqh r0, [fp, #8]
	addeq sp, sp, #0xe4
	moveq r0, #1
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bxeq lr
	ldrh r0, [fp, #8]
	cmp r0, #0
	bne _02306008
	ldr r0, [sp]
	mov r1, #0
	ldr r0, [r0]
	cmp r0, #0xff
	addls sb, r1, #1
	bls _02305F58
	cmp r0, #0xff00
	addls sb, r1, #2
	addhi sb, r1, #3
_02305F58:
	cmp r4, #0x10000
	ldrne r0, [sp, #0x14]
	add sb, sb, #2
	addne sb, sb, r0
	mov sl, r5
	cmp r5, #0
	beq _02305FFC
	add r0, sp, #0x98
	mov r1, r5
	bl FUN_0230664C
	add r8, sp, #0x98
	mov r6, #3
	mov r7, #1
_02305F8C:
	ldr r1, [sp, #0xc4]
	mov r0, r8
	bl FUN_0230664C
	add r2, sp, #4
	mov r0, r8
	mov r1, r6
	str r2, [sp, #0xc8]
	str r7, [sp, #0xcc]
	bl FUN_02305B84
	cmp r0, #0
	bne _02305FF0
_02305FB8:
	ldr r0, [sp, #0x10]
	cmp r0, #0
	beq _02305FDC
	ldrh r0, [sp, #8]
	cmp r0, sl
	ldreq r0, [sp, #0x14]
	addeq r0, r0, #1
	addeq sb, sb, r0
	beq _02305FF0
_02305FDC:
	mov r0, r8
	mov r1, r6
	bl FUN_02305B84
	cmp r0, #0
	beq _02305FB8
_02305FF0:
	ldrh sl, [sp, #0xbc]
	cmp sl, #0
	bne _02305F8C
_02305FFC:
	add r0, sb, #1
	strh r0, [fp, #8]
	strh r5, [fp, #0xa]
_02306008:
	ldr r7, [fp]
	cmp r7, #0
	addeq sp, sp, #0xe4
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bxeq lr
	ldrh r6, [fp, #8]
	ldr r0, [fp, #4]
	cmp r0, r6
	addlo sp, sp, #0xe4
	movlo r0, #1
	ldmloia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bxlo lr
	ldr r0, [sp]
	mov sb, #0
	ldr r0, [r0]
	cmp r0, #0xff
	movls r8, #1
	bls _02306060
	cmp r0, #0xff00
	movls r8, #2
	movhi r8, #3
_02306060:
	ldr r0, [sp]
	mov r1, r7
	mov r2, r8
	bl FUN_02305618
	add r1, sb, r8
	ldr r0, _023061DC ; =0x0231CF2C
	add r1, r7, r1
	mov r2, #2
	bl FUN_02305618
	add r0, sp, #0x98
	mov r1, r5
	bl FUN_0230664C
	cmp r4, #0x10000
	beq _02306114
	add r3, sp, #4
	mov r2, #0
	add r0, sp, #0x98
	mov r1, #3
	str r3, [sp, #0xc8]
	str r2, [sp, #0xcc]
	bl FUN_02305B84
	cmp r0, #0
	bne _023060F0
	add sb, sp, #0x98
	mov r8, #3
_023060C4:
	ldr r0, [sp, #0x10]
	cmp r0, #0
	bne _023060DC
	ldr r0, [sp, #8]
	cmp r0, r4
	beq _023060F0
_023060DC:
	mov r0, sb
	mov r1, r8
	bl FUN_02305B84
	cmp r0, #0
	beq _023060C4
_023060F0:
	ldr r0, [sp, #0x14]
	add r1, r7, r6
	add r4, r0, #1
	add r0, sp, #0x18
	mov r2, r4
	sub r1, r1, r4
	bl FUN_02305618
	sub r6, r6, r4
	b _02306124
_02306114:
	add r0, r7, r6
	mov r1, #0
	strb r1, [r0, #-1]
	sub r6, r6, #1
_02306124:
	cmp r5, #0
	beq _023061CC
	add sl, sp, #0x98
	add fp, sp, #4
	mov r4, #3
	mov sb, #0
	mov r8, #0x2f
_02306140:
	ldr r1, [sp, #0xc4]
	mov r0, sl
	bl FUN_0230664C
	add r2, r7, r6
	mov r0, sl
	mov r1, r4
	str fp, [sp, #0xc8]
	str sb, [sp, #0xcc]
	strb r8, [r2, #-1]
	sub r6, r6, #1
	bl FUN_02305B84
	cmp r0, #0
	bne _023061C0
_02306174:
	ldr r0, [sp, #0x10]
	cmp r0, #0
	beq _023061AC
	ldrh r0, [sp, #8]
	cmp r0, r5
	bne _023061AC
	ldr r5, [sp, #0x14]
	add r1, r7, r6
	add r0, sp, #0x18
	mov r2, r5
	sub r1, r1, r5
	bl FUN_02305618
	sub r6, r6, r5
	b _023061C0
_023061AC:
	mov r0, sl
	mov r1, r4
	bl FUN_02305B84
	cmp r0, #0
	beq _02306174
_023061C0:
	ldrh r5, [sp, #0xbc]
	cmp r5, #0
	bne _02306140
_023061CC:
	mov r0, #0
	add sp, sp, #0xe4
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bx lr
	.align 2, 0
_023061DC: .word 0x0231CF2C
	arm_func_end FUN_02305E20

	arm_func_start FUN_023061E0
FUN_023061E0: ; 0x023061E0
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x9c
	mov sl, r0
	ldr r2, [sl, #0x40]
	ldr sb, [sl, #0x3c]
	mov r1, #2
	str r2, [sp]
	bl FUN_02305B84
	ldrb r1, [sb]
	cmp r1, #0
	beq _023063D0
	mov r0, #2
	add fp, sp, #0x1c
	mov r4, #3
	mov r5, #1
	mov r6, #0
	str r0, [sp, #4]
_02306224:
	mov r7, r6
	b _02306230
_0230622C:
	add r7, r7, #1
_02306230:
	ldrb r8, [sb, r7]
	mov r0, r6
	cmp r8, #0
	beq _02306250
	cmp r8, #0x2f
	beq _02306250
	cmp r8, #0x5c
	movne r0, r5
_02306250:
	cmp r0, #0
	bne _0230622C
	cmp r8, #0
	bne _0230626C
	ldr r0, [sp]
	cmp r0, #0
	beq _02306270
_0230626C:
	mov r8, r5
_02306270:
	cmp r7, #0
	addeq sp, sp, #0x9c
	moveq r0, #1
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bxeq lr
	cmp r1, #0x2e
	bne _023062DC
	cmp r7, #1
	addeq sb, sb, #1
	beq _023063B4
	ldrb r0, [sb, #1]
	cmp r7, #2
	moveq r1, r5
	movne r1, r6
	cmp r0, #0x2e
	moveq r0, r5
	movne r0, r6
	ands r0, r1, r0
	beq _023062DC
	ldrh r0, [sl, #0x24]
	cmp r0, #0
	beq _023062D4
	ldr r1, [sl, #0x2c]
	mov r0, sl
	bl FUN_0230664C
_023062D4:
	add sb, sb, #2
	b _023063B4
_023062DC:
	cmp r7, #0x7f
	addgt sp, sp, #0x9c
	movgt r0, #1
	ldmgtia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bxgt lr
	add r0, sp, #8
	str r0, [sl, #0x30]
	str r6, [sl, #0x34]
_023062FC:
	mov r0, sl
	mov r1, r4
	bl FUN_02305B84
	cmp r0, #0
	addne sp, sp, #0x9c
	movne r0, #1
	ldmneia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bxne lr
	ldr r0, [sp, #0x14]
	cmp r8, r0
	bne _023062FC
	ldr r0, [sp, #0x18]
	cmp r7, r0
	bne _023062FC
	mov r0, sb
	mov r1, fp
	mov r2, r7
	bl FUN_0230672C
	cmp r0, #0
	bne _023062FC
	cmp r8, #0
	beq _02306378
	add r0, sp, #8
	add r3, sl, #0x30
	ldmia r0, {r0, r1, r2}
	stmia r3, {r0, r1, r2}
	ldr r1, [sp, #4]
	mov r0, sl
	add sb, sb, r7
	bl FUN_02305B84
	b _023063B4
_02306378:
	ldr r0, [sp]
	cmp r0, #0
	addne sp, sp, #0x9c
	movne r0, #1
	ldmneia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bxne lr
	ldr r3, [sl, #0x44]
	ldr r2, [sp, #8]
	ldr r1, [sp, #0xc]
	add sp, sp, #0x9c
	str r2, [r3]
	str r1, [r3, #4]
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bx lr
_023063B4:
	ldrb r0, [sb]
	cmp r0, #0
	movne r0, r5
	moveq r0, r6
	ldrb r1, [sb, r0]!
	cmp r1, #0
	bne _02306224
_023063D0:
	ldr r0, [sp]
	cmp r0, #0
	moveq r0, #1
	addne r0, sl, #0x20
	ldrne r3, [sl, #0x44]
	ldmneia r0, {r0, r1, r2}
	stmneia r3, {r0, r1, r2}
	movne r0, #0
	add sp, sp, #0x9c
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bx lr
	arm_func_end FUN_023061E0

	arm_func_start FUN_023063FC
FUN_023063FC: ; 0x023063FC
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #0xc
	mov r5, r0
	ldr r4, [r5, #0x30]
	ldr r1, [r5, #8]
	add r0, sp, #4
	str r1, [sp, #4]
	ldr r3, [r5, #0x28]
	add r1, sp, #0
	mov r2, #1
	str r3, [sp, #8]
	bl FUN_02306680
	cmp r0, #0
	addne sp, sp, #0xc
	ldmneia sp!, {r4, r5, lr}
	bxne lr
	ldrb r1, [sp]
	and r2, r1, #0x7f
	mov r1, r1, asr #7
	str r2, [r4, #0x10]
	and r1, r1, #1
	str r1, [r4, #0xc]
	ldr r2, [r4, #0x10]
	cmp r2, #0
	addeq sp, sp, #0xc
	moveq r0, #1
	ldmeqia sp!, {r4, r5, lr}
	bxeq lr
	ldr r1, [r5, #0x34]
	cmp r1, #0
	bne _023064A8
	add r0, sp, #4
	add r1, r4, #0x14
	bl FUN_02306680
	cmp r0, #0
	addne sp, sp, #0xc
	ldmneia sp!, {r4, r5, lr}
	bxne lr
	ldr r1, [r4, #0x10]
	mov r2, #0
	add r1, r4, r1
	strb r2, [r1, #0x14]
	b _023064B4
_023064A8:
	ldr r1, [sp, #8]
	add r1, r1, r2
	str r1, [sp, #8]
_023064B4:
	ldr r1, [r4, #0xc]
	cmp r1, #0
	beq _02306508
	add r0, sp, #4
	add r1, sp, #2
	mov r2, #2
	bl FUN_02306680
	cmp r0, #0
	addne sp, sp, #0xc
	ldmneia sp!, {r4, r5, lr}
	bxne lr
	ldr r2, [r5, #8]
	ldr r1, _02306538 ; =0x00000FFF
	str r2, [r4]
	ldrh r3, [sp, #2]
	mov r2, #0
	and r1, r3, r1
	strh r1, [r4, #4]
	strh r2, [r4, #6]
	str r2, [r4, #8]
	b _02306524
_02306508:
	ldr r1, [r5, #8]
	str r1, [r4]
	ldrh r1, [r5, #0x26]
	str r1, [r4, #4]
	ldrh r1, [r5, #0x26]
	add r1, r1, #1
	strh r1, [r5, #0x26]
_02306524:
	ldr r1, [sp, #8]
	str r1, [r5, #0x28]
	add sp, sp, #0xc
	ldmia sp!, {r4, r5, lr}
	bx lr
	.align 2, 0
_02306538: .word 0x00000FFF
	arm_func_end FUN_023063FC

	arm_func_start FUN_0230653C
FUN_0230653C: ; 0x0230653C
	stmdb sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x10
	mov r6, r0
	ldr r5, [r6, #8]
	add r4, r6, #0x30
	str r5, [sp, #8]
	ldrh r1, [r4, #4]
	ldr r2, [r5, #0x34]
	add r0, sp, #8
	add r3, r2, r1, lsl #3
	add r1, sp, #0
	mov r2, #8
	str r3, [sp, #0xc]
	bl FUN_02306680
	movs r3, r0
	bne _023065C8
	add ip, r6, #0x20
	ldmia r4, {r0, r1, r2}
	stmia ip, {r0, r1, r2}
	ldrh r0, [r4, #6]
	cmp r0, #0
	bne _023065B8
	ldr r0, [r4, #8]
	cmp r0, #0
	bne _023065B8
	ldrh r0, [sp, #4]
	strh r0, [r6, #0x26]
	ldr r1, [r5, #0x34]
	ldr r0, [sp]
	add r0, r1, r0
	str r0, [r6, #0x28]
_023065B8:
	ldrh r1, [sp, #6]
	ldr r0, _023065D8 ; =0x00000FFF
	and r0, r1, r0
	str r0, [r6, #0x2c]
_023065C8:
	mov r0, r3
	add sp, sp, #0x10
	ldmia sp!, {r4, r5, r6, lr}
	bx lr
	.align 2, 0
_023065D8: .word 0x00000FFF
	arm_func_end FUN_0230653C

	arm_func_start FUN_023065DC
FUN_023065DC: ; 0x023065DC
	stmdb sp!, {lr}
	sub sp, sp, #4
	ldr r2, [r0, #0x2c]
	ldr r3, [r0, #0x38]
	ldr lr, [r0, #8]
	ldr r1, [r0, #0x30]
	add ip, r2, r3
	str ip, [r0, #0x2c]
	ldr ip, [lr, #0x4c]
	mov r0, lr
	blx ip
	add sp, sp, #4
	ldmia sp!, {lr}
	bx lr
	arm_func_end FUN_023065DC

	arm_func_start FUN_02306614
FUN_02306614: ; 0x02306614
	stmdb sp!, {lr}
	sub sp, sp, #4
	ldr r2, [r0, #0x2c]
	ldr r3, [r0, #0x38]
	ldr lr, [r0, #8]
	ldr r1, [r0, #0x30]
	add ip, r2, r3
	str ip, [r0, #0x2c]
	ldr ip, [lr, #0x48]
	mov r0, lr
	blx ip
	add sp, sp, #4
	ldmia sp!, {lr}
	bx lr
	arm_func_end FUN_02306614

	arm_func_start FUN_0230664C
FUN_0230664C: ; 0x0230664C
	ldr r3, [r0, #0xc]
	mov r2, #0
	orr r3, r3, #4
	str r3, [r0, #0xc]
	ldr r3, [r0, #8]
	ldr ip, _0230667C ; =FUN_02305B84
	str r3, [r0, #0x30]
	str r2, [r0, #0x38]
	strh r2, [r0, #0x36]
	strh r1, [r0, #0x34]
	mov r1, #2
	bx ip
	.align 2, 0
_0230667C: .word FUN_02305B84
	arm_func_end FUN_0230664C

	arm_func_start FUN_02306680
FUN_02306680: ; 0x02306680
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	mov r7, r0
	ldr r5, [r7]
	mov r6, r2
	ldr r2, [r5, #0x1c]
	mov r0, r5
	orr r2, r2, #0x200
	str r2, [r5, #0x1c]
	ldr r2, [r7, #4]
	ldr r4, [r5, #0x50]
	mov r3, r6
	blx r4
	cmp r0, #0
	beq _023066CC
	cmp r0, #1
	beq _023066CC
	cmp r0, #6
	beq _023066DC
	b _02306718
_023066CC:
	ldr r1, [r5, #0x1c]
	bic r1, r1, #0x200
	str r1, [r5, #0x1c]
	b _02306718
_023066DC:
	bl FUN_02304ED0
	ldr r1, [r5, #0x1c]
	mov r4, r0
	ands r0, r1, #0x200
	beq _02306708
	add r8, r5, #0xc
_023066F4:
	mov r0, r8
	bl FUN_023035DC
	ldr r0, [r5, #0x1c]
	ands r0, r0, #0x200
	bne _023066F4
_02306708:
	mov r0, r4
	bl FUN_02304EE4
	ldr r0, [r5, #0x24]
	ldr r0, [r0, #0x14]
_02306718:
	ldr r1, [r7, #4]
	add r1, r1, r6
	str r1, [r7, #4]
	ldmia sp!, {r4, r5, r6, r7, r8, lr}
	bx lr
	arm_func_end FUN_02306680

	arm_func_start FUN_0230672C
FUN_0230672C: ; 0x0230672C
	stmdb sp!, {lr}
	sub sp, sp, #4
	cmp r2, #0
	mov lr, #0
	bls _02306780
_02306740:
	ldrb ip, [r0, lr]
	ldrb r3, [r1, lr]
	sub ip, ip, #0x41
	cmp ip, #0x19
	sub r3, r3, #0x41
	addls ip, ip, #0x20
	cmp r3, #0x19
	addls r3, r3, #0x20
	cmp ip, r3
	addne sp, sp, #4
	subne r0, ip, r3
	ldmneia sp!, {lr}
	bxne lr
	add lr, lr, #1
	cmp lr, r2
	blo _02306740
_02306780:
	mov r0, #0
	add sp, sp, #4
	ldmia sp!, {lr}
	bx lr
	arm_func_end FUN_0230672C

	arm_func_start FUN_02306790
FUN_02306790: ; 0x02306790
	stmdb sp!, {r4, r5, r6, lr}
	mov r4, r0
	ldr r0, [r4, #0x1c]
	mov r6, r1
	ands r0, r0, #0x100
	beq _023067DC
	ldr r2, [r4, #0x1c]
	ldr r0, [r4, #0x24]
	bic r2, r2, #0x100
	str r2, [r4, #0x1c]
	bl FUN_02305D00
	mov r0, r4
	bl FUN_02306DC4
	cmp r0, #0
	ldmeqia sp!, {r4, r5, r6, lr}
	bxeq lr
	bl FUN_02306D20
	ldmia sp!, {r4, r5, r6, lr}
	bx lr
_023067DC:
	ldr r5, [r4, #0x24]
	bl FUN_02304ED0
	str r6, [r5, #0x14]
	ldr r1, [r4, #0x1c]
	mov r5, r0
	bic r1, r1, #0x200
	add r0, r4, #0xc
	str r1, [r4, #0x1c]
	bl FUN_0230355C
	mov r0, r5
	bl FUN_02304EE4
	ldmia sp!, {r4, r5, r6, lr}
	bx lr
	arm_func_end FUN_02306790

	arm_func_start FUN_02306810
FUN_02306810: ; 0x02306810
	cmp r2, #0
	moveq r1, #0
	beq _02306824
	cmp r1, #0
	moveq r2, #0
_02306824:
	str r1, [r0, #0x54]
	str r2, [r0, #0x58]
	bx lr
	arm_func_end FUN_02306810

	arm_func_start FUN_02306830
FUN_02306830: ; 0x02306830
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0x4c
	mov r7, r0
	ldr r3, [r7, #0x30]
	ldr r0, [r7, #0x38]
	mov r6, r1
	add r0, r3, r0
	add r0, r0, #0x20
	add r0, r0, #0x1f
	bic r5, r0, #0x1f
	cmp r5, r2
	bhi _02306948
	add r1, r6, #0x1f
	add r0, sp, #4
	bic r4, r1, #0x1f
	bl FUN_023072A0
	ldr r2, [r7, #0x2c]
	mvn r0, #0
	str r0, [sp]
	ldr r3, [r7, #0x30]
	add r0, sp, #4
	mov r1, r7
	add r3, r2, r3
	bl FUN_023071C0
	cmp r0, #0
	beq _023068C8
	ldr r2, [r7, #0x30]
	add r0, sp, #4
	mov r1, r4
	bl FUN_02307098
	cmp r0, #0
	bge _023068C0
	ldr r2, [r7, #0x30]
	mov r0, r4
	mov r1, #0
	bl FUN_02305584
_023068C0:
	add r0, sp, #4
	bl FUN_02307178
_023068C8:
	str r4, [r7, #0x2c]
	ldr ip, [r7, #0x30]
	ldr r2, [r7, #0x34]
	mvn r0, #0
	str r0, [sp]
	ldr r3, [r7, #0x38]
	add r0, sp, #4
	mov r1, r7
	add r3, r2, r3
	add r4, r4, ip
	bl FUN_023071C0
	cmp r0, #0
	beq _0230692C
	ldr r2, [r7, #0x38]
	add r0, sp, #4
	mov r1, r4
	bl FUN_02307098
	cmp r0, #0
	bge _02306924
	ldr r2, [r7, #0x38]
	mov r0, r4
	mov r1, #0
	bl FUN_02305584
_02306924:
	add r0, sp, #4
	bl FUN_02307178
_0230692C:
	str r4, [r7, #0x34]
	ldr r0, _02306958 ; =FUN_02306FBC
	str r6, [r7, #0x44]
	str r0, [r7, #0x50]
	ldr r0, [r7, #0x1c]
	orr r0, r0, #4
	str r0, [r7, #0x1c]
_02306948:
	mov r0, r5
	add sp, sp, #0x4c
	ldmia sp!, {r4, r5, r6, r7, lr}
	bx lr
	.align 2, 0
_02306958: .word FUN_02306FBC
	arm_func_end FUN_02306830

	arm_func_start FUN_0230695C
FUN_0230695C: ; 0x0230695C
	str r1, [r0, #0x28]
	str r3, [r0, #0x30]
	str r2, [r0, #0x3c]
	ldr r1, [r0, #0x3c]
	ldr r2, [sp, #4]
	str r1, [r0, #0x2c]
	str r2, [r0, #0x38]
	ldr r1, [sp]
	ldr r2, [sp, #8]
	str r1, [r0, #0x40]
	ldr r1, [r0, #0x40]
	cmp r2, #0
	str r1, [r0, #0x34]
	ldreq r2, _023069CC ; =FUN_0230700C
	ldr r1, [sp, #0xc]
	str r2, [r0, #0x48]
	cmp r1, #0
	ldreq r1, _023069D0 ; =FUN_02306FE0
	str r1, [r0, #0x4c]
	ldr r2, [r0, #0x48]
	mov r1, #0
	str r2, [r0, #0x50]
	str r1, [r0, #0x44]
	ldr r1, [r0, #0x1c]
	orr r1, r1, #2
	str r1, [r0, #0x1c]
	mov r0, #1
	bx lr
	.align 2, 0
_023069CC: .word FUN_0230700C
_023069D0: .word FUN_02306FE0
	arm_func_end FUN_0230695C

	arm_func_start FUN_023069D4
FUN_023069D4: ; 0x023069D4
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	mov r6, r1
	mov r5, r2
	mov r7, r0
	mov r8, #0
	bl FUN_02304ED0
	mov r4, r0
	mov r0, r6
	mov r1, r5
	bl FUN_02306A94
	cmp r0, #0
	bne _02306A78
	ldr r1, _02306A8C ; =0x0234679C
	ldr r2, [r1]
	cmp r2, #0
	bne _02306A34
	ldr r0, _02306A90 ; =0x023467A0
	mov r2, r8
	str r7, [r1]
	str r7, [r0]
	str r2, [r0, #8]
	strh r2, [r0, #6]
	strh r2, [r0, #4]
	b _02306A58
_02306A34:
	ldr r0, [r2, #4]
	cmp r0, #0
	beq _02306A50
_02306A40:
	mov r2, r0
	ldr r0, [r0, #4]
	cmp r0, #0
	bne _02306A40
_02306A50:
	str r7, [r2, #4]
	str r2, [r7, #8]
_02306A58:
	mov r0, r6
	mov r1, r5
	bl FUN_02307034
	str r0, [r7]
	ldr r0, [r7, #0x1c]
	mov r8, #1
	orr r0, r0, #1
	str r0, [r7, #0x1c]
_02306A78:
	mov r0, r4
	bl FUN_02304EE4
	mov r0, r8
	ldmia sp!, {r4, r5, r6, r7, r8, lr}
	bx lr
	.align 2, 0
_02306A8C: .word 0x0234679C
_02306A90: .word 0x023467A0
	arm_func_end FUN_023069D4

	arm_func_start FUN_02306A94
FUN_02306A94: ; 0x02306A94
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	bl FUN_02307034
	mov r5, r0
	bl FUN_02304ED0
	ldr r1, _02306AE0 ; =0x0234679C
	ldr r4, [r1]
	b _02306AB8
_02306AB4:
	ldr r4, [r4, #4]
_02306AB8:
	cmp r4, #0
	beq _02306ACC
	ldr r1, [r4]
	cmp r1, r5
	bne _02306AB4
_02306ACC:
	bl FUN_02304EE4
	mov r0, r4
	add sp, sp, #4
	ldmia sp!, {r4, r5, lr}
	bx lr
	.align 2, 0
_02306AE0: .word 0x0234679C
	arm_func_end FUN_02306A94

	arm_func_start FUN_02306AE4
FUN_02306AE4: ; 0x02306AE4
	stmdb sp!, {r4, lr}
	mov r1, #0
	mov r2, #0x5c
	mov r4, r0
	bl FUN_02305584
	mov r1, #0
	str r1, [r4, #0x10]
	ldr r0, [r4, #0x10]
	str r0, [r4, #0xc]
	str r1, [r4, #0x18]
	ldr r0, [r4, #0x18]
	str r0, [r4, #0x14]
	ldmia sp!, {r4, lr}
	bx lr
	arm_func_end FUN_02306AE4

	arm_func_start FUN_02306B1C
FUN_02306B1C: ; 0x02306B1C
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #4
	mov r7, r0
	ldr r6, [r7, #8]
	mov r2, #1
	str r1, [r7, #0x10]
	mov r0, #2
	str r0, [r7, #0x14]
	ldr r0, [r7, #0xc]
	mov r5, r2, lsl r1
	orr r0, r0, #1
	str r0, [r7, #0xc]
	bl FUN_02304ED0
	ldr r1, [r6, #0x1c]
	mov r4, r0
	ands r0, r1, #0x80
	beq _02306B84
	mov r0, r7
	mov r1, #3
	bl FUN_02305D00
	mov r0, r4
	bl FUN_02304EE4
	add sp, sp, #4
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, lr}
	bx lr
_02306B84:
	ands r0, r5, #0x1fc
	ldrne r0, [r7, #0xc]
	add r2, r6, #0x20
	orrne r0, r0, #4
	strne r0, [r7, #0xc]
	ldr r1, [r7]
	ldr r0, [r7, #4]
	cmp r1, #0
	strne r0, [r1, #4]
	cmp r0, #0
	strne r1, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	beq _02306BCC
_02306BBC:
	mov r2, r0
	ldr r0, [r0, #4]
	cmp r0, #0
	bne _02306BBC
_02306BCC:
	str r7, [r2, #4]
	str r2, [r7]
	mov r1, #0
	str r1, [r7, #4]
	ldr r0, [r6, #0x1c]
	ands r0, r0, #8
	movne r1, #1
	cmp r1, #0
	bne _02306C78
	ldr r0, [r6, #0x1c]
	ands r0, r0, #0x10
	bne _02306C78
	ldr r1, [r6, #0x1c]
	mov r0, r4
	orr r1, r1, #0x10
	str r1, [r6, #0x1c]
	bl FUN_02304EE4
	ldr r0, [r6, #0x58]
	ands r0, r0, #0x200
	beq _02306C2C
	ldr r2, [r6, #0x54]
	mov r0, r7
	mov r1, #9
	blx r2
_02306C2C:
	bl FUN_02304ED0
	ldr r1, [r7, #0xc]
	orr r1, r1, #0x40
	str r1, [r7, #0xc]
	ldr r1, [r7, #0xc]
	ands r1, r1, #4
	movne r1, #1
	moveq r1, #0
	cmp r1, #0
	bne _02306C70
	bl FUN_02304EE4
	mov r0, r7
	bl FUN_02306D20
	add sp, sp, #4
	mov r0, #1
	ldmia sp!, {r4, r5, r6, r7, lr}
	bx lr
_02306C70:
	bl FUN_02304EE4
	b _02306CC4
_02306C78:
	ldr r0, [r7, #0xc]
	ands r0, r0, #4
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	bne _02306CA8
	mov r0, r4
	bl FUN_02304EE4
	add sp, sp, #4
	mov r0, #1
	ldmia sp!, {r4, r5, r6, r7, lr}
	bx lr
_02306CA8:
	add r0, r7, #0x18
	bl FUN_023035DC
	ldr r0, [r7, #0xc]
	ands r0, r0, #0x40
	beq _02306CA8
	mov r0, r4
	bl FUN_02304EE4
_02306CC4:
	mov r0, r7
	bl FUN_02306CD8
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, lr}
	bx lr
	arm_func_end FUN_02306B1C

	arm_func_start FUN_02306CD8
FUN_02306CD8: ; 0x02306CD8
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r1, [r4, #0x10]
	bl FUN_02305B84
	mov r1, r0
	mov r0, r4
	bl FUN_02305D00
	ldr r0, [r4, #8]
	bl FUN_02306DC4
	cmp r0, #0
	beq _02306D08
	bl FUN_02306D20
_02306D08:
	ldr r0, [r4, #0x14]
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	ldmia sp!, {r4, lr}
	bx lr
	arm_func_end FUN_02306CD8

	arm_func_start FUN_02306D20
FUN_02306D20: ; 0x02306D20
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	movs r6, r0
	ldr r5, [r6, #8]
	ldmeqia sp!, {r4, r5, r6, r7, r8, lr}
	bxeq lr
	mov r7, #0
	mov r8, #1
_02306D3C:
	bl FUN_02304ED0
	ldr r1, [r6, #0xc]
	mov r4, r0
	orr r0, r1, #0x40
	str r0, [r6, #0xc]
	ldr r0, [r6, #0xc]
	ands r0, r0, #4
	movne r0, r8
	moveq r0, r7
	cmp r0, #0
	beq _02306D80
	add r0, r6, #0x18
	bl FUN_0230355C
	mov r0, r4
	bl FUN_02304EE4
	ldmia sp!, {r4, r5, r6, r7, r8, lr}
	bx lr
_02306D80:
	ldr r1, [r6, #0xc]
	mov r0, r4
	orr r1, r1, #8
	str r1, [r6, #0xc]
	bl FUN_02304EE4
	ldr r1, [r6, #0x10]
	mov r0, r6
	bl FUN_02305B84
	cmp r0, #6
	ldmeqia sp!, {r4, r5, r6, r7, r8, lr}
	bxeq lr
	mov r0, r5
	bl FUN_02306DC4
	movs r6, r0
	bne _02306D3C
	ldmia sp!, {r4, r5, r6, r7, r8, lr}
	bx lr
	arm_func_end FUN_02306D20

	arm_func_start FUN_02306DC4
FUN_02306DC4: ; 0x02306DC4
	stmdb sp!, {r4, r5, r6, r7, r8, sb, lr}
	sub sp, sp, #0x4c
	mov r6, r0
	bl FUN_02304ED0
	ldr r1, [r6, #0x1c]
	mov r5, r0
	ands r0, r1, #0x20
	beq _02306E4C
	ldr r0, [r6, #0x1c]
	bic r0, r0, #0x20
	str r0, [r6, #0x1c]
	ldr r0, [r6, #0x24]
	cmp r0, #0
	beq _02306E4C
	mov r8, #0
	mov sb, #1
	mov r7, #3
_02306E08:
	ldr r1, [r0, #0xc]
	ldr r4, [r0, #4]
	ands r1, r1, #2
	movne r1, sb
	moveq r1, r8
	cmp r1, #0
	beq _02306E40
	ldr r1, [r6, #0x24]
	cmp r1, r0
	mov r1, r7
	streq r4, [r6, #0x24]
	bl FUN_02305D00
	cmp r4, #0
	ldreq r4, [r6, #0x24]
_02306E40:
	mov r0, r4
	cmp r4, #0
	bne _02306E08
_02306E4C:
	ldr r0, [r6, #0x1c]
	ands r0, r0, #0x40
	bne _02306F38
	ldr r0, [r6, #0x1c]
	ands r0, r0, #8
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	bne _02306F38
	ldr r4, [r6, #0x24]
	cmp r4, #0
	beq _02306F38
	ldr r0, [r6, #0x1c]
	ands r0, r0, #0x10
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	moveq r7, #1
	movne r7, #0
	cmp r7, #0
	ldrne r0, [r6, #0x1c]
	orrne r0, r0, #0x10
	strne r0, [r6, #0x1c]
	mov r0, r5
	bl FUN_02304EE4
	cmp r7, #0
	beq _02306ED4
	ldr r0, [r6, #0x58]
	ands r0, r0, #0x200
	beq _02306ED4
	ldr r2, [r6, #0x54]
	mov r0, r4
	mov r1, #9
	blx r2
_02306ED4:
	bl FUN_02304ED0
	ldr r1, [r4, #0xc]
	mov r5, r0
	orr r0, r1, #0x40
	str r0, [r4, #0xc]
	ldr r0, [r4, #0xc]
	ands r0, r0, #4
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	beq _02306F20
	add r0, r4, #0x18
	bl FUN_0230355C
	mov r0, r5
	bl FUN_02304EE4
	add sp, sp, #0x4c
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, sb, lr}
	bx lr
_02306F20:
	mov r0, r5
	bl FUN_02304EE4
	add sp, sp, #0x4c
	mov r0, r4
	ldmia sp!, {r4, r5, r6, r7, r8, sb, lr}
	bx lr
_02306F38:
	ldr r0, [r6, #0x1c]
	ands r0, r0, #0x10
	beq _02306F78
	ldr r0, [r6, #0x1c]
	bic r0, r0, #0x10
	str r0, [r6, #0x1c]
	ldr r0, [r6, #0x58]
	ands r0, r0, #0x400
	beq _02306F78
	add r0, sp, #0
	bl FUN_023072A0
	str r6, [sp, #8]
	ldr r2, [r6, #0x54]
	add r0, sp, #0
	mov r1, #0xa
	blx r2
_02306F78:
	ldr r0, [r6, #0x1c]
	ands r0, r0, #0x40
	beq _02306FA4
	ldr r1, [r6, #0x1c]
	add r0, r6, #0x14
	bic r1, r1, #0x40
	str r1, [r6, #0x1c]
	ldr r1, [r6, #0x1c]
	orr r1, r1, #8
	str r1, [r6, #0x1c]
	bl FUN_0230355C
_02306FA4:
	mov r0, r5
	bl FUN_02304EE4
	mov r0, #0
	add sp, sp, #0x4c
	ldmia sp!, {r4, r5, r6, r7, r8, sb, lr}
	bx lr
	arm_func_end FUN_02306DC4

	arm_func_start FUN_02306FBC
FUN_02306FBC: ; 0x02306FBC
	stmdb sp!, {lr}
	sub sp, sp, #4
	mov r0, r2
	mov r2, r3
	bl FUN_02305618
	mov r0, #0
	add sp, sp, #4
	ldmia sp!, {lr}
	bx lr
	arm_func_end FUN_02306FBC

	arm_func_start FUN_02306FE0
FUN_02306FE0: ; 0x02306FE0
	stmdb sp!, {lr}
	sub sp, sp, #4
	ldr ip, [r0, #0x28]
	mov r0, r1
	add r1, ip, r2
	mov r2, r3
	bl FUN_02305618
	mov r0, #0
	add sp, sp, #4
	ldmia sp!, {lr}
	bx lr
	arm_func_end FUN_02306FE0

	arm_func_start FUN_0230700C
FUN_0230700C: ; 0x0230700C
	stmdb sp!, {lr}
	sub sp, sp, #4
	ldr r0, [r0, #0x28]
	add r0, r0, r2
	mov r2, r3
	bl FUN_02305618
	mov r0, #0
	add sp, sp, #4
	ldmia sp!, {lr}
	bx lr
	arm_func_end FUN_0230700C

	arm_func_start FUN_02307034
FUN_02307034: ; 0x02307034
	stmdb sp!, {lr}
	sub sp, sp, #4
	cmp r1, #3
	mov lr, #0
	bgt _02307088
	mov ip, lr
	cmp r1, #0
	ble _02307088
	mov r3, lr
_02307058:
	ldrb r2, [r0, ip]
	cmp r2, #0
	beq _02307088
	sub r2, r2, #0x41
	cmp r2, #0x19
	addls r2, r2, #0x61
	addhi r2, r2, #0x41
	add ip, ip, #1
	orr lr, lr, r2, lsl r3
	cmp ip, r1
	add r3, r3, #8
	blt _02307058
_02307088:
	mov r0, lr
	add sp, sp, #4
	ldmia sp!, {lr}
	bx lr
	arm_func_end FUN_02307034

	arm_func_start FUN_02307098
FUN_02307098: ; 0x02307098
	ldr ip, _023070A4 ; =FUN_02307218
	mov r3, #0
	bx ip
	.align 2, 0
_023070A4: .word FUN_02307218
	arm_func_end FUN_02307098

	arm_func_start FUN_023070A8
FUN_023070A8: ; 0x023070A8
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #4
	mov r6, r0
	mov r5, #0
	bl FUN_02304ED0
	ldr r1, [r6, #0xc]
	mov r4, r0
	ands r0, r1, #1
	movne r0, #1
	moveq r0, r5
	cmp r0, #0
	beq _02307138
	ldr r0, [r6, #0xc]
	ands r0, r0, #0x44
	moveq r5, #1
	movne r5, #0
	cmp r5, #0
	beq _02307118
	ldr r0, [r6, #0xc]
	orr r0, r0, #4
	str r0, [r6, #0xc]
	add r7, r6, #0x18
_02307100:
	mov r0, r7
	bl FUN_023035DC
	ldr r0, [r6, #0xc]
	ands r0, r0, #0x40
	beq _02307100
	b _02307138
_02307118:
	add r0, r6, #0x18
	bl FUN_023035DC
	ldr r0, [r6, #0xc]
	ands r0, r0, #1
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	bne _02307118
_02307138:
	mov r0, r4
	bl FUN_02304EE4
	cmp r5, #0
	beq _0230715C
	mov r0, r6
	bl FUN_02306CD8
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, lr}
	bx lr
_0230715C:
	ldr r0, [r6, #0x14]
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, lr}
	bx lr
	arm_func_end FUN_023070A8

	arm_func_start FUN_02307178
FUN_02307178: ; 0x02307178
	stmdb sp!, {r4, lr}
	mov r1, #8
	mov r4, r0
	bl FUN_02306B1C
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r4, lr}
	bxeq lr
	mov r0, #0
	str r0, [r4, #8]
	mov r0, #0xe
	str r0, [r4, #0x10]
	ldr r1, [r4, #0xc]
	mov r0, #1
	bic r1, r1, #0x30
	str r1, [r4, #0xc]
	ldmia sp!, {r4, lr}
	bx lr
	arm_func_end FUN_02307178

	arm_func_start FUN_023071C0
FUN_023071C0: ; 0x023071C0
	stmdb sp!, {r4, lr}
	mov r4, r0
	str r1, [r4, #8]
	ldr ip, [sp, #8]
	mov r1, #7
	str ip, [r4, #0x38]
	str r2, [r4, #0x30]
	str r3, [r4, #0x34]
	bl FUN_02306B1C
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r4, lr}
	bxeq lr
	ldr r1, [r4, #0xc]
	mov r0, #1
	orr r1, r1, #0x10
	str r1, [r4, #0xc]
	ldr r1, [r4, #0xc]
	bic r1, r1, #0x20
	str r1, [r4, #0xc]
	ldmia sp!, {r4, lr}
	bx lr
	arm_func_end FUN_023071C0

	arm_func_start FUN_02307218
FUN_02307218: ; 0x02307218
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #4
	mov r7, r0
	ldr r4, [r7, #0x2c]
	ldr r0, [r7, #0x28]
	mov r6, r2
	str r1, [r7, #0x30]
	sub r0, r0, r4
	cmp r6, r0
	movgt r6, r0
	cmp r6, #0
	movlt r6, #0
	str r2, [r7, #0x34]
	mov r5, r3
	str r6, [r7, #0x38]
	cmp r5, #0
	ldreq r0, [r7, #0xc]
	mov r1, #0
	orreq r0, r0, #4
	streq r0, [r7, #0xc]
	mov r0, r7
	bl FUN_02306B1C
	cmp r5, #0
	bne _02307290
	mov r0, r7
	bl FUN_023070A8
	cmp r0, #0
	ldrne r0, [r7, #0x2c]
	subne r6, r0, r4
	mvneq r6, #0
_02307290:
	mov r0, r6
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, lr}
	bx lr
	arm_func_end FUN_02307218

	arm_func_start FUN_023072A0
FUN_023072A0: ; 0x023072A0
	mov r3, #0
	str r3, [r0]
	ldr r2, [r0]
	mov r1, #0xe
	str r2, [r0, #4]
	str r3, [r0, #0x1c]
	ldr r2, [r0, #0x1c]
	str r2, [r0, #0x18]
	str r3, [r0, #8]
	str r1, [r0, #0x10]
	str r3, [r0, #0xc]
	bx lr
	arm_func_end FUN_023072A0

	arm_func_start FUN_023072D0
FUN_023072D0: ; 0x023072D0
	ldr r0, _023072DC ; =0x023467AC
	ldr r0, [r0]
	bx lr
	.align 2, 0
_023072DC: .word 0x023467AC
	arm_func_end FUN_023072D0

	arm_func_start FUN_023072E0
FUN_023072E0: ; 0x023072E0
	stmdb sp!, {lr}
	sub sp, sp, #4
	ldr r1, _02307318 ; =0x023467AC
	ldr r2, [r1]
	cmp r2, #0
	addne sp, sp, #4
	ldmneia sp!, {lr}
	bxne lr
	mov r2, #1
	str r2, [r1]
	bl FUN_0230733C
	add sp, sp, #4
	ldmia sp!, {lr}
	bx lr
	.align 2, 0
_02307318: .word 0x023467AC
	arm_func_end FUN_023072E0

	arm_func_start FUN_0230731C
FUN_0230731C: ; 0x0230731C
	ldr ip, _02307334 ; =FUN_02306830
	mov r3, r0
	mov r2, r1
	ldr r0, _02307338 ; =0x023467C8
	mov r1, r3
	bx ip
	.align 2, 0
_02307334: .word FUN_02306830
_02307338: .word 0x023467C8
	arm_func_end FUN_0230731C

	arm_func_start FUN_0230733C
FUN_0230733C: ; 0x0230733C
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #0x14
	ldr r1, _023074A0 ; =0x023467B4
	str r0, [r1]
	bl FUN_02302FB4
	ldr r3, _023074A4 ; =0x023467B0
	ldr r2, _023074A8 ; =0x023467B8
	mov ip, #0
	ldr r1, _023074AC ; =0x023467C0
	str r0, [r3]
	str ip, [r2]
	str ip, [r2, #4]
	str ip, [r1]
	str ip, [r1, #4]
	bl FUN_02309270
	ldr r0, _023074B0 ; =0x023467C8
	bl FUN_02306AE4
	ldr r0, _023074B0 ; =0x023467C8
	ldr r1, _023074B4 ; =0x0231CF30
	mov r2, #3
	bl FUN_023069D4
	ldr r0, _023074B8 ; =0x027FFC40
	ldrh r0, [r0]
	cmp r0, #2
	bne _02307404
	ldr ip, _023074A8 ; =0x023467B8
	mvn r2, #0
	ldr r3, _023074AC ; =0x023467C0
	mov lr, #0
	ldr r0, _023074B0 ; =0x023467C8
	ldr r1, _023074BC ; =FUN_023074DC
	str r2, [ip]
	str lr, [ip, #4]
	str r2, [r3]
	str lr, [r3, #4]
	bl FUN_02306810
	mov r1, #0
	str r1, [sp]
	ldr r0, _023074C0 ; =FUN_023074E4
	str r1, [sp, #4]
	str r0, [sp, #8]
	ldr ip, _023074C4 ; =FUN_0230757C
	ldr r0, _023074B0 ; =0x023467C8
	mov r2, r1
	mov r3, r1
	str ip, [sp, #0xc]
	bl FUN_0230695C
	add sp, sp, #0x14
	ldmia sp!, {r4, r5, lr}
	bx lr
_02307404:
	ldr r5, _023074C8 ; =0x027FFE40
	ldr r0, _023074B0 ; =0x023467C8
	ldr r1, _023074CC ; =FUN_023074EC
	ldr r2, _023074D0 ; =0x00000602
	ldr r4, _023074D4 ; =0x027FFE48
	bl FUN_02306810
	ldr r1, [r5]
	mvn r0, #0
	cmp r1, r0
	addeq sp, sp, #0x14
	ldmeqia sp!, {r4, r5, lr}
	bxeq lr
	cmp r1, #0
	addeq sp, sp, #0x14
	ldmeqia sp!, {r4, r5, lr}
	bxeq lr
	ldr r2, [r4]
	cmp r2, r0
	addeq sp, sp, #0x14
	ldmeqia sp!, {r4, r5, lr}
	bxeq lr
	cmp r2, #0
	addeq sp, sp, #0x14
	ldmeqia sp!, {r4, r5, lr}
	bxeq lr
	str r1, [sp]
	ldr r0, [r5, #4]
	ldr r1, _023074D8 ; =FUN_02307584
	str r0, [sp, #4]
	ldr r0, _023074C4 ; =FUN_0230757C
	str r1, [sp, #8]
	str r0, [sp, #0xc]
	ldr r3, [r4, #4]
	ldr r0, _023074B0 ; =0x023467C8
	mov r1, #0
	bl FUN_0230695C
	add sp, sp, #0x14
	ldmia sp!, {r4, r5, lr}
	bx lr
	.align 2, 0
_023074A0: .word 0x023467B4
_023074A4: .word 0x023467B0
_023074A8: .word 0x023467B8
_023074AC: .word 0x023467C0
_023074B0: .word 0x023467C8
_023074B4: .word 0x0231CF30
_023074B8: .word 0x027FFC40
_023074BC: .word FUN_023074DC
_023074C0: .word FUN_023074E4
_023074C4: .word FUN_0230757C
_023074C8: .word 0x027FFE40
_023074CC: .word FUN_023074EC
_023074D0: .word 0x00000602
_023074D4: .word 0x027FFE48
_023074D8: .word FUN_02307584
	arm_func_end FUN_0230733C

	arm_func_start FUN_023074DC
FUN_023074DC: ; 0x023074DC
	mov r0, #4
	bx lr
	arm_func_end FUN_023074DC

	arm_func_start FUN_023074E4
FUN_023074E4: ; 0x023074E4
	mov r0, #1
	bx lr
	arm_func_end FUN_023074E4

	arm_func_start FUN_023074EC
FUN_023074EC: ; 0x023074EC
	stmdb sp!, {lr}
	sub sp, sp, #4
	cmp r1, #1
	beq _02307558
	cmp r1, #9
	beq _02307510
	cmp r1, #0xa
	beq _02307534
	b _02307568
_02307510:
	ldr r0, _02307578 ; =0x023467B0
	ldr r0, [r0]
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	bl FUN_02308F08
	add sp, sp, #4
	mov r0, #0
	ldmia sp!, {lr}
	bx lr
_02307534:
	ldr r0, _02307578 ; =0x023467B0
	ldr r0, [r0]
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	bl FUN_02308EE8
	add sp, sp, #4
	mov r0, #0
	ldmia sp!, {lr}
	bx lr
_02307558:
	add sp, sp, #4
	mov r0, #4
	ldmia sp!, {lr}
	bx lr
_02307568:
	mov r0, #8
	add sp, sp, #4
	ldmia sp!, {lr}
	bx lr
	.align 2, 0
_02307578: .word 0x023467B0
	arm_func_end FUN_023074EC

	arm_func_start FUN_0230757C
FUN_0230757C: ; 0x0230757C
	mov r0, #1
	bx lr
	arm_func_end FUN_0230757C

	arm_func_start FUN_02307584
FUN_02307584: ; 0x02307584
	stmdb sp!, {lr}
	sub sp, sp, #0xc
	ldr ip, _023075C8 ; =FUN_023075D0
	mov lr, r1
	str ip, [sp]
	str r0, [sp, #4]
	mov r1, #1
	ldr r0, _023075CC ; =0x023467B4
	str r1, [sp, #8]
	mov r1, r2
	ldr r0, [r0]
	mov r2, lr
	bl FUN_023092F4
	mov r0, #6
	add sp, sp, #0xc
	ldmia sp!, {lr}
	bx lr
	.align 2, 0
_023075C8: .word FUN_023075D0
_023075CC: .word 0x023467B4
	arm_func_end FUN_02307584

	arm_func_start FUN_023075D0
FUN_023075D0: ; 0x023075D0
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl FUN_02309CFC
	cmp r0, #0
	movne r1, #5
	moveq r1, #0
	mov r0, r4
	bl FUN_02306790
	ldmia sp!, {r4, lr}
	bx lr
	arm_func_end FUN_023075D0

	arm_func_start FUN_023075F8
FUN_023075F8: ; 0x023075F8
	stmdb sp!, {r0, r1, r2, r3}
	stmdb sp!, {r4, r5, r6, lr}
	ldr r0, [sp, #0x10]
	mov r6, r1
	ldr r3, [r0, #0x1c]
	add r5, r0, #0x20
	ands r1, r3, #3
	mov r0, r3, asr #2
	moveq r1, #0
	streq r1, [r5, r0, lsl #2]
	ldr r2, [sp, #0x10]
	mov r1, #0x80
	add r4, r2, #0x20
	strb r1, [r4, r3]
	add r3, r3, #1
	ands r1, r3, #3
	beq _02307650
	mov r2, #0
_02307640:
	strb r2, [r4, r3]
	add r3, r3, #1
	ands r1, r3, #3
	bne _02307640
_02307650:
	ldr r1, [sp, #0x10]
	add r0, r0, #1
	ldr r1, [r1, #0x1c]
	cmp r1, #0x38
	blt _0230769C
	cmp r0, #0x10
	bge _02307680
	mov r1, #0
_02307670:
	str r1, [r5, r0, lsl #2]
	add r0, r0, #1
	cmp r0, #0x10
	blt _02307670
_02307680:
	ldr r1, _023077F0 ; =0x0231CF34
	ldr r0, [sp, #0x10]
	ldr r3, [r1]
	mov r1, r5
	mov r2, #0x40
	blx r3
	mov r0, #0
_0230769C:
	cmp r0, #0xe
	bge _023076B8
	mov r1, #0
_023076A8:
	str r1, [r5, r0, lsl #2]
	add r0, r0, #1
	cmp r0, #0xe
	blt _023076A8
_023076B8:
	ldr r0, [sp, #0x10]
	mov r1, r5
	ldr r2, [r0, #0x14]
	ldr r3, _023077F0 ; =0x0231CF34
	strb r2, [r4, #0x3f]
	mov r0, r2, lsr #8
	strb r0, [r4, #0x3e]
	mov r0, r2, lsr #0x10
	strb r0, [r4, #0x3d]
	mov r0, r2, lsr #0x18
	strb r0, [r4, #0x3c]
	ldr r0, [sp, #0x10]
	mov r2, #0x40
	ldr r5, [r0, #0x18]
	strb r5, [r4, #0x3b]
	mov r0, r5, lsr #8
	strb r0, [r4, #0x3a]
	mov r0, r5, lsr #0x10
	strb r0, [r4, #0x39]
	mov r0, r5, lsr #0x18
	strb r0, [r4, #0x38]
	ldr r0, [sp, #0x10]
	ldr r3, [r3]
	blx r3
	ldr r0, [sp, #0x10]
	add r1, sp, #0x10
	ldr r3, [r0]
	mov r0, #0
	mov r2, r3, lsr #0x18
	strb r2, [r6]
	mov r2, r3, lsr #0x10
	strb r2, [r6, #1]
	mov r2, r3, lsr #8
	strb r2, [r6, #2]
	strb r3, [r6, #3]
	ldr r3, [sp, #0x10]
	mov r2, #4
	ldr r4, [r3, #4]
	mov r3, r4, lsr #0x18
	strb r3, [r6, #4]
	mov r3, r4, lsr #0x10
	strb r3, [r6, #5]
	mov r3, r4, lsr #8
	strb r3, [r6, #6]
	strb r4, [r6, #7]
	ldr r3, [sp, #0x10]
	ldr r4, [r3, #8]
	mov r3, r4, lsr #0x18
	strb r3, [r6, #8]
	mov r3, r4, lsr #0x10
	strb r3, [r6, #9]
	mov r3, r4, lsr #8
	strb r3, [r6, #0xa]
	strb r4, [r6, #0xb]
	ldr r3, [sp, #0x10]
	ldr r4, [r3, #0xc]
	mov r3, r4, lsr #0x18
	strb r3, [r6, #0xc]
	mov r3, r4, lsr #0x10
	strb r3, [r6, #0xd]
	mov r3, r4, lsr #8
	strb r3, [r6, #0xe]
	strb r4, [r6, #0xf]
	ldr r3, [sp, #0x10]
	ldr r4, [r3, #0x10]
	mov r3, r4, lsr #0x18
	strb r3, [r6, #0x10]
	mov r3, r4, lsr #0x10
	strb r3, [r6, #0x11]
	mov r3, r4, lsr #8
	strb r3, [r6, #0x12]
	strb r4, [r6, #0x13]
	ldr r3, [sp, #0x10]
	str r0, [r3, #0x1c]
	bl FUN_0230550C
	ldmia sp!, {r4, r5, r6, lr}
	add sp, sp, #0x10
	bx lr
	.align 2, 0
_023077F0: .word 0x0231CF34
	arm_func_end FUN_023075F8

	arm_func_start FUN_023077F4
FUN_023077F4: ; 0x023077F4
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	mov r8, r0
	movs r6, r2
	mov r7, r1
	add r5, r8, #0x20
	ldmeqia sp!, {r4, r5, r6, r7, r8, lr}
	bxeq lr
	ldr r0, [r8, #0x14]
	add r1, r0, r6, lsl #3
	cmp r1, r0
	ldrlo r0, [r8, #0x18]
	addlo r0, r0, #1
	strlo r0, [r8, #0x18]
	ldr r0, [r8, #0x18]
	add r0, r0, r6, lsr #29
	str r0, [r8, #0x18]
	str r1, [r8, #0x14]
	ldr r1, [r8, #0x1c]
	cmp r1, #0
	beq _023078B4
	add r0, r1, r6
	cmp r0, #0x40
	blo _02307890
	rsb r4, r1, #0x40
	mov r0, r7
	mov r2, r4
	add r1, r5, r1
	bl FUN_02305618
	ldr r1, _0230794C ; =0x0231CF34
	mov r0, r8
	ldr r3, [r1]
	mov r1, r5
	mov r2, #0x40
	sub r6, r6, r4
	add r7, r7, r4
	blx r3
	mov r0, #0
	str r0, [r8, #0x1c]
	b _023078B4
_02307890:
	mov r0, r7
	mov r2, r6
	add r1, r5, r1
	bl FUN_02305618
	ldr r0, [r8, #0x1c]
	add r0, r0, r6
	str r0, [r8, #0x1c]
	ldmia sp!, {r4, r5, r6, r7, r8, lr}
	bx lr
_023078B4:
	cmp r6, #0x40
	blo _02307924
	bic r4, r6, #0x3f
	sub r6, r6, r4
	ands r0, r7, #3
	bne _023078EC
	ldr r1, _0230794C ; =0x0231CF34
	mov r0, r8
	ldr r3, [r1]
	mov r1, r7
	mov r2, r4
	blx r3
	add r7, r7, r4
	b _02307924
_023078EC:
	mov r0, r7
	mov r1, r5
	mov r2, #0x40
	bl FUN_02305618
	ldr r1, _0230794C ; =0x0231CF34
	mov r0, r8
	ldr r3, [r1]
	mov r1, r5
	mov r2, #0x40
	add r7, r7, #0x40
	blx r3
	sub r4, r4, #0x40
	cmp r4, #0
	bgt _023078EC
_02307924:
	str r6, [r8, #0x1c]
	cmp r6, #0
	ldmeqia sp!, {r4, r5, r6, r7, r8, lr}
	bxeq lr
	mov r0, r7
	mov r1, r5
	mov r2, r6
	bl FUN_02305618
	ldmia sp!, {r4, r5, r6, r7, r8, lr}
	bx lr
	.align 2, 0
_0230794C: .word 0x0231CF34
	arm_func_end FUN_023077F4

	arm_func_start FUN_02307950
FUN_02307950: ; 0x02307950
	ldr r1, _0230798C ; =0x67452301
	ldr r2, _02307990 ; =0xEFCDAB89
	str r1, [r0]
	ldr r1, _02307994 ; =0x98BADCFE
	str r2, [r0, #4]
	ldr r2, _02307998 ; =0x10325476
	str r1, [r0, #8]
	ldr r1, _0230799C ; =0xC3D2E1F0
	str r2, [r0, #0xc]
	str r1, [r0, #0x10]
	mov r1, #0
	str r1, [r0, #0x14]
	str r1, [r0, #0x18]
	str r1, [r0, #0x1c]
	bx lr
	.align 2, 0
_0230798C: .word 0x67452301
_02307990: .word 0xEFCDAB89
_02307994: .word 0x98BADCFE
_02307998: .word 0x10325476
_0230799C: .word 0xC3D2E1F0
_023079A0: .word 0x00FF00FF
_023079A4: .word 0x5A827999
_023079A8: .word 0x6ED9EBA1
_023079AC: .word 0x8F1BBCDC
_023079B0: .word 0xCA62C1D6
	arm_func_end FUN_02307950

	arm_func_start FUN_023079B4
FUN_023079B4: ; 0x023079B4
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, ip, lr}
	ldmia r0, {r3, sb, sl, fp, ip}
	sub sp, sp, #0x84
	str r2, [sp, #0x80]
_023079C4:
	ldr r8, _023079A4 ; =0x5A827999
	ldr r7, _023079A0 ; =0x00FF00FF
	mov r6, sp
	mov r5, #0
_023079D4:
	ldr r4, [r1], #4
	add r2, r8, ip
	add r2, r2, r3, ror #27
	and lr, r4, r7
	and r4, r7, r4, ror #24
	orr r4, r4, lr, ror #8
	str r4, [r6, #0x40]
	str r4, [r6], #4
	add r2, r2, r4
	eor r4, sl, fp
	and r4, r4, sb
	eor r4, r4, fp
	add r2, r2, r4
	mov sb, sb, ror #2
	mov ip, fp
	mov fp, sl
	mov sl, sb
	mov sb, r3
	mov r3, r2
	add r5, r5, #4
	cmp r5, #0x40
	blt _023079D4
	mov r7, #0
	mov r6, sp
_02307A34:
	ldr r2, [r6]
	ldr r5, [r6, #8]
	ldr r4, [r6, #0x20]
	ldr lr, [r6, #0x34]
	eor r2, r2, r5
	eor r4, r4, lr
	eor r2, r2, r4
	mov r2, r2, ror #0x1f
	str r2, [r6, #0x40]
	str r2, [r6], #4
	add r2, r2, ip
	add r2, r2, r8
	add r2, r2, r3, ror #27
	eor r4, sl, fp
	and r4, r4, sb
	eor r4, r4, fp
	add r2, r2, r4
	mov sb, sb, ror #2
	mov ip, fp
	mov fp, sl
	mov sl, sb
	mov sb, r3
	mov r3, r2
	add r7, r7, #4
	cmp r7, #0x10
	blt _02307A34
	ldr r8, _023079A8 ; =0x6ED9EBA1
	mov r7, #0
_02307AA4:
	ldr r2, [r6]
	ldr r4, [r6, #8]
	ldr lr, [r6, #0x20]
	ldr r5, [r6, #0x34]
	eor r2, r2, r4
	eor lr, lr, r5
	eor r2, r2, lr
	mov r2, r2, ror #0x1f
	str r2, [r6, #0x40]
	str r2, [r6], #4
	add r2, r2, ip
	add r2, r2, r8
	add r2, r2, r3, ror #27
	eor lr, sb, sl
	eor lr, lr, fp
	add r2, r2, lr
	mov sb, sb, ror #2
	mov ip, fp
	mov fp, sl
	mov sl, sb
	mov sb, r3
	mov r3, r2
	add r7, r7, #1
	cmp r7, #0xc
	moveq r6, sp
	cmp r7, #0x14
	blt _02307AA4
	ldr r8, _023079AC ; =0x8F1BBCDC
	mov r7, #0
_02307B18:
	ldr r2, [r6]
	ldr lr, [r6, #8]
	ldr r5, [r6, #0x20]
	ldr r4, [r6, #0x34]
	eor r2, r2, lr
	eor r5, r5, r4
	eor r2, r2, r5
	mov r2, r2, ror #0x1f
	str r2, [r6, #0x40]
	str r2, [r6], #4
	add r2, r2, ip
	add r2, r2, r8
	add r2, r2, r3, ror #27
	orr r5, sb, sl
	and r5, r5, fp
	and r4, sb, sl
	orr r5, r5, r4
	add r2, r2, r5
	mov sb, sb, ror #2
	mov ip, fp
	mov fp, sl
	mov sl, sb
	mov sb, r3
	mov r3, r2
	add r7, r7, #1
	cmp r7, #8
	moveq r6, sp
	cmp r7, #0x14
	blt _02307B18
	ldr r8, _023079B0 ; =0xCA62C1D6
	mov r7, #0
_02307B94:
	ldr r2, [r6]
	ldr r5, [r6, #8]
	ldr r4, [r6, #0x20]
	ldr lr, [r6, #0x34]
	eor r2, r2, r5
	eor r4, r4, lr
	eor r2, r2, r4
	mov r2, r2, ror #0x1f
	str r2, [r6, #0x40]
	str r2, [r6], #4
	add r2, r2, ip
	add r2, r2, r8
	add r2, r2, r3, ror #27
	eor r4, sb, sl
	eor r4, r4, fp
	add r2, r2, r4
	mov sb, sb, ror #2
	mov ip, fp
	mov fp, sl
	mov sl, sb
	mov sb, r3
	mov r3, r2
	add r7, r7, #1
	cmp r7, #4
	moveq r6, sp
	cmp r7, #0x14
	blt _02307B94
	ldmia r0, {r2, r4, r6, r7, lr}
	add r3, r3, r2
	add sb, sb, r4
	add sl, sl, r6
	add fp, fp, r7
	add ip, ip, lr
	stmia r0, {r3, sb, sl, fp, ip}
	ldr lr, [sp, #0x80]
	subs lr, lr, #0x40
	str lr, [sp, #0x80]
	bgt _023079C4
	add sp, sp, #0x84
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, ip, pc}
	arm_func_end FUN_023079B4

	arm_func_start FUN_02307C34
FUN_02307C34: ; 0x02307C34
	ldr r1, _02307C70 ; =0x04000290
	stmdb sp!, {r4}
	ldmia r1, {r2, r3, r4, ip}
	stmia r0!, {r2, r3, r4, ip}
	ldrh ip, [r1, #-0x10]
	add r1, r1, #0x28
	ldmia r1, {r2, r3}
	stmia r0!, {r2, r3}
	and ip, ip, #3
	ldrh r2, [r1, #-8]
	strh ip, [r0]
	and r2, r2, #1
	strh r2, [r0, #2]
	ldmia sp!, {r4}
	bx lr
	.align 2, 0
_02307C70: .word 0x04000290
	arm_func_end FUN_02307C34

	arm_func_start FUN_02307C74
FUN_02307C74: ; 0x02307C74
	stmdb sp!, {r4}
	ldr r1, _02307CAC ; =0x04000290
	ldmia r0, {r2, r3, r4, ip}
	stmia r1, {r2, r3, r4, ip}
	ldrh r2, [r0, #0x18]
	ldrh r3, [r0, #0x1a]
	strh r2, [r1, #-0x10]
	strh r3, [r1, #0x20]
	add r0, r0, #0x10
	add r1, r1, #0x28
	ldmia r0, {r2, r3}
	stmia r1, {r2, r3}
	ldmia sp!, {r4}
	bx lr
	.align 2, 0
_02307CAC: .word 0x04000290
	arm_func_end FUN_02307C74

	arm_func_start FUN_02307CB0
FUN_02307CB0: ; 0x02307CB0
	stmdb sp!, {lr}
	sub sp, sp, #4
	ldr r1, _02307CE8 ; =FUN_023085B0
	add r2, sp, #0
	bl FUN_02307CEC
	cmp r0, #0
	addne sp, sp, #4
	ldmneia sp!, {lr}
	bxne lr
	bl FUN_023085B8
	ldr r0, [sp]
	add sp, sp, #4
	ldmia sp!, {lr}
	bx lr
	.align 2, 0
_02307CE8: .word FUN_023085B0
	arm_func_end FUN_02307CB0

	arm_func_start FUN_02307CEC
FUN_02307CEC: ; 0x02307CEC
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	mov r4, r2
	bl FUN_023085F8
	cmp r0, #0
	moveq r0, #1
	ldmeqia sp!, {r4, r5, r6, lr}
	bxeq lr
	ldr r0, _02307D38 ; =0x03006600
	ldr r1, _02307D3C ; =0x02346834
	and r2, r6, #0xff
	orr r0, r2, r0
	str r5, [r1, #4]
	str r4, [r1, #8]
	bl FUN_02307E6C
	mov r0, #0
	ldmia sp!, {r4, r5, r6, lr}
	bx lr
	.align 2, 0
_02307D38: .word 0x03006600
_02307D3C: .word 0x02346834
	arm_func_end FUN_02307CEC

	arm_func_start FUN_02307D40
FUN_02307D40: ; 0x02307D40
	ldr r0, _02307D58 ; =0x04000304
	ldrh r0, [r0]
	ands r0, r0, #1
	movne r0, #1
	moveq r0, #0
	bx lr
	.align 2, 0
_02307D58: .word 0x04000304
	arm_func_end FUN_02307D40

	arm_func_start FUN_02307D5C
FUN_02307D5C: ; 0x02307D5C
	ldr ip, _02307D78 ; =FUN_02307D7C
	mov r1, #0
	cmp r0, #1
	movne r0, #0
	mov r2, r1
	mov r3, #1
	bx ip
	.align 2, 0
_02307D78: .word FUN_02307D7C
	arm_func_end FUN_02307D5C

	arm_func_start FUN_02307D7C
FUN_02307D7C: ; 0x02307D7C
	stmdb sp!, {lr}
	sub sp, sp, #4
	cmp r0, #0
	beq _02307E04
	cmp r0, #1
	bne _02307E50
	cmp r2, #0
	bne _02307DC4
	ldr r2, _02307E60 ; =0x027FFC3C
	ldr r0, _02307E64 ; =0x02346830
	ldr r2, [r2]
	ldr r0, [r0]
	sub r0, r2, r0
	cmp r0, #7
	addls sp, sp, #4
	movls r0, #0
	ldmlsia sp!, {lr}
	bxls lr
_02307DC4:
	cmp r1, #0
	beq _02307DF0
	cmp r3, #0
	beq _02307DE0
	mov r0, r1
	bl FUN_02308124
	b _02307DF0
_02307DE0:
	mov r0, r1
	mov r1, #0
	mov r2, r1
	bl FUN_02308160
_02307DF0:
	ldr r1, _02307E68 ; =0x04000304
	ldrh r0, [r1]
	orr r0, r0, #1
	strh r0, [r1]
	b _02307E50
_02307E04:
	ldr lr, _02307E68 ; =0x04000304
	ldr r2, _02307E60 ; =0x027FFC3C
	ldrh ip, [lr]
	ldr r0, _02307E64 ; =0x02346830
	cmp r1, #0
	bic ip, ip, #1
	strh ip, [lr]
	ldr r2, [r2]
	str r2, [r0]
	beq _02307E50
	cmp r3, #0
	beq _02307E40
	mov r0, r1
	bl FUN_02308124
	b _02307E50
_02307E40:
	mov r0, r1
	mov r1, #0
	mov r2, r1
	bl FUN_02308160
_02307E50:
	mov r0, #1
	add sp, sp, #4
	ldmia sp!, {lr}
	bx lr
	.align 2, 0
_02307E60: .word 0x027FFC3C
_02307E64: .word 0x02346830
_02307E68: .word 0x04000304
	arm_func_end FUN_02307D7C

	arm_func_start FUN_02307E6C
FUN_02307E6C: ; 0x02307E6C
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, #8
	mov r4, #0
_02307E7C:
	mov r0, r5
	mov r1, r6
	mov r2, r4
	bl FUN_02305930
	cmp r0, #0
	bne _02307E7C
	ldmia sp!, {r4, r5, r6, lr}
	bx lr
	arm_func_end FUN_02307E6C

	arm_func_start FUN_02307E9C
FUN_02307E9C: ; 0x02307E9C
	stmdb sp!, {r4, lr}
	sub sp, sp, #8
	mov r4, r0
	add r1, sp, #0
	mov r0, #2
	bl FUN_02308284
	cmp r0, #0
	addne sp, sp, #8
	ldmneia sp!, {r4, lr}
	bxne lr
	cmp r4, #0
	ldrneh r1, [sp]
	strne r1, [r4]
	add sp, sp, #8
	ldmia sp!, {r4, lr}
	bx lr
	arm_func_end FUN_02307E9C

	arm_func_start FUN_02307EDC
FUN_02307EDC: ; 0x02307EDC
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	mov r4, r1
	mov r5, r0
	add r1, sp, #0
	mov r0, #0
	bl FUN_02308284
	cmp r0, #0
	addne sp, sp, #4
	ldmneia sp!, {r4, r5, lr}
	bxne lr
	cmp r5, #0
	beq _02307F24
	ldrh r1, [sp]
	ands r1, r1, #8
	movne r1, #1
	moveq r1, #0
	str r1, [r5]
_02307F24:
	cmp r4, #0
	addeq sp, sp, #4
	ldmeqia sp!, {r4, r5, lr}
	bxeq lr
	ldrh r1, [sp]
	ands r1, r1, #4
	movne r1, #1
	moveq r1, #0
	str r1, [r4]
	add sp, sp, #4
	ldmia sp!, {r4, r5, lr}
	bx lr
	arm_func_end FUN_02307EDC

	arm_func_start FUN_02307F54
FUN_02307F54: ; 0x02307F54
	ldr ip, _02307F68 ; =FUN_023081C8
	mov r0, r0, lsl #0x10
	mov r1, r0, lsr #0x10
	mov r0, #2
	bx ip
	.align 2, 0
_02307F68: .word FUN_023081C8
	arm_func_end FUN_02307F54

	arm_func_start FUN_02307F6C
FUN_02307F6C: ; 0x02307F6C
	stmdb sp!, {lr}
	sub sp, sp, #4
	ldr r0, _02307FA4 ; =FUN_023085B0
	add r1, sp, #0
	bl FUN_02307FA8
	cmp r0, #0
	addne sp, sp, #4
	ldmneia sp!, {lr}
	bxne lr
	bl FUN_023085B8
	ldr r0, [sp]
	add sp, sp, #4
	ldmia sp!, {lr}
	bx lr
	.align 2, 0
_02307FA4: .word FUN_023085B0
	arm_func_end FUN_02307F6C

	arm_func_start FUN_02307FA8
FUN_02307FA8: ; 0x02307FA8
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0xc
	mov r7, r0
	ldr r0, _02308054 ; =0x00996A00
	mov r6, r1
	bl _02304F40
	bl FUN_02307D40
	cmp r0, #1
	beq _02308038
	add r0, sp, #0
	add r1, sp, #4
	bl FUN_02307EDC
	ldr r0, [sp]
	cmp r0, #0
	beq _02307FF0
	mov r0, #0
	mov r1, r0
	bl FUN_02308058
_02307FF0:
	ldr r0, [sp, #4]
	cmp r0, #0
	beq _02308008
	mov r0, #1
	mov r1, #0
	bl FUN_02308058
_02308008:
	mov r0, #1
	bl FUN_02307D5C
	cmp r0, #0
	bne _02308038
	ldr r5, _02308054 ; =0x00996A00
	mov r4, #1
_02308020:
	mov r0, r5
	bl _02304F40
	mov r0, r4
	bl FUN_02307D5C
	cmp r0, #0
	beq _02308020
_02308038:
	mov r1, r7
	mov r2, r6
	mov r0, #0xe
	bl FUN_02308338
	add sp, sp, #0xc
	ldmia sp!, {r4, r5, r6, r7, lr}
	bx lr
	.align 2, 0
_02308054: .word 0x00996A00
	arm_func_end FUN_02307FA8

	arm_func_start FUN_02308058
FUN_02308058: ; 0x02308058
	stmdb sp!, {lr}
	sub sp, sp, #4
	ldr r2, _02308090 ; =FUN_023085B0
	add r3, sp, #0
	bl FUN_02308094
	cmp r0, #0
	addne sp, sp, #4
	ldmneia sp!, {lr}
	bxne lr
	bl FUN_023085B8
	ldr r0, [sp]
	add sp, sp, #4
	ldmia sp!, {lr}
	bx lr
	.align 2, 0
_02308090: .word FUN_023085B0
	arm_func_end FUN_02308058

	arm_func_start FUN_02308094
FUN_02308094: ; 0x02308094
	stmdb sp!, {lr}
	sub sp, sp, #4
	cmp r0, #0
	mov ip, #0
	bne _023080BC
	cmp r1, #1
	moveq ip, #6
	cmp r1, #0
	moveq ip, #7
	b _023080F0
_023080BC:
	cmp r0, #1
	bne _023080D8
	cmp r1, #1
	moveq ip, #4
	cmp r1, #0
	moveq ip, #5
	b _023080F0
_023080D8:
	cmp r0, #2
	bne _023080F0
	cmp r1, #1
	moveq ip, #8
	cmp r1, #0
	moveq ip, #9
_023080F0:
	cmp ip, #0
	addeq sp, sp, #4
	ldreq r0, _02308120 ; =0x0000FFFF
	ldmeqia sp!, {lr}
	bxeq lr
	mov r1, r2
	mov r0, ip
	mov r2, r3
	bl FUN_02308338
	add sp, sp, #4
	ldmia sp!, {lr}
	bx lr
	.align 2, 0
_02308120: .word 0x0000FFFF
	arm_func_end FUN_02308094

	arm_func_start FUN_02308124
FUN_02308124: ; 0x02308124
	stmdb sp!, {lr}
	sub sp, sp, #4
	ldr r1, _0230815C ; =FUN_023085B0
	add r2, sp, #0
	bl FUN_02308160
	cmp r0, #0
	addne sp, sp, #4
	ldmneia sp!, {lr}
	bxne lr
	bl FUN_023085B8
	ldr r0, [sp]
	add sp, sp, #4
	ldmia sp!, {lr}
	bx lr
	.align 2, 0
_0230815C: .word FUN_023085B0
	arm_func_end FUN_02308124

	arm_func_start FUN_02308160
FUN_02308160: ; 0x02308160
	stmdb sp!, {lr}
	sub sp, sp, #4
	cmp r0, #1
	beq _02308184
	cmp r0, #2
	beq _02308194
	cmp r0, #3
	beq _0230818C
	b _0230819C
_02308184:
	mov r0, #1
	b _023081A0
_0230818C:
	mov r0, #2
	b _023081A0
_02308194:
	mov r0, #3
	b _023081A0
_0230819C:
	mov r0, #0
_023081A0:
	cmp r0, #0
	addeq sp, sp, #4
	ldreq r0, _023081C4 ; =0x0000FFFF
	ldmeqia sp!, {lr}
	bxeq lr
	bl FUN_02308338
	add sp, sp, #4
	ldmia sp!, {lr}
	bx lr
	.align 2, 0
_023081C4: .word 0x0000FFFF
	arm_func_end FUN_02308160

	arm_func_start FUN_023081C8
FUN_023081C8: ; 0x023081C8
	stmdb sp!, {lr}
	sub sp, sp, #4
	ldr r2, _02308200 ; =FUN_023085B0
	add r3, sp, #0
	bl FUN_02308204
	cmp r0, #0
	addne sp, sp, #4
	ldmneia sp!, {lr}
	bxne lr
	bl FUN_023085B8
	ldr r0, [sp]
	add sp, sp, #4
	ldmia sp!, {lr}
	bx lr
	.align 2, 0
_02308200: .word FUN_023085B0
	arm_func_end FUN_023081C8

	arm_func_start FUN_02308204
FUN_02308204: ; 0x02308204
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #4
	mov r7, r0
	mov r4, r1
	mov r6, r2
	mov r5, r3
	bl FUN_023085F8
	cmp r0, #0
	addeq sp, sp, #4
	moveq r0, #1
	ldmeqia sp!, {r4, r5, r6, r7, lr}
	bxeq lr
	ldr r0, _02308274 ; =0x02006400
	ldr r1, _02308278 ; =0x02346834
	and r2, r7, #0xff
	orr r0, r2, r0
	str r6, [r1, #4]
	str r5, [r1, #8]
	bl FUN_02307E6C
	ldr r0, _0230827C ; =0x0000FFFF
	ldr r1, _02308280 ; =0x01010000
	and r0, r4, r0
	orr r0, r0, r1
	bl FUN_02307E6C
	mov r0, #0
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, lr}
	bx lr
	.align 2, 0
_02308274: .word 0x02006400
_02308278: .word 0x02346834
_0230827C: .word 0x0000FFFF
_02308280: .word 0x01010000
	arm_func_end FUN_02308204

	arm_func_start FUN_02308284
FUN_02308284: ; 0x02308284
	stmdb sp!, {lr}
	sub sp, sp, #4
	ldr r2, _023082BC ; =FUN_023085B0
	add r3, sp, #0
	bl FUN_023082C0
	cmp r0, #0
	addne sp, sp, #4
	ldmneia sp!, {lr}
	bxne lr
	bl FUN_023085B8
	ldr r0, [sp]
	add sp, sp, #4
	ldmia sp!, {lr}
	bx lr
	.align 2, 0
_023082BC: .word FUN_023085B0
	arm_func_end FUN_02308284

	arm_func_start FUN_023082C0
FUN_023082C0: ; 0x023082C0
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	mov r7, r0
	mov r6, r1
	mov r5, r2
	mov r4, r3
	bl FUN_023085F8
	cmp r0, #0
	moveq r0, #1
	ldmeqia sp!, {r4, r5, r6, r7, r8, lr}
	bxeq lr
	ldr ip, _02308328 ; =0x0234685C
	ldr r1, _0230832C ; =0x02346834
	ldr r0, _02308330 ; =0x03006500
	and r2, r7, #0xff
	mov lr, r7, lsl #3
	mov r8, #0
	ldr r3, _02308334 ; =0x02346860
	strh r8, [ip, lr]
	orr r0, r2, r0
	str r5, [r1, #4]
	str r4, [r1, #8]
	str r6, [r3, r7, lsl #3]
	bl FUN_02307E6C
	mov r0, r8
	ldmia sp!, {r4, r5, r6, r7, r8, lr}
	bx lr
	.align 2, 0
_02308328: .word 0x0234685C
_0230832C: .word 0x02346834
_02308330: .word 0x03006500
_02308334: .word 0x02346860
	arm_func_end FUN_023082C0

	arm_func_start FUN_02308338
FUN_02308338: ; 0x02308338
	stmdb sp!, {r4, r5, r6, lr}
	mov r4, r0
	mov r6, r1
	mov r5, r2
	bl FUN_023085F8
	cmp r0, #0
	moveq r0, #1
	ldmeqia sp!, {r4, r5, r6, lr}
	bxeq lr
	mov r2, r4, lsr #0x10
	ldr r1, _0230839C ; =0x02346834
	ldr r0, _023083A0 ; =0x02006300
	and r2, r2, #0xff
	orr r0, r2, r0
	str r6, [r1, #4]
	str r5, [r1, #8]
	bl FUN_02307E6C
	ldr r0, _023083A4 ; =0x0000FFFF
	ldr r1, _023083A8 ; =0x01010000
	and r0, r4, r0
	orr r0, r0, r1
	bl FUN_02307E6C
	mov r0, #0
	ldmia sp!, {r4, r5, r6, lr}
	bx lr
	.align 2, 0
_0230839C: .word 0x02346834
_023083A0: .word 0x02006300
_023083A4: .word 0x0000FFFF
_023083A8: .word 0x01010000
	arm_func_end FUN_02308338

	arm_func_start FUN_023083AC
FUN_023083AC: ; 0x023083AC
	stmdb sp!, {lr}
	sub sp, sp, #4
	cmp r2, #0
	beq _023083D0
	mov r0, #2
	bl FUN_0230855C
	add sp, sp, #4
	ldmia sp!, {lr}
	bx lr
_023083D0:
	and r0, r1, #0x7f00
	mov r0, r0, lsl #8
	and r1, r1, #0xff
	mov r2, r0, lsr #0x10
	mov r0, r1, lsl #0x10
	cmp r2, #0x70
	mov r0, r0, lsr #0x10
	blo _02308430
	cmp r2, #0x74
	bhi _02308430
	ldr r1, _02308484 ; =0x02346860
	sub r2, r2, #0x70
	and r0, r0, #0xff
	ldr r1, [r1, r2, lsl #3]
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	cmp r1, #0
	strneh r0, [r1]
	mov r1, r2, lsl #3
	ldr r0, _02308488 ; =0x0234685C
	mov r2, #1
	strh r2, [r0, r1]
	mov r0, #0
	b _02308474
_02308430:
	cmp r2, #0x60
	ldreq r1, _0230848C ; =0x02346828
	moveq r2, #1
	streq r2, [r1]
	beq _02308474
	cmp r2, #0x62
	ldreq r1, _02308490 ; =0x0234682C
	moveq r2, #1
	streq r2, [r1]
	beq _02308474
	cmp r2, #0x67
	bne _02308474
	ldr r1, _02308494 ; =0x02346834
	ldr r1, [r1, #0xc]
	cmp r1, #0
	strne r0, [r1]
	mov r0, #0
_02308474:
	bl FUN_0230855C
	add sp, sp, #4
	ldmia sp!, {lr}
	bx lr
	.align 2, 0
_02308484: .word 0x02346860
_02308488: .word 0x0234685C
_0230848C: .word 0x02346828
_02308490: .word 0x0234682C
_02308494: .word 0x02346834
	arm_func_end FUN_023083AC

	arm_func_start FUN_02308498
FUN_02308498: ; 0x02308498
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	ldr r1, _02308540 ; =0x02346824
	ldrh r0, [r1]
	cmp r0, #0
	addne sp, sp, #4
	ldmneia sp!, {r4, r5, lr}
	bxne lr
	ldr r0, _02308544 ; =0x02346834
	mov r2, #0
	mov r3, #1
	strh r3, [r1]
	str r2, [r0]
	str r2, [r0, #4]
	bl FUN_02305800
	mov r5, #8
	mov r4, #1
_023084DC:
	mov r0, r5
	mov r1, r4
	bl FUN_023059E4
	cmp r0, #0
	beq _023084DC
	ldr r1, _02308548 ; =FUN_023083AC
	mov r0, #8
	bl FUN_02305A0C
	mov r3, #0
	ldr r0, _0230854C ; =0x0234685C
	mov r2, r3
_02308508:
	mov r1, r3, lsl #3
	add r3, r3, #1
	strh r2, [r0, r1]
	cmp r3, #5
	blt _02308508
	ldr r0, _02308550 ; =0x02346844
	bl FUN_0230404C
	ldr r1, _02308554 ; =0x027FFC3C
	ldr r0, _02308558 ; =0x02346830
	ldr r1, [r1]
	str r1, [r0]
	add sp, sp, #4
	ldmia sp!, {r4, r5, lr}
	bx lr
	.align 2, 0
_02308540: .word 0x02346824
_02308544: .word 0x02346834
_02308548: .word FUN_023083AC
_0230854C: .word 0x0234685C
_02308550: .word 0x02346844
_02308554: .word 0x027FFC3C
_02308558: .word 0x02346830
	arm_func_end FUN_02308498

	arm_func_start FUN_0230855C
FUN_0230855C: ; 0x0230855C
	stmdb sp!, {lr}
	sub sp, sp, #4
	ldr r2, _023085AC ; =0x02346834
	ldr r1, [r2]
	ldr ip, [r2, #4]
	cmp r1, #0
	movne r3, #0
	strne r3, [r2]
	cmp ip, #0
	addeq sp, sp, #4
	ldr r1, [r2, #8]
	ldmeqia sp!, {lr}
	bxeq lr
	ldr r2, _023085AC ; =0x02346834
	mov r3, #0
	str r3, [r2, #4]
	blx ip
	add sp, sp, #4
	ldmia sp!, {lr}
	bx lr
	.align 2, 0
_023085AC: .word 0x02346834
	arm_func_end FUN_0230855C

	arm_func_start FUN_023085B0
FUN_023085B0: ; 0x023085B0
	str r0, [r1]
	bx lr
	arm_func_end FUN_023085B0

	arm_func_start FUN_023085B8
FUN_023085B8: ; 0x023085B8
	stmdb sp!, {r4, lr}
	ldr r4, _023085F4 ; =0x02346834
	ldr r0, [r4]
	cmp r0, #0
	ldmeqia sp!, {r4, lr}
	bxeq lr
_023085D0:
	bl FUN_02304F28
	cmp r0, #0x80
	bne _023085E0
	bl FUN_0230580C
_023085E0:
	ldr r0, [r4]
	cmp r0, #0
	bne _023085D0
	ldmia sp!, {r4, lr}
	bx lr
	.align 2, 0
_023085F4: .word 0x02346834
	arm_func_end FUN_023085B8

	arm_func_start FUN_023085F8
FUN_023085F8: ; 0x023085F8
	stmdb sp!, {lr}
	sub sp, sp, #4
	bl FUN_02304ED0
	ldr r1, _02308644 ; =0x02346834
	ldr r2, [r1]
	cmp r2, #0
	beq _02308628
	bl FUN_02304EE4
	add sp, sp, #4
	mov r0, #0
	ldmia sp!, {lr}
	bx lr
_02308628:
	mov r2, #1
	str r2, [r1]
	bl FUN_02304EE4
	mov r0, #1
	add sp, sp, #4
	ldmia sp!, {lr}
	bx lr
	.align 2, 0
_02308644: .word 0x02346834
	arm_func_end FUN_023085F8

	arm_func_start FUN_02308648
FUN_02308648: ; 0x02308648
	ldr ip, _0230865C ; =0x02346888
_0230864C:
	ldr r0, [ip]
	cmp r0, #1
	beq _0230864C
	bx lr
	.align 2, 0
_0230865C: .word 0x02346888
	arm_func_end FUN_02308648

	arm_func_start FUN_02308660
FUN_02308660: ; 0x02308660
	ldr r1, _0230866C ; =0x02346888
	str r0, [r1, #0x20]
	bx lr
	.align 2, 0
_0230866C: .word 0x02346888
	arm_func_end FUN_02308660

	arm_func_start FUN_02308670
FUN_02308670: ; 0x02308670
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	mov r5, #0
	mov r3, r5
	mov r2, r5
_02308684:
	mov r1, r0, lsr r2
	and r1, r1, #0xf
	cmp r1, #0xa
	addhs sp, sp, #4
	movhs r0, #0
	ldmhsia sp!, {r4, r5, lr}
	bxhs lr
	add r3, r3, #1
	cmp r3, #8
	add r2, r2, #4
	blt _02308684
	mov ip, #0
	mov lr, ip
	mov r4, #1
	mov r2, #0xa
_023086C0:
	mov r1, r0, lsr lr
	and r3, r1, #0xf
	mul r1, r4, r2
	mla r5, r4, r3, r5
	add ip, ip, #1
	mov r4, r1
	cmp ip, #8
	add lr, lr, #4
	blt _023086C0
	mov r0, r5
	add sp, sp, #4
	ldmia sp!, {r4, r5, lr}
	bx lr
	arm_func_end FUN_02308670

	arm_func_start FUN_023086F4
FUN_023086F4: ; 0x023086F4
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	cmp r2, #0
	beq _02308764
	ldr r0, _02308C64 ; =0x02346888
	ldr r2, _02308C64 ; =0x02346888
	ldr r1, [r0, #0x18]
	ldr r4, [r2, #4]
	cmp r1, #0
	movne r1, #0
	strne r1, [r0, #0x18]
	ldr r0, _02308C64 ; =0x02346888
	ldr r1, [r0]
	cmp r1, #0
	movne r1, #0
	strne r1, [r0]
	cmp r4, #0
	addeq sp, sp, #4
	ldmeqia sp!, {r4, r5, lr}
	bxeq lr
	ldr r1, [r2, #0x10]
	mov r3, #0
	mov r0, #6
	str r3, [r2, #4]
	blx r4
	add sp, sp, #4
	ldmia sp!, {r4, r5, lr}
	bx lr
_02308764:
	and r0, r1, #0x7f00
	mov r0, r0, lsr #8
	and r0, r0, #0xff
	cmp r0, #0x30
	and r2, r1, #0xff
	bne _023087A4
	ldr r0, _02308C64 ; =0x02346888
	ldr r0, [r0, #0x1c]
	cmp r0, #0
	addeq sp, sp, #4
	ldmeqia sp!, {r4, r5, lr}
	bxeq lr
	blx r0
	add sp, sp, #4
	ldmia sp!, {r4, r5, lr}
	bx lr
_023087A4:
	cmp r2, #0
	bne _02308BBC
	ldr r0, _02308C64 ; =0x02346888
	mov r5, #0
	ldr r1, [r0, #0x14]
	cmp r1, #0xf
	addls pc, pc, r1, lsl #2
	b _02308BA8
_023087C4: ; jump table
	b _02308804 ; case 0
	b _02308858 ; case 1
	b _023088A8 ; case 2
	b _02308C04 ; case 3
	b _02308C04 ; case 4
	b _02308C04 ; case 5
	b _02308950 ; case 6
	b _02308980 ; case 7
	b _023089A4 ; case 8
	b _02308A48 ; case 9
	b _02308AFC ; case 10
	b _02308C04 ; case 11
	b _02308C04 ; case 12
	b _02308C04 ; case 13
	b _02308C04 ; case 14
	b _02308C04 ; case 15
_02308804:
	ldr r1, _02308C68 ; =0x027FFDE8
	ldr r4, [r0, #8]
	ldrb r0, [r1]
	bl FUN_02308670
	ldr r1, _02308C68 ; =0x027FFDE8
	str r0, [r4]
	ldr r0, [r1]
	mov r0, r0, lsl #0x13
	mov r0, r0, lsr #0x1b
	bl FUN_02308670
	ldr r1, _02308C68 ; =0x027FFDE8
	str r0, [r4, #4]
	ldr r0, [r1]
	mov r0, r0, lsl #0xa
	mov r0, r0, lsr #0x1a
	bl FUN_02308670
	str r0, [r4, #8]
	mov r0, r4
	bl FUN_02308E10
	str r0, [r4, #0xc]
	b _02308C04
_02308858:
	ldr r1, _02308C6C ; =0x027FFDEC
	ldr r4, [r0, #8]
	ldr r0, [r1]
	mov r0, r0, lsl #0x1a
	mov r0, r0, lsr #0x1a
	bl FUN_02308670
	ldr r1, _02308C6C ; =0x027FFDEC
	str r0, [r4]
	ldr r0, [r1]
	mov r0, r0, lsl #0x11
	mov r0, r0, lsr #0x19
	bl FUN_02308670
	ldr r1, _02308C6C ; =0x027FFDEC
	str r0, [r4, #4]
	ldr r0, [r1]
	mov r0, r0, lsl #9
	mov r0, r0, lsr #0x19
	bl FUN_02308670
	str r0, [r4, #8]
	b _02308C04
_023088A8:
	ldr r1, _02308C68 ; =0x027FFDE8
	ldr r4, [r0, #8]
	ldr r0, [r1]
	and r0, r0, #0xff
	bl FUN_02308670
	ldr r1, _02308C68 ; =0x027FFDE8
	str r0, [r4]
	ldr r0, [r1]
	mov r0, r0, lsl #0x13
	mov r0, r0, lsr #0x1b
	bl FUN_02308670
	ldr r1, _02308C68 ; =0x027FFDE8
	str r0, [r4, #4]
	ldr r0, [r1]
	mov r0, r0, lsl #0xa
	mov r0, r0, lsr #0x1a
	bl FUN_02308670
	str r0, [r4, #8]
	mov r0, r4
	bl FUN_02308E10
	ldr r1, _02308C6C ; =0x027FFDEC
	str r0, [r4, #0xc]
	ldr r0, [r1]
	ldr r1, _02308C64 ; =0x02346888
	mov r0, r0, lsl #0x1a
	mov r0, r0, lsr #0x1a
	ldr r4, [r1, #0xc]
	bl FUN_02308670
	ldr r1, _02308C6C ; =0x027FFDEC
	str r0, [r4]
	ldr r0, [r1]
	mov r0, r0, lsl #0x11
	mov r0, r0, lsr #0x19
	bl FUN_02308670
	ldr r1, _02308C6C ; =0x027FFDEC
	str r0, [r4, #4]
	ldr r0, [r1]
	mov r0, r0, lsl #9
	mov r0, r0, lsr #0x19
	bl FUN_02308670
	str r0, [r4, #8]
	b _02308C04
_02308950:
	ldr r1, _02308C70 ; =0x027FFDEA
	ldr r2, [r0, #8]
	ldrh r0, [r1]
	mov r0, r0, lsl #0x1c
	mov r0, r0, lsr #0x1c
	cmp r0, #4
	bne _02308978
	mov r0, #1
	str r0, [r2]
	b _02308C04
_02308978:
	str r5, [r2]
	b _02308C04
_02308980:
	ldr r1, _02308C70 ; =0x027FFDEA
	ldr r2, [r0, #8]
	ldrh r0, [r1]
	mov r0, r0, lsl #0x19
	movs r0, r0, lsr #0x1f
	movne r0, #1
	strne r0, [r2]
	streq r5, [r2]
	b _02308C04
_023089A4:
	ldr r1, _02308C6C ; =0x027FFDEC
	ldr r4, [r0, #8]
	ldr r0, [r1]
	mov r0, r0, lsl #0x1d
	mov r0, r0, lsr #0x1d
	str r0, [r4]
	ldr r0, [r1]
	mov r0, r0, lsl #0x12
	mov r0, r0, lsr #0x1a
	bl FUN_02308670
	ldr r1, _02308C6C ; =0x027FFDEC
	str r0, [r4, #4]
	ldr r0, [r1]
	mov r0, r0, lsl #9
	mov r0, r0, lsr #0x19
	bl FUN_02308670
	str r0, [r4, #8]
	mov r1, r5
	ldr r0, _02308C6C ; =0x027FFDEC
	str r1, [r4, #0xc]
	ldr r0, [r0]
	mov r0, r0, lsl #0x18
	movs r0, r0, lsr #0x1f
	ldrne r0, [r4, #0xc]
	addne r0, r0, #1
	strne r0, [r4, #0xc]
	ldr r0, _02308C6C ; =0x027FFDEC
	ldr r0, [r0]
	mov r0, r0, lsl #0x10
	movs r0, r0, lsr #0x1f
	ldrne r0, [r4, #0xc]
	addne r0, r0, #2
	strne r0, [r4, #0xc]
	ldr r0, _02308C6C ; =0x027FFDEC
	ldr r0, [r0]
	mov r0, r0, lsl #8
	movs r0, r0, lsr #0x1f
	ldrne r0, [r4, #0xc]
	addne r0, r0, #4
	strne r0, [r4, #0xc]
	b _02308C04
_02308A48:
	ldr r3, [r0, #0x18]
	cmp r3, #0
	bne _02308AF4
	ldr r1, [r0, #8]
	ldr r1, [r1]
	cmp r1, #1
	bne _02308AB0
	ldr r2, _02308C70 ; =0x027FFDEA
	ldrh r1, [r2]
	mov r1, r1, lsl #0x1c
	mov r1, r1, lsr #0x1c
	cmp r1, #4
	beq _02308C04
	add r1, r3, #1
	str r1, [r0, #0x18]
	ldrh r0, [r2]
	bic r0, r0, #0xf
	orr r0, r0, #4
	strh r0, [r2]
	bl FUN_02308DF0
	cmp r0, #0
	moveq r1, r5
	ldreq r0, _02308C64 ; =0x02346888
	moveq r5, #3
	streq r1, [r0, #0x18]
	b _02308C04
_02308AB0:
	ldr r2, _02308C70 ; =0x027FFDEA
	ldrh r1, [r2]
	mov r1, r1, lsl #0x1c
	movs r1, r1, lsr #0x1c
	beq _02308C04
	add r1, r3, #1
	str r1, [r0, #0x18]
	ldrh r0, [r2]
	bic r0, r0, #0xf
	strh r0, [r2]
	bl FUN_02308DF0
	cmp r0, #0
	moveq r1, r5
	ldreq r0, _02308C64 ; =0x02346888
	moveq r5, #3
	streq r1, [r0, #0x18]
	b _02308C04
_02308AF4:
	str r5, [r0, #0x18]
	b _02308C04
_02308AFC:
	ldr r3, [r0, #0x18]
	cmp r3, #0
	bne _02308BA0
	ldr r1, [r0, #8]
	ldr r1, [r1]
	cmp r1, #1
	bne _02308B5C
	ldr r2, _02308C70 ; =0x027FFDEA
	ldrh r1, [r2]
	mov r1, r1, lsl #0x19
	movs r1, r1, lsr #0x1f
	bne _02308C04
	add r1, r3, #1
	str r1, [r0, #0x18]
	ldrh r0, [r2]
	orr r0, r0, #0x40
	strh r0, [r2]
	bl FUN_02308DF0
	cmp r0, #0
	moveq r1, r5
	ldreq r0, _02308C64 ; =0x02346888
	moveq r5, #3
	streq r1, [r0, #0x18]
	b _02308C04
_02308B5C:
	ldr r2, _02308C70 ; =0x027FFDEA
	ldrh r1, [r2]
	mov r1, r1, lsl #0x19
	movs r1, r1, lsr #0x1f
	beq _02308C04
	add r1, r3, #1
	str r1, [r0, #0x18]
	ldrh r0, [r2]
	bic r0, r0, #0x40
	strh r0, [r2]
	bl FUN_02308DF0
	cmp r0, #0
	moveq r1, r5
	ldreq r0, _02308C64 ; =0x02346888
	moveq r5, #3
	streq r1, [r0, #0x18]
	b _02308C04
_02308BA0:
	str r5, [r0, #0x18]
	b _02308C04
_02308BA8:
	ldr r0, _02308C64 ; =0x02346888
	mov r1, #0
	str r1, [r0, #0x18]
	mov r5, #4
	b _02308C04
_02308BBC:
	ldr r0, _02308C64 ; =0x02346888
	mov r1, #0
	str r1, [r0, #0x18]
	cmp r2, #4
	addls pc, pc, r2, lsl #2
	b _02308C00
_02308BD4: ; jump table
	b _02308C00 ; case 0
	b _02308BE8 ; case 1
	b _02308BF0 ; case 2
	b _02308BF8 ; case 3
	b _02308C00 ; case 4
_02308BE8:
	mov r5, #4
	b _02308C04
_02308BF0:
	mov r5, #5
	b _02308C04
_02308BF8:
	mov r5, #1
	b _02308C04
_02308C00:
	mov r5, #6
_02308C04:
	ldr r0, _02308C64 ; =0x02346888
	ldr r1, [r0, #0x18]
	cmp r1, #0
	addne sp, sp, #4
	ldmneia sp!, {r4, r5, lr}
	bxne lr
	ldr r2, _02308C64 ; =0x02346888
	ldr r1, [r0]
	ldr r4, [r2, #4]
	cmp r1, #0
	movne r1, #0
	strne r1, [r0]
	cmp r4, #0
	addeq sp, sp, #4
	ldmeqia sp!, {r4, r5, lr}
	bxeq lr
	ldr r1, [r2, #0x10]
	mov r3, #0
	mov r0, r5
	str r3, [r2, #4]
	blx r4
	add sp, sp, #4
	ldmia sp!, {r4, r5, lr}
	bx lr
	.align 2, 0
_02308C64: .word 0x02346888
_02308C68: .word 0x027FFDE8
_02308C6C: .word 0x027FFDEC
_02308C70: .word 0x027FFDEA
	arm_func_end FUN_023086F4

	arm_func_start FUN_02308C74
FUN_02308C74: ; 0x02308C74
	stmdb sp!, {lr}
	sub sp, sp, #4
	ldr r1, _02308CB0 ; =FUN_02308660
	mov r2, #0
	bl FUN_02308CB8
	ldr r1, _02308CB4 ; =0x02346888
	cmp r0, #0
	str r0, [r1, #0x20]
	bne _02308C9C
	bl FUN_02308648
_02308C9C:
	ldr r0, _02308CB4 ; =0x02346888
	ldr r0, [r0, #0x20]
	add sp, sp, #4
	ldmia sp!, {lr}
	bx lr
	.align 2, 0
_02308CB0: .word FUN_02308660
_02308CB4: .word 0x02346888
	arm_func_end FUN_02308C74

	arm_func_start FUN_02308CB8
FUN_02308CB8: ; 0x02308CB8
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	mov r4, r2
	bl FUN_02304ED0
	ldr r1, _02308D30 ; =0x02346888
	ldr r2, [r1]
	cmp r2, #0
	beq _02308CEC
	bl FUN_02304EE4
	mov r0, #1
	ldmia sp!, {r4, r5, r6, lr}
	bx lr
_02308CEC:
	mov r2, #1
	str r2, [r1]
	bl FUN_02304EE4
	ldr r0, _02308D30 ; =0x02346888
	mov r2, #1
	mov r1, #0
	str r2, [r0, #0x14]
	str r1, [r0, #0x18]
	str r6, [r0, #8]
	str r5, [r0, #4]
	str r4, [r0, #0x10]
	bl FUN_02308E00
	cmp r0, #0
	movne r0, #0
	moveq r0, #3
	ldmia sp!, {r4, r5, r6, lr}
	bx lr
	.align 2, 0
_02308D30: .word 0x02346888
	arm_func_end FUN_02308CB8

	arm_func_start FUN_02308D34
FUN_02308D34: ; 0x02308D34
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	ldr r1, _02308DB0 ; =0x02346884
	ldrh r0, [r1]
	cmp r0, #0
	addne sp, sp, #4
	ldmneia sp!, {r4, r5, lr}
	bxne lr
	ldr r0, _02308DB4 ; =0x02346888
	mov r2, #0
	mov r3, #1
	strh r3, [r1]
	str r2, [r0]
	str r2, [r0, #4]
	str r2, [r0, #0x1c]
	str r2, [r0, #8]
	str r2, [r0, #0xc]
	bl FUN_02305800
	mov r5, #5
	mov r4, #1
_02308D84:
	mov r0, r5
	mov r1, r4
	bl FUN_023059E4
	cmp r0, #0
	beq _02308D84
	ldr r1, _02308DB8 ; =FUN_023086F4
	mov r0, #5
	bl FUN_02305A0C
	add sp, sp, #4
	ldmia sp!, {r4, r5, lr}
	bx lr
	.align 2, 0
_02308DB0: .word 0x02346884
_02308DB4: .word 0x02346888
_02308DB8: .word FUN_023086F4
	arm_func_end FUN_02308D34

	arm_func_start FUN_02308DBC
FUN_02308DBC: ; 0x02308DBC
	stmdb sp!, {lr}
	sub sp, sp, #4
	mov r0, r0, lsl #8
	and r1, r0, #0x7f00
	mov r0, #5
	mov r2, #0
	bl FUN_02305930
	cmp r0, #0
	movge r0, #1
	movlt r0, #0
	add sp, sp, #4
	ldmia sp!, {lr}
	bx lr
	arm_func_end FUN_02308DBC

	arm_func_start FUN_02308DF0
FUN_02308DF0: ; 0x02308DF0
	ldr ip, _02308DFC ; =FUN_02308DBC
	mov r0, #0x27
	bx ip
	.align 2, 0
_02308DFC: .word FUN_02308DBC
	arm_func_end FUN_02308DF0

	arm_func_start FUN_02308E00
FUN_02308E00: ; 0x02308E00
	ldr ip, _02308E0C ; =FUN_02308DBC
	mov r0, #0x12
	bx ip
	.align 2, 0
_02308E0C: .word FUN_02308DBC
	arm_func_end FUN_02308E00

	arm_func_start FUN_02308E10
FUN_02308E10: ; 0x02308E10
	stmdb sp!, {r4, r5, r6, lr}
	ldr r1, [r0, #4]
	ldr r2, [r0]
	sub r3, r1, #2
	cmp r3, #1
	add lr, r2, #0x7d0
	ldr r4, _02308ED4 ; =0x51EB851F
	sublt lr, lr, #1
	ldr ip, [r0, #8]
	smull r0, r2, r4, lr
	addlt r3, r3, #0xc
	mov r1, #0x1a
	mul r0, r3, r1
	smull r1, r3, r4, lr
	ldr r5, _02308ED8 ; =0x66666667
	sub r0, r0, #2
	smull r4, r1, r5, r0
	mov r4, lr, lsr #0x1f
	mov r2, r2, asr #5
	mov r3, r3, asr #5
	add r3, r4, r3
	ldr r5, _02308EDC ; =0x00000064
	add r2, r4, r2
	smull r2, r4, r5, r2
	sub r2, lr, r2
	mov r1, r1, asr #2
	mov r0, r0, lsr #0x1f
	add r1, r0, r1
	mov r4, r2, asr #1
	add r0, ip, r1
	add r1, r2, r4, lsr #30
	add r2, r2, r0
	mov r6, r3, asr #1
	add r0, r3, r6, lsr #30
	add r1, r2, r1, asr #2
	add r1, r1, r0, asr #2
	mov r0, #5
	mla r4, r3, r0, r1
	ldr r3, _02308EE0 ; =0x92492493
	mov r1, r4, lsr #0x1f
	smull r2, r0, r3, r4
	add r0, r4, r0
	mov r0, r0, asr #2
	ldr r2, _02308EE4 ; =0x00000007
	add r0, r1, r0
	smull r0, r1, r2, r0
	sub r0, r4, r0
	ldmia sp!, {r4, r5, r6, lr}
	bx lr
	.align 2, 0
_02308ED4: .word 0x51EB851F
_02308ED8: .word 0x66666667
_02308EDC: .word 0x00000064
_02308EE0: .word 0x92492493
_02308EE4: .word 0x00000007
	arm_func_end FUN_02308E10

	arm_func_start FUN_02308EE8
FUN_02308EE8: ; 0x02308EE8
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl FUN_02303044
	mov r0, r4
	mov r1, #1
	bl FUN_023090D0
	ldmia sp!, {r4, lr}
	bx lr
	arm_func_end FUN_02308EE8

	arm_func_start FUN_02308F08
FUN_02308F08: ; 0x02308F08
	stmdb sp!, {r4, lr}
	mov r4, r0
	mov r1, #1
	bl FUN_02309174
	mov r0, r4
	bl FUN_02303060
	ldmia sp!, {r4, lr}
	bx lr
	arm_func_end FUN_02308F08

	arm_func_start FUN_02308F28
FUN_02308F28: ; 0x02308F28
	stmdb sp!, {r4, r5, r6, lr}
	ldr r6, _02308F80 ; =0x02346920
	bl FUN_02304ED0
	ldr r1, [r6, #0x114]
	mov r5, r0
	ands r0, r1, #4
	beq _02308F5C
	add r4, r6, #0x10c
_02308F48:
	mov r0, r4
	bl FUN_023035DC
	ldr r0, [r6, #0x114]
	ands r0, r0, #4
	bne _02308F48
_02308F5C:
	mov r0, r5
	bl FUN_02304EE4
	ldr r0, [r6]
	ldr r0, [r0]
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	ldmia sp!, {r4, r5, r6, lr}
	bx lr
	.align 2, 0
_02308F80: .word 0x02346920
	arm_func_end FUN_02308F28

	arm_func_start FUN_02308F84
FUN_02308F84: ; 0x02308F84
	ldr r1, _02308F90 ; =0x023468AC
	str r0, [r1]
	bx lr
	.align 2, 0
_02308F90: .word 0x023468AC
	arm_func_end FUN_02308F84

	arm_func_start FUN_02308F94
FUN_02308F94: ; 0x02308F94
	stmdb sp!, {lr}
	sub sp, sp, #4
	bl FUN_02308FC0
	cmp r0, #0
	addne sp, sp, #4
	ldmneia sp!, {lr}
	bxne lr
	bl FUN_02305188
	add sp, sp, #4
	ldmia sp!, {lr}
	bx lr
	arm_func_end FUN_02308F94

	arm_func_start FUN_02308FC0
FUN_02308FC0: ; 0x02308FC0
	ldr r0, _02308FCC ; =0x023468AC
	ldr r0, [r0]
	bx lr
	.align 2, 0
_02308FCC: .word 0x023468AC
	arm_func_end FUN_02308FC0

	arm_func_start FUN_02308FD0
FUN_02308FD0: ; 0x02308FD0
	stmdb sp!, {r4, lr}
	sub sp, sp, #8
	ldr r4, _023090B0 ; =0x02346920
	ldr r1, _023090B4 ; =0x023468C0
	mvn r2, #2
	mov r0, #0
	str r2, [r4, #8]
	mov r2, #0x60
	str r0, [r4, #0xc]
	str r0, [r4, #0x18]
	str r1, [r4]
	bl FUN_02305538
	ldr r0, _023090B4 ; =0x023468C0
	mov r1, #0x60
	bl FUN_023040D4
	ldr r0, _023090B8 ; =0x027FFC40
	ldrh r0, [r0]
	cmp r0, #2
	beq _0230902C
	ldr r0, _023090BC ; =0x027FFE00
	ldr r1, _023090C0 ; =0x027FFA80
	mov r2, #0x160
	bl FUN_02305618
_0230902C:
	mov r2, #0
	str r2, [r4, #0x14]
	ldr r0, [r4, #0x14]
	mov r1, #4
	str r0, [r4, #0x10]
	str r2, [r4, #0x110]
	ldr r3, [r4, #0x110]
	mov r0, #0x400
	str r3, [r4, #0x10c]
	str r1, [r4, #0x108]
	str r0, [sp]
	ldr ip, [r4, #0x108]
	ldr r1, _023090C4 ; =FUN_02309AE8
	ldr r3, _023090C8 ; =0x02346F40
	add r0, r4, #0x44
	str ip, [sp, #4]
	bl FUN_02303770
	add r0, r4, #0x44
	bl FUN_02303528
	ldr r1, _023090CC ; =FUN_02309B44
	mov r0, #0xb
	bl FUN_02305A0C
	ldr r0, _023090B8 ; =0x027FFC40
	ldrh r0, [r0]
	cmp r0, #2
	addeq sp, sp, #8
	ldmeqia sp!, {r4, lr}
	bxeq lr
	mov r0, #1
	bl FUN_02308F84
	add sp, sp, #8
	ldmia sp!, {r4, lr}
	bx lr
	.align 2, 0
_023090B0: .word 0x02346920
_023090B4: .word 0x023468C0
_023090B8: .word 0x027FFC40
_023090BC: .word 0x027FFE00
_023090C0: .word 0x027FFA80
_023090C4: .word FUN_02309AE8
_023090C8: .word 0x02346F40
_023090CC: .word FUN_02309B44
	arm_func_end FUN_02308FD0

	arm_func_start FUN_023090D0
FUN_023090D0: ; 0x023090D0
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #4
	ldr r5, _02309170 ; =0x02346920
	mov r7, r0
	mov r6, r1
	bl FUN_02304ED0
	mov r1, r5
	mov r4, r0
	ldr r0, [r1, #8]
	cmp r0, r7
	bne _02309108
	ldr r0, [r5, #0xc]
	cmp r0, #0
	bne _02309110
_02309108:
	bl FUN_02305188
	b _02309150
_02309110:
	ldr r0, [r5, #0x18]
	cmp r0, r6
	beq _02309120
	bl FUN_02305188
_02309120:
	ldr r0, [r5, #0xc]
	sub r0, r0, #1
	str r0, [r5, #0xc]
	ldr r0, [r5, #0xc]
	cmp r0, #0
	bne _02309150
	mvn r0, #2
	str r0, [r5, #8]
	mov r1, #0
	add r0, r5, #0x10
	str r1, [r5, #0x18]
	bl FUN_0230355C
_02309150:
	ldr r1, [r5]
	mov r2, #0
	mov r0, r4
	str r2, [r1]
	bl FUN_02304EE4
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, lr}
	bx lr
	.align 2, 0
_02309170: .word 0x02346920
	arm_func_end FUN_023090D0

	arm_func_start FUN_02309174
FUN_02309174: ; 0x02309174
	stmdb sp!, {r4, r5, r6, r7, r8, sb, lr}
	sub sp, sp, #4
	ldr r5, _0230920C ; =0x02346920
	mov r7, r0
	mov r6, r1
	bl FUN_02304ED0
	ldr r1, [r5, #8]
	mov r4, r0
	cmp r1, r7
	bne _023091B0
	ldr r0, [r5, #0x18]
	cmp r0, r6
	beq _023091E0
	bl FUN_02305188
	b _023091E0
_023091B0:
	ldr r0, [r5, #8]
	mvn r8, #2
	cmp r0, r8
	beq _023091D8
	add sb, r5, #0x10
_023091C4:
	mov r0, sb
	bl FUN_023035DC
	ldr r0, [r5, #8]
	cmp r0, r8
	bne _023091C4
_023091D8:
	str r7, [r5, #8]
	str r6, [r5, #0x18]
_023091E0:
	ldr r1, [r5, #0xc]
	mov r0, r4
	add r1, r1, #1
	str r1, [r5, #0xc]
	ldr r1, [r5]
	mov r2, #0
	str r2, [r1]
	bl FUN_02304EE4
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, r8, sb, lr}
	bx lr
	.align 2, 0
_0230920C: .word 0x02346920
	arm_func_end FUN_02309174

	arm_func_start FUN_02309210
FUN_02309210: ; 0x02309210
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	ldr r4, _02309254 ; =0x02346920
	mov r5, r0
	ldr r1, [r4, #0x108]
	add r0, r4, #0x44
	bl FUN_02303428
	add r0, r4, #0x44
	str r0, [r4, #0x104]
	str r5, [r4, #0x40]
	ldr r1, [r4, #0x114]
	orr r1, r1, #8
	str r1, [r4, #0x114]
	bl FUN_02303528
	add sp, sp, #4
	ldmia sp!, {r4, r5, lr}
	bx lr
	.align 2, 0
_02309254: .word 0x02346920
	arm_func_end FUN_02309210

	arm_func_start FUN_02309258
FUN_02309258: ; 0x02309258
	ldr r0, _02309260 ; =FUN_02309604
	bx lr
	.align 2, 0
_02309260: .word FUN_02309604
	arm_func_end FUN_02309258

	arm_func_start FUN_02309264
FUN_02309264: ; 0x02309264
	ldr ip, _0230926C ; =FUN_02308F28
	bx ip
	.align 2, 0
_0230926C: .word FUN_02308F28
	arm_func_end FUN_02309264

	arm_func_start FUN_02309270
FUN_02309270: ; 0x02309270
	stmdb sp!, {lr}
	sub sp, sp, #4
	ldr ip, _023092E8 ; =0x02346920
	ldr r0, [ip, #0x114]
	cmp r0, #0
	addne sp, sp, #4
	ldmneia sp!, {lr}
	bxne lr
	mov r0, #1
	str r0, [ip, #0x114]
	mov r3, #0
	str r3, [ip, #0x24]
	ldr r0, [ip, #0x24]
	mvn r1, #0
	str r0, [ip, #0x20]
	ldr r2, [ip, #0x20]
	ldr r0, _023092EC ; =0x02346F40
	str r2, [ip, #0x1c]
	str r1, [ip, #0x28]
	str r3, [ip, #0x38]
	str r3, [ip, #0x3c]
	str r3, [r0]
	bl FUN_02308FD0
	bl FUN_02309258
	ldr r1, _023092F0 ; =0x02346F60
	str r0, [r1]
	bl FUN_02309D9C
	add sp, sp, #4
	ldmia sp!, {lr}
	bx lr
	.align 2, 0
_023092E8: .word 0x02346920
_023092EC: .word 0x02346F40
_023092F0: .word 0x02346F60
	arm_func_end FUN_02309270

	arm_func_start FUN_023092F4
FUN_023092F4: ; 0x023092F4
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #4
	ldr r6, _02309408 ; =0x02346920
	mov sl, r0
	mov sb, r1
	mov r8, r2
	mov r7, r3
	ldr fp, _0230940C ; =0x02346F60
	bl FUN_02308F94
	bl FUN_02304ED0
	ldr r1, [r6, #0x114]
	mov r5, r0
	ands r0, r1, #4
	beq _02309344
	add r4, r6, #0x10c
_02309330:
	mov r0, r4
	bl FUN_023035DC
	ldr r0, [r6, #0x114]
	ands r0, r0, #4
	bne _02309330
_02309344:
	ldr r1, [r6, #0x114]
	ldr r0, [sp, #0x28]
	orr r1, r1, #4
	str r1, [r6, #0x114]
	ldr r1, [sp, #0x2c]
	str r0, [r6, #0x38]
	mov r0, r5
	str r1, [r6, #0x3c]
	bl FUN_02304EE4
	ldr r0, _02309410 ; =0x02346F40
	str sl, [r6, #0x28]
	ldr r0, [r0]
	cmp sl, #3
	add r0, sb, r0
	str r0, [r6, #0x1c]
	str r8, [r6, #0x20]
	str r7, [r6, #0x24]
	bhi _02309394
	mov r0, sl
	bl FUN_023052D0
_02309394:
	mov r0, fp
	bl FUN_02309704
	cmp r0, #0
	beq _023093C8
	ldr r0, [sp, #0x30]
	cmp r0, #0
	addne sp, sp, #4
	ldmneia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bxne lr
	bl FUN_02309264
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bx lr
_023093C8:
	ldr r0, [sp, #0x30]
	cmp r0, #0
	beq _023093E8
	ldr r0, _02309414 ; =FUN_0230941C
	bl FUN_02309210
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bx lr
_023093E8:
	ldr r1, _02309418 ; =0x023463B4
	mov r0, r6
	ldr r1, [r1, #4]
	str r1, [r6, #0x104]
	bl FUN_0230941C
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bx lr
	.align 2, 0
_02309408: .word 0x02346920
_0230940C: .word 0x02346F60
_02309410: .word 0x02346F40
_02309414: .word FUN_0230941C
_02309418: .word 0x023463B4
	arm_func_end FUN_023092F4

	arm_func_start FUN_0230941C
FUN_0230941C: ; 0x0230941C
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #4
	ldr r4, _023094C0 ; =0x02346F60
	mov r0, r4
	bl FUN_02309A50
	cmp r0, #0
	beq _02309444
	ldr r1, [r4]
	mov r0, r4
	blx r1
_02309444:
	ldr r7, _023094C4 ; =0x02346920
	bl FUN_0230959C
	bl FUN_02309C14
	ldr r0, [r7]
	mov r1, #0
	str r1, [r0]
	ldr r6, [r7, #0x38]
	ldr r5, [r7, #0x3c]
	bl FUN_02304ED0
	ldr r1, [r7, #0x114]
	mov r4, r0
	bic r0, r1, #0x4c
	str r0, [r7, #0x114]
	add r0, r7, #0x10c
	bl FUN_0230355C
	ldr r0, [r7, #0x114]
	ands r0, r0, #0x10
	beq _02309494
	add r0, r7, #0x44
	bl FUN_02303528
_02309494:
	mov r0, r4
	bl FUN_02304EE4
	cmp r6, #0
	addeq sp, sp, #4
	ldmeqia sp!, {r4, r5, r6, r7, lr}
	bxeq lr
	mov r0, r5
	blx r6
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, lr}
	bx lr
	.align 2, 0
_023094C0: .word 0x02346F60
_023094C4: .word 0x02346920
	arm_func_end FUN_0230941C

	arm_func_start FUN_023094C8
FUN_023094C8: ; 0x023094C8
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	ldr r5, _02309598 ; =0x02346920
	bl FUN_02304ED0
	ldr r1, [r5, #0x114]
	mov r4, r0
	ands r0, r1, #4
	beq _023094FC
	add r6, r5, #0x10c
_023094E8:
	mov r0, r6
	bl FUN_023035DC
	ldr r0, [r5, #0x114]
	ands r0, r0, #4
	bne _023094E8
_023094FC:
	ldr r0, [r5, #0x114]
	mov r1, #0
	orr r0, r0, #4
	str r0, [r5, #0x114]
	str r1, [r5, #0x38]
	mov r0, r4
	str r1, [r5, #0x3c]
	bl FUN_02304EE4
	bl FUN_0230959C
	ldr r7, _02309598 ; =0x02346920
	mov r8, r0
	bl FUN_0230959C
	bl FUN_02309C14
	ldr r0, [r7]
	mov r1, #0
	str r1, [r0]
	ldr r6, [r7, #0x38]
	ldr r5, [r7, #0x3c]
	bl FUN_02304ED0
	ldr r1, [r7, #0x114]
	mov r4, r0
	bic r0, r1, #0x4c
	str r0, [r7, #0x114]
	add r0, r7, #0x10c
	bl FUN_0230355C
	ldr r0, [r7, #0x114]
	ands r0, r0, #0x10
	beq _02309574
	add r0, r7, #0x44
	bl FUN_02303528
_02309574:
	mov r0, r4
	bl FUN_02304EE4
	cmp r6, #0
	beq _0230958C
	mov r0, r5
	blx r6
_0230958C:
	mov r0, r8
	ldmia sp!, {r4, r5, r6, r7, r8, lr}
	bx lr
	.align 2, 0
_02309598: .word 0x02346920
	arm_func_end FUN_023094C8

	arm_func_start FUN_0230959C
FUN_0230959C: ; 0x0230959C
	stmdb sp!, {lr}
	sub sp, sp, #4
	mov r0, #0xb8000000
	mov r1, #0
	bl FUN_023099B0
	ldr r1, _023095F8 ; =0x0231CF38
	mov r0, #0x2000
	ldr r1, [r1]
	rsb r0, r0, #0
	ldr r2, [r1, #0x60]
	ldr r1, _023095FC ; =0x040001A4
	bic r2, r2, #0x7000000
	orr r2, r2, #0xa7000000
	and r0, r2, r0
	str r0, [r1]
_023095D8:
	ldr r0, [r1]
	ands r0, r0, #0x800000
	beq _023095D8
	ldr r0, _02309600 ; =0x04100010
	ldr r0, [r0]
	add sp, sp, #4
	ldmia sp!, {lr}
	bx lr
	.align 2, 0
_023095F8: .word 0x0231CF38
_023095FC: .word 0x040001A4
_02309600: .word 0x04100010
	arm_func_end FUN_0230959C

	arm_func_start FUN_02309604
FUN_02309604: ; 0x02309604
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #4
	mov sl, r0
	ldr sb, _023096F8 ; =0x02346920
	add r7, sl, #0x20
	ldr r5, _023096FC ; =0x04100010
	ldr r6, _02309700 ; =0x040001A4
	mov fp, #0
	mov r0, #0x200
	rsb r4, r0, #0
_0230962C:
	ldr r0, [sb, #0x1c]
	and r1, r0, r4
	cmp r1, r0
	bne _02309654
	ldr r8, [sb, #0x20]
	ands r0, r8, #3
	bne _02309654
	ldr r0, [sb, #0x24]
	cmp r0, #0x200
	bhs _0230965C
_02309654:
	mov r8, r7
	str r1, [sl, #8]
_0230965C:
	mov r0, r1, lsr #8
	orr r0, r0, #0xb7000000
	mov r1, r1, lsl #0x18
	bl FUN_023099B0
	ldr r1, [sl, #4]
	mov r0, fp
	str r1, [r6]
_02309678:
	ldr r2, [r6]
	ands r1, r2, #0x800000
	beq _02309694
	ldr r1, [r5]
	cmp r0, #0x200
	strlo r1, [r8, r0, lsl #2]
	addlo r0, r0, #1
_02309694:
	ands r1, r2, #0x80000000
	bne _02309678
	ldr r0, [sb, #0x20]
	cmp r8, r0
	bne _023096DC
	ldr r2, [sb, #0x1c]
	ldr r1, [sb, #0x20]
	ldr r0, [sb, #0x24]
	add r2, r2, #0x200
	add r1, r1, #0x200
	subs r0, r0, #0x200
	str r2, [sb, #0x1c]
	str r1, [sb, #0x20]
	str r0, [sb, #0x24]
	bne _0230962C
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bx lr
_023096DC:
	mov r0, sl
	bl FUN_02309A50
	cmp r0, #0
	bne _0230962C
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bx lr
	.align 2, 0
_023096F8: .word 0x02346920
_023096FC: .word 0x04100010
_02309700: .word 0x040001A4
	arm_func_end FUN_02309604

	arm_func_start FUN_02309704
FUN_02309704: ; 0x02309704
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #4
	ldr fp, _02309864 ; =0x02346920
	mov r7, #0
	ldr sb, [fp, #0x20]
	mov sl, r0
	mov r6, r7
	mov r5, r7
	mov r1, r7
	ands r4, sb, #0x1f
	ldr r8, [fp, #0x24]
	bne _02309740
	ldr r0, [fp, #0x28]
	cmp r0, #3
	movls r1, #1
_02309740:
	cmp r1, #0
	beq _02309794
	bl FUN_023049B8
	ldr r1, _02309868 ; =FUN_01FF8000
	add r2, sb, r8
	cmp r2, r1
	mov r3, #1
	mov r1, #0
	bls _0230976C
	cmp sb, #0x2000000
	movlo r1, r3
_0230976C:
	cmp r1, #0
	bne _0230978C
	cmp r0, r2
	bhs _02309788
	add r0, r0, #0x4000
	cmp r0, sb
	bhi _0230978C
_02309788:
	mov r3, #0
_0230978C:
	cmp r3, #0
	moveq r5, #1
_02309794:
	cmp r5, #0
	beq _023097B0
	ldr r1, [fp, #0x1c]
	ldr r0, _0230986C ; =0x000001FF
	orr r1, r1, r8
	ands r0, r1, r0
	moveq r6, #1
_023097B0:
	cmp r6, #0
	beq _023097C0
	cmp r8, #0
	movne r7, #1
_023097C0:
	ldr r0, _02309870 ; =0x0231CF38
	cmp r7, #0
	ldr r0, [r0]
	ldr r0, [r0, #0x60]
	bic r0, r0, #0x7000000
	orr r0, r0, #0xa1000000
	str r0, [sl, #4]
	beq _02309854
	bl FUN_02304ED0
	mov r5, r0
	mov r0, sb
	mov r1, r8
	bl FUN_02304104
	cmp r4, #0
	beq _0230981C
	sub sb, sb, r4
	mov r0, sb
	mov r1, #0x20
	bl FUN_023040B8
	add r0, sb, r8
	mov r1, #0x20
	bl FUN_023040B8
	add r8, r8, #0x20
_0230981C:
	mov r0, sb
	mov r1, r8
	bl FUN_0230409C
	bl FUN_023040F8
	ldr r1, _02309874 ; =FUN_02309878
	mov r0, #0x80000
	bl FUN_02302F00
	mov r0, #0x80000
	bl FUN_02302DCC
	mov r0, #0x80000
	bl FUN_02302E48
	mov r0, r5
	bl FUN_02304EE4
	bl FUN_02309958
_02309854:
	mov r0, r7
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bx lr
	.align 2, 0
_02309864: .word 0x02346920
_02309868: .word FUN_01FF8000
_0230986C: .word 0x000001FF
_02309870: .word 0x0231CF38
_02309874: .word FUN_02309878
	arm_func_end FUN_02309704

	arm_func_start FUN_02309878
FUN_02309878: ; 0x02309878
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #4
	ldr r0, _02309954 ; =0x02346920
	ldr r0, [r0, #0x28]
	bl FUN_023052D0
	ldr r0, _02309954 ; =0x02346920
	ldr r3, [r0, #0x1c]
	ldr r2, [r0, #0x20]
	ldr r1, [r0, #0x24]
	add r3, r3, #0x200
	add r2, r2, #0x200
	subs r1, r1, #0x200
	str r3, [r0, #0x1c]
	str r2, [r0, #0x20]
	str r1, [r0, #0x24]
	bne _02309944
	mov r0, #0x80000
	bl FUN_02302E00
	mov r0, #0x80000
	bl FUN_02302DCC
	ldr r7, _02309954 ; =0x02346920
	bl FUN_0230959C
	bl FUN_02309C14
	ldr r0, [r7]
	mov r1, #0
	str r1, [r0]
	ldr r6, [r7, #0x38]
	ldr r5, [r7, #0x3c]
	bl FUN_02304ED0
	ldr r1, [r7, #0x114]
	mov r4, r0
	bic r0, r1, #0x4c
	str r0, [r7, #0x114]
	add r0, r7, #0x10c
	bl FUN_0230355C
	ldr r0, [r7, #0x114]
	ands r0, r0, #0x10
	beq _02309918
	add r0, r7, #0x44
	bl FUN_02303528
_02309918:
	mov r0, r4
	bl FUN_02304EE4
	cmp r6, #0
	addeq sp, sp, #4
	ldmeqia sp!, {r4, r5, r6, r7, lr}
	bxeq lr
	mov r0, r5
	blx r6
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, lr}
	bx lr
_02309944:
	bl FUN_02309958
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, lr}
	bx lr
	.align 2, 0
_02309954: .word 0x02346920
	arm_func_end FUN_02309878

	arm_func_start FUN_02309958
FUN_02309958: ; 0x02309958
	stmdb sp!, {r4, lr}
	ldr r4, _023099A0 ; =0x02346920
	ldr r1, _023099A4 ; =0x04100010
	ldr r0, [r4, #0x28]
	ldr r2, [r4, #0x20]
	mov r3, #0x200
	bl FUN_02305750
	ldr r1, [r4, #0x1c]
	mov r0, r1, lsr #8
	orr r0, r0, #0xb7000000
	mov r1, r1, lsl #0x18
	bl FUN_023099B0
	ldr r0, _023099A8 ; =0x02346F60
	ldr r1, _023099AC ; =0x040001A4
	ldr r0, [r0, #4]
	str r0, [r1]
	ldmia sp!, {r4, lr}
	bx lr
	.align 2, 0
_023099A0: .word 0x02346920
_023099A4: .word 0x04100010
_023099A8: .word 0x02346F60
_023099AC: .word 0x040001A4
	arm_func_end FUN_02309958

	arm_func_start FUN_023099B0
FUN_023099B0: ; 0x023099B0
	ldr r3, _02309A28 ; =0x040001A4
_023099B4:
	ldr r2, [r3]
	ands r2, r2, #0x80000000
	bne _023099B4
	ldr r3, _02309A2C ; =0x040001A1
	mov ip, #0xc0
	ldr r2, _02309A30 ; =0x040001A8
	strb ip, [r3]
	mov ip, r0, lsr #0x18
	ldr r3, _02309A34 ; =0x040001A9
	strb ip, [r2]
	mov ip, r0, lsr #0x10
	ldr r2, _02309A38 ; =0x040001AA
	strb ip, [r3]
	mov ip, r0, lsr #8
	ldr r3, _02309A3C ; =0x040001AB
	strb ip, [r2]
	ldr r2, _02309A40 ; =0x040001AC
	strb r0, [r3]
	mov r3, r1, lsr #0x18
	ldr r0, _02309A44 ; =0x040001AD
	strb r3, [r2]
	mov r3, r1, lsr #0x10
	ldr r2, _02309A48 ; =0x040001AE
	strb r3, [r0]
	mov r3, r1, lsr #8
	ldr r0, _02309A4C ; =0x040001AF
	strb r3, [r2]
	strb r1, [r0]
	bx lr
	.align 2, 0
_02309A28: .word 0x040001A4
_02309A2C: .word 0x040001A1
_02309A30: .word 0x040001A8
_02309A34: .word 0x040001A9
_02309A38: .word 0x040001AA
_02309A3C: .word 0x040001AB
_02309A40: .word 0x040001AC
_02309A44: .word 0x040001AD
_02309A48: .word 0x040001AE
_02309A4C: .word 0x040001AF
	arm_func_end FUN_023099B0

	arm_func_start FUN_02309A50
FUN_02309A50: ; 0x02309A50
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	ldr r5, _02309AE4 ; =0x02346920
	mov r1, #0x200
	ldr r3, [r5, #0x1c]
	rsb r1, r1, #0
	ldr r2, [r0, #8]
	and r3, r3, r1
	cmp r3, r2
	bne _02309AC8
	ldr r2, [r5, #0x1c]
	ldr r1, [r5, #0x24]
	sub r3, r2, r3
	rsb r4, r3, #0x200
	cmp r4, r1
	movhi r4, r1
	add r0, r0, #0x20
	ldr r1, [r5, #0x20]
	mov r2, r4
	add r0, r0, r3
	bl FUN_02305618
	ldr r0, [r5, #0x1c]
	add r0, r0, r4
	str r0, [r5, #0x1c]
	ldr r0, [r5, #0x20]
	add r0, r0, r4
	str r0, [r5, #0x20]
	ldr r0, [r5, #0x24]
	sub r0, r0, r4
	str r0, [r5, #0x24]
_02309AC8:
	ldr r0, [r5, #0x24]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	add sp, sp, #4
	ldmia sp!, {r4, r5, lr}
	bx lr
	.align 2, 0
_02309AE4: .word 0x02346920
	arm_func_end FUN_02309A50

	arm_func_start FUN_02309AE8
FUN_02309AE8: ; 0x02309AE8
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #4
	ldr r5, _02309B40 ; =0x02346920
	mov r6, #0
	add r7, r5, #0x44
_02309AFC:
	bl FUN_02304ED0
	ldr r1, [r5, #0x114]
	mov r4, r0
	ands r0, r1, #8
	bne _02309B28
_02309B10:
	mov r0, r6
	str r7, [r5, #0x104]
	bl FUN_023035DC
	ldr r0, [r5, #0x114]
	ands r0, r0, #8
	beq _02309B10
_02309B28:
	mov r0, r4
	bl FUN_02304EE4
	ldr r1, [r5, #0x40]
	mov r0, r5
	blx r1
	b _02309AFC
	.align 2, 0
_02309B40: .word 0x02346920
	arm_func_end FUN_02309AE8

	arm_func_start FUN_02309B44
FUN_02309B44: ; 0x02309B44
	stmdb sp!, {lr}
	sub sp, sp, #4
	cmp r0, #0xb
	addne sp, sp, #4
	ldmneia sp!, {lr}
	bxne lr
	cmp r2, #0
	addeq sp, sp, #4
	ldmeqia sp!, {lr}
	bxeq lr
	ldr r1, _02309B90 ; =0x02346920
	ldr r0, [r1, #0x114]
	bic r0, r0, #0x20
	str r0, [r1, #0x114]
	ldr r0, [r1, #0x104]
	bl FUN_02303528
	add sp, sp, #4
	ldmia sp!, {lr}
	bx lr
	.align 2, 0
_02309B90: .word 0x02346920
	arm_func_end FUN_02309B44

	arm_func_start FUN_02309B94
FUN_02309B94: ; 0x02309B94
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #4
	mov r7, r0
	mov r6, r1
	mov r1, r7
	mov r0, #0xe
	mov r2, #0
	bl FUN_02305930
	cmp r0, #0
	addeq sp, sp, #4
	ldmeqia sp!, {r4, r5, r6, r7, lr}
	bxeq lr
	mov r5, #0xe
	mov r4, #0
_02309BCC:
	mov r0, r6
	blx SVC_WaitByLoop
	mov r0, r5
	mov r1, r7
	mov r2, r4
	bl FUN_02305930
	cmp r0, #0
	bne _02309BCC
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, lr}
	bx lr
	arm_func_end FUN_02309B94

	arm_func_start FUN_02309BF8
FUN_02309BF8: ; 0x02309BF8
	stmdb sp!, {lr}
	sub sp, sp, #4
	bl FUN_023094C8
	bl FUN_02309C14
	add sp, sp, #4
	ldmia sp!, {lr}
	bx lr
	arm_func_end FUN_02309BF8

	arm_func_start FUN_02309C14
FUN_02309C14: ; 0x02309C14
	stmdb sp!, {r4, lr}
	sub sp, sp, #8
	ldr r1, _02309C78 ; =0x027FFC10
	ldrh r1, [r1]
	cmp r1, #0
	ldreq r1, _02309C7C ; =0x027FF800
	ldrne r1, _02309C80 ; =0x027FFC00
	ldr r1, [r1]
	str r1, [sp]
	ldr r1, [sp]
	cmp r0, r1
	addeq sp, sp, #8
	ldmeqia sp!, {r4, lr}
	bxeq lr
	bl FUN_02304ED0
	mov r4, r0
	mov r0, #0xe
	mov r1, #0x11
	mov r2, #0
	bl FUN_02309D1C
	mov r0, r4
	bl FUN_02304EE4
	add sp, sp, #8
	ldmia sp!, {r4, lr}
	bx lr
	.align 2, 0
_02309C78: .word 0x027FFC10
_02309C7C: .word 0x027FF800
_02309C80: .word 0x027FFC00
	arm_func_end FUN_02309C14

	arm_func_start FUN_02309C84
FUN_02309C84: ; 0x02309C84
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	ldr r0, _02309CF4 ; =0x027FFFA8
	mov r5, #1
	ldrh r0, [r0]
	and r0, r0, #0x8000
	movs r0, r0, asr #0xf
	beq _02309CD0
	bl FUN_02307F6C
	cmp r0, #4
	bne _02309CC8
	ldr r4, _02309CF8 ; =0x000A3A47
_02309CB4:
	mov r0, r4
	bl _02304F40
	bl FUN_02307F6C
	cmp r0, #4
	beq _02309CB4
_02309CC8:
	cmp r0, #0
	moveq r5, #0
_02309CD0:
	cmp r5, #0
	beq _02309CE4
	mov r0, #1
	mov r1, r0
	bl FUN_02309B94
_02309CE4:
	bl FUN_02305188
	add sp, sp, #4
	ldmia sp!, {r4, r5, lr}
	bx lr
	.align 2, 0
_02309CF4: .word 0x027FFFA8
_02309CF8: .word 0x000A3A47
	arm_func_end FUN_02309C84

	arm_func_start FUN_02309CFC
FUN_02309CFC: ; 0x02309CFC
	ldr r0, _02309D08 ; =0x02347180
	ldr r0, [r0]
	bx lr
	.align 2, 0
_02309D08: .word 0x02347180
	arm_func_end FUN_02309CFC

	arm_func_start FUN_02309D0C
FUN_02309D0C: ; 0x02309D0C
	ldr r1, _02309D18 ; =0x02347184
	str r0, [r1]
	bx lr
	.align 2, 0
_02309D18: .word 0x02347184
	arm_func_end FUN_02309D0C

	arm_func_start FUN_02309D1C
FUN_02309D1C: ; 0x02309D1C
	stmdb sp!, {lr}
	sub sp, sp, #4
	and r0, r1, #0x3f
	cmp r0, #0x11
	bne _02309D84
	ldr r2, _02309D94 ; =0x02347180
	ldr r0, [r2]
	cmp r0, #0
	addne sp, sp, #4
	ldmneia sp!, {lr}
	bxne lr
	ldr r1, _02309D98 ; =0x02347184
	mov r0, #1
	ldr r1, [r1]
	str r0, [r2]
	cmp r1, #0
	beq _02309D64
	blx r1
_02309D64:
	cmp r0, #0
	addeq sp, sp, #4
	ldmeqia sp!, {lr}
	bxeq lr
	bl FUN_02309C84
	add sp, sp, #4
	ldmia sp!, {lr}
	bx lr
_02309D84:
	bl FUN_02305188
	add sp, sp, #4
	ldmia sp!, {lr}
	bx lr
	.align 2, 0
_02309D94: .word 0x02347180
_02309D98: .word 0x02347184
	arm_func_end FUN_02309D1C

	arm_func_start FUN_02309D9C
FUN_02309D9C: ; 0x02309D9C
	stmdb sp!, {lr}
	sub sp, sp, #4
	bl FUN_02305800
	ldr r1, _02309DCC ; =FUN_02309D1C
	mov r0, #0xe
	bl FUN_02305A0C
	ldr r0, _02309DD0 ; =0x02347184
	mov r1, #0
	str r1, [r0]
	add sp, sp, #4
	ldmia sp!, {lr}
	bx lr
	.align 2, 0
_02309DCC: .word FUN_02309D1C
_02309DD0: .word 0x02347184
	arm_func_end FUN_02309D9C

	arm_func_start FUN_02309DD4
FUN_02309DD4: ; 0x02309DD4
	stmdb sp!, {r4, lr}
	bl FUN_02304ED0
	ldr r1, _02309E04 ; =0x0234718C
	ldr r1, [r1]
	cmp r1, #0
	ldrne r4, [r1, #0x14c]
	moveq r4, #0
	bl FUN_02304EE4
	mov r0, r4, lsl #0x10
	mov r0, r0, lsr #0x10
	ldmia sp!, {r4, lr}
	bx lr
	.align 2, 0
_02309E04: .word 0x0234718C
	arm_func_end FUN_02309DD4

	arm_func_start FUN_02309E08
FUN_02309E08: ; 0x02309E08
	stmdb sp!, {r4, lr}
	bl FUN_02304ED0
	ldr r1, _02309E38 ; =0x0234718C
	ldr r1, [r1]
	cmp r1, #0
	addne r1, r1, #0x100
	ldrneh r4, [r1, #0x50]
	moveq r4, #0
	bl FUN_02304EE4
	mov r0, r4
	ldmia sp!, {r4, lr}
	bx lr
	.align 2, 0
_02309E38: .word 0x0234718C
	arm_func_end FUN_02309E08

	arm_func_start FUN_02309E3C
FUN_02309E3C: ; 0x02309E3C
	ldr r1, _02309E54 ; =0x027FFF96
	ldrh r0, [r1]
	ands r2, r0, #1
	bicne r0, r0, #1
	strneh r0, [r1]
	bx lr
	.align 2, 0
_02309E54: .word 0x027FFF96
	arm_func_end FUN_02309E3C

	arm_func_start FUN_02309E58
FUN_02309E58: ; 0x02309E58
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0xc
	ldr r0, _0230A220 ; =0x0234718C
	cmp r2, #0
	ldr r8, [r0]
	mov sl, r1
	addne sp, sp, #0xc
	ldmneia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bxne lr
	ldr r0, [r8, #0x10]
	mov r1, #0x100
	bl FUN_0230409C
	ldrh r0, [r8, #0x16]
	cmp r0, #0
	bne _02309EA0
	ldr r0, [r8, #4]
	mov r1, #0x800
	bl FUN_0230409C
_02309EA0:
	ldr r0, [r8, #0x10]
	cmp sl, r0
	beq _02309EB8
	mov r0, sl
	mov r1, #0x100
	bl FUN_0230409C
_02309EB8:
	ldrh r0, [sl]
	cmp r0, #0x2c
	blo _02309F70
	cmp r0, #0x80
	bne _02309EF4
	ldrh r0, [sl, #2]
	cmp r0, #0x13
	bne _02309EDC
	bl FUN_02305188
_02309EDC:
	ldr r1, [r8, #0xc8]
	cmp r1, #0
	beq _0230A1D8
	mov r0, sl
	blx r1
	b _0230A1D8
_02309EF4:
	cmp r0, #0x82
	bne _02309F48
	ldrh r0, [sl, #6]
	add r1, r8, r0, lsl #2
	ldr r0, [r1, #0xcc]
	cmp r0, #0
	beq _0230A1D8
	ldr r0, [r1, #0x10c]
	str r0, [sl, #0x1c]
	ldr r0, [r8, #0x14c]
	strh r0, [sl, #0x22]
	ldr r1, [r8, #4]
	ldr r0, [sl, #8]
	ldrh r1, [r1, #0x72]
	bl FUN_0230409C
	ldrh r1, [sl, #6]
	mov r0, sl
	add r1, r8, r1, lsl #2
	ldr r1, [r1, #0xcc]
	blx r1
	b _0230A1D8
_02309F48:
	cmp r0, #0x81
	bne _0230A1D8
	mov r0, #0xf
	strh r0, [sl]
	ldr r1, [sl, #0x1c]
	cmp r1, #0
	beq _0230A1D8
	mov r0, sl
	blx r1
	b _0230A1D8
_02309F70:
	cmp r0, #0xe
	bne _02309FB0
	ldrh r1, [sl, #4]
	ldr r0, _0230A224 ; =0x0000FFF5
	add r0, r1, r0
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	cmp r0, #1
	bhi _02309FB0
	ldrh r0, [sl, #2]
	cmp r0, #0
	bne _02309FB0
	ldr r1, [r8, #4]
	ldr r0, [sl, #8]
	ldrh r1, [r1, #0x72]
	bl FUN_0230409C
_02309FB0:
	ldrh r1, [sl]
	cmp r1, #2
	bne _02309FF8
	ldrh r0, [sl, #2]
	cmp r0, #0
	bne _02309FF8
	add r0, r8, r1, lsl #2
	ldr r4, [r0, #0x18]
	bl FUN_0230A528
	cmp r4, #0
	addeq sp, sp, #0xc
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bxeq lr
	mov r0, sl
	blx r4
	add sp, sp, #0xc
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bx lr
_02309FF8:
	add r0, r8, r1, lsl #2
	ldr r1, [r0, #0x18]
	cmp r1, #0
	beq _0230A028
	mov r0, sl
	blx r1
	ldr r0, _0230A228 ; =0x02347188
	ldrh r0, [r0]
	cmp r0, #0
	addeq sp, sp, #0xc
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bxeq lr
_0230A028:
	ldrh r0, [sl]
	cmp r0, #8
	beq _0230A03C
	cmp r0, #0xc
	bne _0230A1D8
_0230A03C:
	cmp r0, #8
	bne _0230A070
	add r0, sl, #0xa
	str r0, [sp]
	ldrh r0, [sl, #0x2c]
	add fp, sl, #0x14
	ldrh r7, [sl, #8]
	ldrh r6, [sl, #0x10]
	ldrh r4, [sl, #0x12]
	str r0, [sp, #4]
	ldrh sb, [sl, #0x2e]
	mov r5, #0
	b _0230A0A0
_0230A070:
	cmp r0, #0xc
	bne _0230A0A0
	ldrh r0, [sl, #0x16]
	mov r6, #0
	ldrh r7, [sl, #8]
	str r0, [sp, #4]
	add r0, sl, #0x10
	ldrh r5, [sl, #0xa]
	ldrh r4, [sl, #0xc]
	ldrh sb, [sl, #0x18]
	mov fp, r6
	str r0, [sp]
_0230A0A0:
	cmp r7, #7
	beq _0230A0B8
	cmp r7, #9
	beq _0230A0B8
	cmp r7, #0x1a
	bne _0230A1D8
_0230A0B8:
	cmp r7, #7
	ldreq r1, [r8, #0x14c]
	moveq r0, #1
	orreq r0, r1, r0, lsl r6
	streq r0, [r8, #0x14c]
	movne r0, #1
	mvnne r0, r0, lsl r6
	ldrne r1, [r8, #0x14c]
	add r3, r8, #0x100
	andne r0, r1, r0
	strne r0, [r8, #0x14c]
	ldr r0, _0230A22C ; =0x023471D8
	mov r1, #0
	mov r2, #0x44
	strh r5, [r3, #0x50]
	bl FUN_02305584
	ldr r3, _0230A22C ; =0x023471D8
	mov r1, #0
	mov r2, #0x82
	strh r2, [r3]
	strh r7, [r3, #4]
	strh r6, [r3, #0x12]
	strh r5, [r3, #0x20]
	strh r1, [r3, #2]
	str r1, [r3, #8]
	str r1, [r3, #0xc]
	strh r1, [r3, #0x10]
	ldr r1, [r8, #0x14c]
	ldr r2, _0230A230 ; =0x0000FFFF
	strh r1, [r3, #0x22]
	strh r2, [r3, #0x1a]
	ldr r0, [sp]
	ldr r1, _0230A234 ; =0x023471EC
	mov r2, #6
	strh r4, [r3, #0x3c]
	bl FUN_02305618
	cmp fp, #0
	beq _0230A164
	ldr r1, _0230A238 ; =0x023471FC
	mov r0, fp
	mov r2, #0x18
	bl FUN_023054F0
	b _0230A174
_0230A164:
	ldr r1, _0230A238 ; =0x023471FC
	mov r0, #0
	mov r2, #0x18
	bl FUN_023054D8
_0230A174:
	cmp r5, #0
	ldreq r1, [sp, #4]
	ldr r0, _0230A22C ; =0x023471D8
	movne r1, sb
	cmp r5, #0
	ldrne sb, [sp, #4]
	ldr r5, _0230A22C ; =0x023471D8
	strh r1, [r0, #0x40]
	mov r4, #0
	strh sb, [r5, #0x42]
_0230A19C:
	strh r4, [r5, #6]
	add r2, r8, r4, lsl #2
	ldr r0, [r2, #0xcc]
	cmp r0, #0
	beq _0230A1C4
	ldr r1, [r2, #0x10c]
	mov r0, r5
	str r1, [r5, #0x1c]
	ldr r1, [r2, #0xcc]
	blx r1
_0230A1C4:
	add r0, r4, #1
	mov r0, r0, lsl #0x10
	mov r4, r0, lsr #0x10
	cmp r4, #0x10
	blo _0230A19C
_0230A1D8:
	ldr r0, [r8, #0x10]
	mov r1, #0x100
	bl FUN_0230409C
	bl FUN_02309E3C
	ldr r0, [r8, #0x10]
	cmp sl, r0
	addeq sp, sp, #0xc
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bxeq lr
	ldrh r2, [sl]
	mov r0, sl
	mov r1, #0x100
	orr r2, r2, #0x8000
	strh r2, [sl]
	bl FUN_023040B8
	add sp, sp, #0xc
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bx lr
	.align 2, 0
_0230A220: .word 0x0234718C
_0230A224: .word 0x0000FFF5
_0230A228: .word 0x02347188
_0230A22C: .word 0x023471D8
_0230A230: .word 0x0000FFFF
_0230A234: .word 0x023471EC
_0230A238: .word 0x023471FC
	arm_func_end FUN_02309E58

	arm_func_start FUN_0230A23C
FUN_0230A23C: ; 0x0230A23C
	stmdb sp!, {r0, r1, r2, r3}
	stmdb sp!, {lr}
	sub sp, sp, #4
	bl FUN_0230A340
	cmp r0, #0
	addne sp, sp, #4
	ldmneia sp!, {lr}
	addne sp, sp, #0x10
	bxne lr
	ldr r0, _0230A2E0 ; =0x0234718C
	mov r1, #2
	ldr r0, [r0]
	ldr r0, [r0, #4]
	bl FUN_0230409C
	ldr r0, _0230A2E0 ; =0x0234718C
	add r1, sp, #8
	ldr r2, [r0]
	ldr r0, [sp, #8]
	ldr r2, [r2, #4]
	cmp r0, #0
	bic r1, r1, #3
	addeq sp, sp, #4
	add ip, r1, #4
	ldrh r3, [r2]
	mov r0, #3
	ldmeqia sp!, {lr}
	addeq sp, sp, #0x10
	bxeq lr
	mov r2, #0
_0230A2B0:
	add ip, ip, #4
	ldr r1, [ip, #-4]
	cmp r1, r3
	ldr r1, [sp, #8]
	moveq r0, r2
	subs r1, r1, #1
	str r1, [sp, #8]
	bne _0230A2B0
	add sp, sp, #4
	ldmia sp!, {lr}
	add sp, sp, #0x10
	bx lr
	.align 2, 0
_0230A2E0: .word 0x0234718C
	arm_func_end FUN_0230A23C

	arm_func_start FUN_0230A2E4
FUN_0230A2E4: ; 0x0230A2E4
	stmdb sp!, {lr}
	sub sp, sp, #4
	bl FUN_0230A340
	cmp r0, #0
	addne sp, sp, #4
	ldmneia sp!, {lr}
	bxne lr
	ldr r0, _0230A33C ; =0x0234718C
	mov r1, #2
	ldr r0, [r0]
	ldr r0, [r0, #4]
	bl FUN_0230409C
	ldr r0, _0230A33C ; =0x0234718C
	ldr r0, [r0]
	ldr r0, [r0, #4]
	ldrh r0, [r0]
	cmp r0, #1
	movls r0, #3
	movhi r0, #0
	add sp, sp, #4
	ldmia sp!, {lr}
	bx lr
	.align 2, 0
_0230A33C: .word 0x0234718C
	arm_func_end FUN_0230A2E4

	arm_func_start FUN_0230A340
FUN_0230A340: ; 0x0230A340
	ldr r0, _0230A358 ; =0x02347188
	ldrh r0, [r0]
	cmp r0, #0
	movne r0, #0
	moveq r0, #3
	bx lr
	.align 2, 0
_0230A358: .word 0x02347188
	arm_func_end FUN_0230A340

	arm_func_start FUN_0230A35C
FUN_0230A35C: ; 0x0230A35C
	ldr r0, _0230A368 ; =0x0234718C
	ldr r0, [r0]
	bx lr
	.align 2, 0
_0230A368: .word 0x0234718C
	arm_func_end FUN_0230A35C

	arm_func_start FUN_0230A36C
FUN_0230A36C: ; 0x0230A36C
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r4, r1
	bl FUN_0230A49C
	movs r5, r0
	moveq r0, #8
	ldmeqia sp!, {r4, r5, r6, lr}
	bxeq lr
	mov r0, r6
	mov r1, r5
	mov r2, r4
	bl FUN_02305618
	mov r0, r5
	mov r1, r4
	bl FUN_023040B8
	mov r1, r5
	mov r0, #0xa
	mov r2, #0
	bl FUN_02305930
	mov r4, r0
	ldr r0, _0230A3E0 ; =0x02347190
	mov r1, r5
	mov r2, #1
	bl FUN_02303F2C
	cmp r4, #0
	movlt r0, #8
	movge r0, #2
	ldmia sp!, {r4, r5, r6, lr}
	bx lr
	.align 2, 0
_0230A3E0: .word 0x02347190
	arm_func_end FUN_0230A36C

	arm_func_start FUN_0230A3E4
FUN_0230A3E4: ; 0x0230A3E4
	stmdb sp!, {r0, r1, r2, r3}
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	mov r4, r0
	bl FUN_0230A49C
	movs r5, r0
	addeq sp, sp, #4
	moveq r0, #8
	ldmeqia sp!, {r4, r5, lr}
	addeq sp, sp, #0x10
	bxeq lr
	strh r4, [r5]
	ldrh r2, [sp, #0x14]
	add r0, sp, #0x14
	bic r0, r0, #3
	mov r3, #0
	cmp r2, #0
	add r4, r0, #4
	ble _0230A44C
_0230A430:
	add r4, r4, #4
	ldr r1, [r4, #-4]
	add r0, r5, r3, lsl #2
	add r3, r3, #1
	str r1, [r0, #4]
	cmp r3, r2
	blt _0230A430
_0230A44C:
	mov r0, r5
	mov r1, #0x100
	bl FUN_023040B8
	mov r1, r5
	mov r0, #0xa
	mov r2, #0
	bl FUN_02305930
	mov r4, r0
	ldr r0, _0230A498 ; =0x02347190
	mov r1, r5
	mov r2, #1
	bl FUN_02303F2C
	cmp r4, #0
	movlt r0, #8
	movge r0, #2
	add sp, sp, #4
	ldmia sp!, {r4, r5, lr}
	add sp, sp, #0x10
	bx lr
	.align 2, 0
_0230A498: .word 0x02347190
	arm_func_end FUN_0230A3E4

	arm_func_start FUN_0230A49C
FUN_0230A49C: ; 0x0230A49C
	stmdb sp!, {lr}
	sub sp, sp, #4
	ldr r0, _0230A50C ; =0x02347190
	add r1, sp, #0
	mov r2, #0
	bl FUN_02303E80
	cmp r0, #0
	addeq sp, sp, #4
	moveq r0, #0
	ldmeqia sp!, {lr}
	bxeq lr
	ldr r0, [sp]
	mov r1, #2
	bl FUN_0230409C
	ldr r1, [sp]
	ldrh r0, [r1]
	ands r0, r0, #0x8000
	addne sp, sp, #4
	movne r0, r1
	ldmneia sp!, {lr}
	bxne lr
	ldr r0, _0230A50C ; =0x02347190
	mov r2, #1
	bl FUN_02303DCC
	mov r0, #0
	add sp, sp, #4
	ldmia sp!, {lr}
	bx lr
	.align 2, 0
_0230A50C: .word 0x02347190
	arm_func_end FUN_0230A49C

	arm_func_start FUN_0230A510
FUN_0230A510: ; 0x0230A510
	ldr r2, _0230A524 ; =0x0234718C
	ldr r2, [r2]
	add r0, r2, r0, lsl #2
	str r1, [r0, #0x18]
	bx lr
	.align 2, 0
_0230A524: .word 0x0234718C
	arm_func_end FUN_0230A510

	arm_func_start FUN_0230A528
FUN_0230A528: ; 0x0230A528
	stmdb sp!, {r4, lr}
	bl FUN_02304ED0
	mov r4, r0
	bl FUN_0230A340
	cmp r0, #0
	beq _0230A554
	mov r0, r4
	bl FUN_02304EE4
	mov r0, #3
	ldmia sp!, {r4, lr}
	bx lr
_0230A554:
	mov r0, #1
	mov r1, #0
	bl FUN_0230A23C
	cmp r0, #0
	ldmneia sp!, {r4, lr}
	bxne lr
	bl FUN_02309E3C
	mov r0, #0xa
	mov r1, #0
	bl FUN_02305A0C
	ldr r2, _0230A5A4 ; =0x0234718C
	mov r3, #0
	ldr r1, _0230A5A8 ; =0x02347188
	mov r0, r4
	str r3, [r2]
	strh r3, [r1]
	bl FUN_02304EE4
	mov r0, #0
	ldmia sp!, {r4, lr}
	bx lr
	.align 2, 0
_0230A5A4: .word 0x0234718C
_0230A5A8: .word 0x02347188
	arm_func_end FUN_0230A528

	arm_func_start FUN_0230A5AC
FUN_0230A5AC: ; 0x0230A5AC
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	mov r6, r0
	mov r5, r1
	mov r7, r2
	bl FUN_02304ED0
	ldr r1, _0230A78C ; =0x02347188
	mov r4, r0
	ldrh r1, [r1]
	cmp r1, #0
	beq _0230A5E4
	bl FUN_02304EE4
	mov r0, #3
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	bx lr
_0230A5E4:
	cmp r6, #0
	bne _0230A5FC
	bl FUN_02304EE4
	mov r0, #6
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	bx lr
_0230A5FC:
	cmp r5, #3
	bls _0230A614
	bl FUN_02304EE4
	mov r0, #6
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	bx lr
_0230A614:
	ands r1, r6, #0x1f
	beq _0230A62C
	bl FUN_02304EE4
	mov r0, #6
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	bx lr
_0230A62C:
	bl FUN_02305800
	mov r0, #0xa
	mov r1, #1
	bl FUN_023059E4
	cmp r0, #0
	bne _0230A658
	mov r0, r4
	bl FUN_02304EE4
	mov r0, #4
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	bx lr
_0230A658:
	mov r0, r6
	mov r1, r7
	bl FUN_0230409C
	mov r0, r5
	mov r1, r6
	mov r3, r7
	mov r2, #0
	bl FUN_02305448
	ldr r0, _0230A790 ; =0x0234718C
	add r1, r6, #0x200
	str r6, [r0]
	str r1, [r6]
	ldr r2, [r0]
	ldr r1, [r2]
	add r1, r1, #0x300
	str r1, [r2, #4]
	ldr r2, [r0]
	ldr r1, [r2, #4]
	add r1, r1, #0x800
	str r1, [r2, #0xc]
	ldr r1, [r0]
	ldr r0, [r1, #0xc]
	add r0, r0, #0x100
	str r0, [r1, #0x10]
	bl FUN_02309E3C
	ldr r1, _0230A790 ; =0x0234718C
	mov r3, #0
	ldr r0, [r1]
	strh r5, [r0, #0x14]
	ldr r0, [r1]
	str r3, [r0, #0x14c]
	ldr r0, [r1]
	add r0, r0, #0x100
	strh r3, [r0, #0x50]
	mov r2, r3
_0230A6E4:
	ldr r0, [r1]
	add r0, r0, r3, lsl #2
	str r2, [r0, #0xcc]
	ldr r0, [r1]
	add r0, r0, r3, lsl #2
	add r3, r3, #1
	str r2, [r0, #0x10c]
	cmp r3, #0x10
	blt _0230A6E4
	ldr r0, _0230A794 ; =0x02347190
	ldr r1, _0230A798 ; =0x023471B0
	mov r2, #0xa
	bl FUN_02303FD4
	ldr sb, _0230A79C ; =0x02347220
	mov sl, #0
	ldr r6, _0230A794 ; =0x02347190
	mov r8, #0x8000
	mov r7, #2
	mov r5, #1
_0230A730:
	mov r0, sb
	mov r1, r7
	strh r8, [sb]
	bl FUN_023040B8
	mov r0, r6
	mov r1, sb
	mov r2, r5
	bl FUN_02303F2C
	add sl, sl, #1
	cmp sl, #0xa
	add sb, sb, #0x100
	blt _0230A730
	ldr r1, _0230A7A0 ; =FUN_02309E58
	mov r0, #0xa
	bl FUN_02305A0C
	ldr r1, _0230A78C ; =0x02347188
	mov r2, #1
	mov r0, r4
	strh r2, [r1]
	bl FUN_02304EE4
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	bx lr
	.align 2, 0
_0230A78C: .word 0x02347188
_0230A790: .word 0x0234718C
_0230A794: .word 0x02347190
_0230A798: .word 0x023471B0
_0230A79C: .word 0x02347220
_0230A7A0: .word FUN_02309E58
	arm_func_end FUN_0230A5AC

	arm_func_start FUN_0230A7A4
FUN_0230A7A4: ; 0x0230A7A4
	stmdb sp!, {lr}
	sub sp, sp, #4
	mov r2, #0xf00
	bl FUN_0230A5AC
	cmp r0, #0
	ldreq r1, _0230A7D4 ; =0x0234718C
	moveq r2, #0
	ldreq r1, [r1]
	streqh r2, [r1, #0x16]
	add sp, sp, #4
	ldmia sp!, {lr}
	bx lr
	.align 2, 0
_0230A7D4: .word 0x0234718C
	arm_func_end FUN_0230A7A4

	arm_func_start FUN_0230A7D8
FUN_0230A7D8: ; 0x0230A7D8
	stmdb sp!, {lr}
	sub sp, sp, #0xc
	ldr r0, _0230A84C ; =0x0231CF3C
	ldr r0, [r0]
	cmp r0, #0x10000
	bne _0230A820
	bl FUN_02308D34
	add r0, sp, #0
	bl FUN_02308C74
	cmp r0, #0
	bne _0230A820
	ldr r2, [sp, #8]
	ldr r0, [sp, #4]
	ldr r1, _0230A84C ; =0x0231CF3C
	add r0, r2, r0, lsl #8
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	str r0, [r1]
_0230A820:
	ldr r1, _0230A84C ; =0x0231CF3C
	ldr r0, [r1]
	add r0, r0, #1
	mov r0, r0, lsl #0x10
	mov r2, r0, lsr #0x10
	mov r0, r2, lsl #0x10
	str r2, [r1]
	mov r0, r0, lsr #0x10
	add sp, sp, #0xc
	ldmia sp!, {lr}
	bx lr
	.align 2, 0
_0230A84C: .word 0x0231CF3C
	arm_func_end FUN_0230A7D8

	arm_func_start FUN_0230A850
FUN_0230A850: ; 0x0230A850
	stmdb sp!, {r4, lr}
	bl FUN_0230A35C
	mov r4, r0
	bl FUN_0230A340
	cmp r0, #0
	movne r0, #0
	ldmneia sp!, {r4, lr}
	bxne lr
	ldr r0, [r4, #4]
	mov r1, #2
	bl FUN_0230409C
	ldr r2, [r4, #4]
	ldrh r0, [r2]
	cmp r0, #9
	beq _0230A8A0
	cmp r0, #0xa
	beq _0230A8CC
	cmp r0, #0xb
	beq _0230A8CC
	b _0230A8E8
_0230A8A0:
	ldr r0, _0230A8F4 ; =0x00000182
	mov r1, #2
	add r0, r2, r0
	bl FUN_0230409C
	ldr r2, [r4, #4]
	add r0, r2, #0x100
	ldrh r0, [r0, #0x82]
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r4, lr}
	bxeq lr
_0230A8CC:
	add r0, r2, #0xbc
	mov r1, #2
	bl FUN_0230409C
	ldr r0, [r4, #4]
	ldrh r0, [r0, #0xbc]
	ldmia sp!, {r4, lr}
	bx lr
_0230A8E8:
	mov r0, #0
	ldmia sp!, {r4, lr}
	bx lr
	.align 2, 0
_0230A8F4: .word 0x00000182
	arm_func_end FUN_0230A850

	arm_func_start FUN_0230A8F8
FUN_0230A8F8: ; 0x0230A8F8
	stmdb sp!, {lr}
	sub sp, sp, #4
	bl FUN_0230A340
	cmp r0, #0
	movne r0, #0x8000
	ldreq r0, _0230A920 ; =0x027FFCFA
	ldreqh r0, [r0]
	add sp, sp, #4
	ldmia sp!, {lr}
	bx lr
	.align 2, 0
_0230A920: .word 0x027FFCFA
	arm_func_end FUN_0230A8F8

	arm_func_start FUN_0230A924
FUN_0230A924: ; 0x0230A924
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	bl FUN_0230A35C
	mov r4, r0
	mov r0, #2
	mov r1, #7
	mov r2, #8
	bl FUN_0230A23C
	cmp r0, #0
	addne sp, sp, #4
	movne r0, #0
	ldmneia sp!, {r4, r5, lr}
	bxne lr
	ldr r0, [r4, #4]
	mov r1, #4
	add r0, r0, #0xc
	bl FUN_0230409C
	ldr r1, [r4, #4]
	ldr r0, [r1, #0xc]
	cmp r0, #1
	addeq sp, sp, #4
	moveq r0, #0
	ldmeqia sp!, {r4, r5, lr}
	bxeq lr
	add r0, r1, #0x188
	mov r1, #2
	bl FUN_0230409C
	ldr r1, [r4, #4]
	add r0, r1, #0x100
	ldrh r0, [r0, #0x88]
	cmp r0, #0
	moveq r5, #1
	add r0, r1, #0x3e
	mov r1, #2
	movne r5, #0
	bl FUN_0230409C
	cmp r5, #1
	ldr r0, [r4, #4]
	addne sp, sp, #4
	ldrh r5, [r0, #0x3e]
	addne r0, r5, #0x51
	bicne r0, r0, #0x1f
	movne r0, r0, lsl #1
	ldmneia sp!, {r4, r5, lr}
	bxne lr
	add r0, r0, #0xf8
	mov r1, #2
	bl FUN_0230409C
	ldr r0, [r4, #4]
	add r1, r5, #0xc
	ldrh r0, [r0, #0xf8]
	mul r0, r1, r0
	add r0, r0, #0x29
	bic r0, r0, #0x1f
	mov r0, r0, lsl #1
	add sp, sp, #4
	ldmia sp!, {r4, r5, lr}
	bx lr
	arm_func_end FUN_0230A924

	arm_func_start FUN_0230AA0C
FUN_0230AA0C: ; 0x0230AA0C
	stmdb sp!, {r4, lr}
	bl FUN_0230A35C
	mov r4, r0
	mov r0, #2
	mov r1, #7
	mov r2, #8
	bl FUN_0230A23C
	cmp r0, #0
	movne r0, #0
	ldmneia sp!, {r4, lr}
	bxne lr
	ldr r0, [r4, #4]
	mov r1, #4
	add r0, r0, #0xc
	bl FUN_0230409C
	ldr r1, [r4, #4]
	ldr r0, [r1, #0xc]
	cmp r0, #1
	moveq r0, #0
	ldmeqia sp!, {r4, lr}
	bxeq lr
	add r0, r1, #0x3c
	mov r1, #4
	bl FUN_0230409C
	ldr r0, [r4, #4]
	ldrh r0, [r0, #0x3c]
	add r0, r0, #0x1f
	bic r0, r0, #0x1f
	ldmia sp!, {r4, lr}
	bx lr
	arm_func_end FUN_0230AA0C

	arm_func_start FUN_0230AA84
FUN_0230AA84: ; 0x0230AA84
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x48
	movs r5, r1
	mov r6, r0
	mov r4, r2
	beq _0230AAEC
	add r0, sp, #0
	mov r1, #0
	mov r2, #0x44
	bl FUN_02305584
	mov r3, #0
	ldr r1, _0230AB60 ; =0x0000FFFF
	mov r7, #0x82
	mov r2, #0x19
	add r0, sp, #0x14
	strh r7, [sp]
	strh r3, [sp, #2]
	strh r2, [sp, #4]
	strh r6, [sp, #6]
	str r3, [sp, #8]
	str r3, [sp, #0xc]
	strh r3, [sp, #0x10]
	strh r1, [sp, #0x1a]
	str r4, [sp, #0x1c]
	strh r3, [sp, #0x12]
	bl FUN_0230509C
_0230AAEC:
	bl FUN_02304ED0
	mov r8, r0
	bl FUN_0230A340
	movs r7, r0
	beq _0230AB18
	mov r0, r8
	bl FUN_02304EE4
	add sp, sp, #0x48
	mov r0, r7
	ldmia sp!, {r4, r5, r6, r7, r8, lr}
	bx lr
_0230AB18:
	bl FUN_0230A35C
	add r0, r0, r6, lsl #2
	str r5, [r0, #0xcc]
	str r4, [r0, #0x10c]
	cmp r5, #0
	beq _0230AB48
	bl FUN_02309DD4
	strh r0, [sp, #0x22]
	bl FUN_02309E08
	strh r0, [sp, #0x20]
	add r0, sp, #0
	blx r5
_0230AB48:
	mov r0, r8
	bl FUN_02304EE4
	mov r0, #0
	add sp, sp, #0x48
	ldmia sp!, {r4, r5, r6, r7, r8, lr}
	bx lr
	.align 2, 0
_0230AB60: .word 0x0000FFFF
	arm_func_end FUN_0230AA84

	arm_func_start FUN_0230AB64
FUN_0230AB64: ; 0x0230AB64
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r0
	bl FUN_02304ED0
	mov r5, r0
	bl FUN_0230A340
	movs r4, r0
	beq _0230AB94
	mov r0, r5
	bl FUN_02304EE4
	mov r0, r4
	ldmia sp!, {r4, r5, r6, lr}
	bx lr
_0230AB94:
	bl FUN_0230A35C
	str r6, [r0, #0xc8]
	mov r0, r5
	bl FUN_02304EE4
	mov r0, #0
	ldmia sp!, {r4, r5, r6, lr}
	bx lr
	arm_func_end FUN_0230AB64

	arm_func_start FUN_0230ABB0
FUN_0230ABB0: ; 0x0230ABB0
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0x2c
	mov r7, r0
	mov r6, r1
	mov r0, #1
	mov r1, #2
	mov r5, r2
	mov r4, r3
	bl FUN_0230A23C
	cmp r0, #0
	addne sp, sp, #0x2c
	ldmneia sp!, {r4, r5, r6, r7, lr}
	bxne lr
	cmp r6, #0
	addeq sp, sp, #0x2c
	moveq r0, #6
	ldmeqia sp!, {r4, r5, r6, r7, lr}
	bxeq lr
	ldrh r1, [r6]
	mov r0, r6
	mov r1, r1, lsl #1
	bl FUN_023040B8
	bl FUN_0230A35C
	add r1, r0, #0x100
	mov r2, #0
	strh r2, [r1, #0x50]
	str r2, [r0, #0x14c]
	mov r1, r7
	mov r0, #0xc
	bl FUN_0230A510
	mov r0, #0xc
	strh r0, [sp]
	str r6, [sp, #4]
	cmp r5, #0
	beq _0230AC50
	add r1, sp, #8
	mov r0, r5
	mov r2, #0x18
	bl FUN_02305618
	b _0230AC60
_0230AC50:
	add r0, sp, #8
	mov r1, #0
	mov r2, #0x18
	bl FUN_02305584
_0230AC60:
	ldrh r2, [sp, #0x40]
	add r0, sp, #0
	mov r1, #0x28
	str r4, [sp, #0x20]
	strh r2, [sp, #0x26]
	bl FUN_0230A36C
	cmp r0, #0
	moveq r0, #2
	add sp, sp, #0x2c
	ldmia sp!, {r4, r5, r6, r7, lr}
	bx lr
	arm_func_end FUN_0230ABB0

	arm_func_start FUN_0230AC8C
FUN_0230AC8C: ; 0x0230AC8C
	stmdb sp!, {r4, lr}
	mov r4, r0
	mov r0, #1
	mov r1, #5
	bl FUN_0230A23C
	cmp r0, #0
	ldmneia sp!, {r4, lr}
	bxne lr
	mov r1, r4
	mov r0, #0xb
	bl FUN_0230A510
	mov r0, #0xb
	mov r1, #0
	bl FUN_0230A3E4
	cmp r0, #0
	moveq r0, #2
	ldmia sp!, {r4, lr}
	bx lr
	arm_func_end FUN_0230AC8C

	arm_func_start FUN_0230ACD4
FUN_0230ACD4: ; 0x0230ACD4
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #0x14
	mov r5, r0
	mov r0, #3
	mov r4, r1
	mov r2, r0
	mov r1, #2
	mov r3, #5
	bl FUN_0230A23C
	cmp r0, #0
	addne sp, sp, #0x14
	ldmneia sp!, {r4, r5, lr}
	bxne lr
	cmp r4, #0
	addeq sp, sp, #0x14
	moveq r0, #6
	ldmeqia sp!, {r4, r5, lr}
	bxeq lr
	ldr r0, [r4]
	cmp r0, #0
	addeq sp, sp, #0x14
	moveq r0, #6
	ldmeqia sp!, {r4, r5, lr}
	bxeq lr
	ldrh r0, [r4, #4]
	cmp r0, #1
	blo _0230AD48
	cmp r0, #0xe
	bls _0230AD58
_0230AD48:
	add sp, sp, #0x14
	mov r0, #6
	ldmia sp!, {r4, r5, lr}
	bx lr
_0230AD58:
	mov r1, r5
	mov r0, #0xa
	bl FUN_0230A510
	mov r0, #0xa
	strh r0, [sp]
	ldrh r2, [r4, #4]
	add r0, sp, #0
	mov r1, #0x10
	strh r2, [sp, #2]
	ldr r2, [r4]
	str r2, [sp, #4]
	ldrh r2, [r4, #6]
	strh r2, [sp, #8]
	ldrb r2, [r4, #8]
	strb r2, [sp, #0xa]
	ldrb r2, [r4, #9]
	strb r2, [sp, #0xb]
	ldrb r2, [r4, #0xa]
	strb r2, [sp, #0xc]
	ldrb r2, [r4, #0xb]
	strb r2, [sp, #0xd]
	ldrb r2, [r4, #0xc]
	strb r2, [sp, #0xe]
	ldrb r2, [r4, #0xd]
	strb r2, [sp, #0xf]
	bl FUN_0230A36C
	cmp r0, #0
	moveq r0, #2
	add sp, sp, #0x14
	ldmia sp!, {r4, r5, lr}
	bx lr
	arm_func_end FUN_0230ACD4

	arm_func_start FUN_0230ADD4
FUN_0230ADD4: ; 0x0230ADD4
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	mov r5, r0
	mov r4, r1
	mov r0, #1
	mov r1, #2
	bl FUN_0230A23C
	cmp r0, #0
	addne sp, sp, #4
	ldmneia sp!, {r4, r5, lr}
	bxne lr
	bl FUN_0230A35C
	add r1, r0, #0x100
	mov r2, #0
	strh r2, [r1, #0x50]
	str r2, [r0, #0x14c]
	mov r1, r5
	mov r0, #8
	bl FUN_0230A510
	mov r2, r4
	mov r0, #8
	mov r1, #1
	bl FUN_0230A3E4
	cmp r0, #0
	moveq r0, #2
	add sp, sp, #4
	ldmia sp!, {r4, r5, lr}
	bx lr
	arm_func_end FUN_0230ADD4

	arm_func_start FUN_0230AE44
FUN_0230AE44: ; 0x0230AE44
	ldrh r1, [r0, #4]
	cmp r1, #0x70
	movhi r0, #0
	bxhi lr
	ldrh r1, [r0, #0x18]
	cmp r1, #0xa
	blo _0230AE68
	cmp r1, #0x3e8
	bls _0230AE70
_0230AE68:
	mov r0, #0
	bx lr
_0230AE70:
	ldrh r0, [r0, #0x32]
	cmp r0, #1
	blo _0230AE84
	cmp r0, #0xe
	bls _0230AE8C
_0230AE84:
	mov r0, #0
	bx lr
_0230AE8C:
	mov r0, #1
	bx lr
	arm_func_end FUN_0230AE44

	arm_func_start FUN_0230AE94
FUN_0230AE94: ; 0x0230AE94
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	mov r5, r0
	mov r4, r1
	mov r0, #1
	mov r1, #2
	bl FUN_0230A23C
	cmp r0, #0
	addne sp, sp, #4
	ldmneia sp!, {r4, r5, lr}
	bxne lr
	cmp r4, #0
	addeq sp, sp, #4
	moveq r0, #6
	ldmeqia sp!, {r4, r5, lr}
	bxeq lr
	ldrh r0, [r4, #4]
	cmp r0, #0
	beq _0230AEF8
	ldr r0, [r4]
	cmp r0, #0
	addeq sp, sp, #4
	moveq r0, #6
	ldmeqia sp!, {r4, r5, lr}
	bxeq lr
_0230AEF8:
	ldrh r1, [r4, #0x14]
	ldrh r0, [r4, #0x34]
	cmp r1, #0
	movne r2, #0x2a
	moveq r2, #0
	add r0, r0, r2
	cmp r0, #0x200
	bgt _0230AF34
	ldrh r0, [r4, #0x36]
	cmp r1, #0
	movne r1, #6
	moveq r1, #0
	add r0, r0, r1
	cmp r0, #0x200
	ble _0230AF44
_0230AF34:
	add sp, sp, #4
	mov r0, #6
	ldmia sp!, {r4, r5, lr}
	bx lr
_0230AF44:
	mov r0, r4
	bl FUN_0230AE44
	mov r1, r5
	mov r0, #7
	bl FUN_0230A510
	mov r0, r4
	mov r1, #0x40
	bl FUN_023040B8
	ldrh r1, [r4, #4]
	cmp r1, #0
	beq _0230AF78
	ldr r0, [r4]
	bl FUN_023040B8
_0230AF78:
	mov r2, r4
	mov r0, #7
	mov r1, #1
	bl FUN_0230A3E4
	cmp r0, #0
	moveq r0, #2
	add sp, sp, #4
	ldmia sp!, {r4, r5, lr}
	bx lr
	arm_func_end FUN_0230AE94

	arm_func_start FUN_0230AF9C
FUN_0230AF9C: ; 0x0230AF9C
	stmdb sp!, {r4, lr}
	mov r4, r0
	mov r0, #1
	mov r1, #2
	bl FUN_0230A23C
	cmp r0, #0
	ldmneia sp!, {r4, lr}
	bxne lr
	mov r1, r4
	mov r0, #2
	bl FUN_0230A510
	mov r0, #2
	mov r1, #0
	bl FUN_0230A3E4
	cmp r0, #0
	moveq r0, #2
	ldmia sp!, {r4, lr}
	bx lr
	arm_func_end FUN_0230AF9C

	arm_func_start FUN_0230AFE4
FUN_0230AFE4: ; 0x0230AFE4
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl FUN_0230A2E4
	cmp r0, #0
	ldmneia sp!, {r4, lr}
	bxne lr
	mov r1, r4
	mov r0, #1
	bl FUN_0230A510
	mov r0, #1
	mov r1, #0
	bl FUN_0230A3E4
	cmp r0, #0
	moveq r0, #2
	ldmia sp!, {r4, lr}
	bx lr
	arm_func_end FUN_0230AFE4

	arm_func_start FUN_0230B024
FUN_0230B024: ; 0x0230B024
	stmdb sp!, {r4, lr}
	sub sp, sp, #8
	mov r4, r1
	mov r1, r2
	bl FUN_0230A7A4
	cmp r0, #0
	addne sp, sp, #8
	ldmneia sp!, {r4, lr}
	bxne lr
	mov r1, r4
	mov r0, #0
	bl FUN_0230A510
	bl FUN_0230A35C
	mov r3, r0
	ldr r1, [r3, #0x10]
	mov r0, #0
	str r1, [sp]
	ldr r2, [r3]
	ldr r3, [r3, #4]
	mov r1, #3
	bl FUN_0230A3E4
	cmp r0, #0
	moveq r0, #2
	add sp, sp, #8
	ldmia sp!, {r4, lr}
	bx lr
	arm_func_end FUN_0230B024

	arm_func_start FUN_0230B08C
FUN_0230B08C: ; 0x0230B08C
	stmdb sp!, {r4, r5, r6, r7, r8, sb, lr}
	sub sp, sp, #0x14
	mov sb, r0
	mov r8, r1
	mov r7, r2
	mov r6, r3
	mov r5, #1
	bl FUN_0230A35C
	ldr r4, [r0, #4]
	mov r0, #2
	mov r1, #9
	mov r2, #0xa
	bl FUN_0230A23C
	cmp r0, #0
	addne sp, sp, #0x14
	ldmneia sp!, {r4, r5, r6, r7, r8, sb, lr}
	bxne lr
	add r0, r4, #0x3c
	mov r1, #2
	bl FUN_0230409C
	add r0, r4, #0x188
	mov r1, #2
	bl FUN_0230409C
	add r0, r4, #0x100
	ldrh r0, [r0, #0x88]
	cmp r0, #0
	bne _0230B11C
	ldr r0, _0230B1E4 ; =0x00000182
	mov r1, #2
	add r0, r4, r0
	bl FUN_0230409C
	add r2, r4, #0x100
	add r0, r4, #0x86
	mov r1, #2
	ldrh r5, [r2, #0x82]
	bl FUN_0230409C
_0230B11C:
	cmp r7, #0
	addeq sp, sp, #0x14
	moveq r0, #6
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, lr}
	bxeq lr
	cmp r5, #0
	addeq sp, sp, #0x14
	moveq r0, #7
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, lr}
	bxeq lr
	add r0, r4, #0x7c
	mov r1, #2
	bl FUN_0230409C
	ldr r0, [r4, #0x7c]
	cmp r7, r0
	addeq sp, sp, #0x14
	moveq r0, #6
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, lr}
	bxeq lr
	cmp r6, #0x200
	addhi sp, sp, #0x14
	movhi r0, #6
	ldmhiia sp!, {r4, r5, r6, r7, r8, sb, lr}
	bxhi lr
	cmp r6, #0
	addeq sp, sp, #0x14
	moveq r0, #6
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, lr}
	bxeq lr
	mov r0, r7
	mov r1, r6
	bl FUN_023040B8
	ldrh r2, [sp, #0x30]
	ldrh r1, [sp, #0x34]
	ldrh r0, [sp, #0x38]
	str r2, [sp]
	str r1, [sp, #4]
	str r0, [sp, #8]
	str sb, [sp, #0xc]
	mov r2, r7
	mov r3, r6
	mov r0, #0xf
	mov r1, #7
	str r8, [sp, #0x10]
	bl FUN_0230A3E4
	cmp r0, #0
	moveq r0, #2
	add sp, sp, #0x14
	ldmia sp!, {r4, r5, r6, r7, r8, sb, lr}
	bx lr
	.align 2, 0
_0230B1E4: .word 0x00000182
	arm_func_end FUN_0230B08C

	arm_func_start FUN_0230B1E8
FUN_0230B1E8: ; 0x0230B1E8
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x28
	mov r6, r1
	mov r7, r0
	mov r5, r2
	add r1, sp, #8
	mov r0, #0
	mov r2, #0x1c
	mov r4, r3
	bl FUN_0230550C
	ldrh lr, [sp, #0x44]
	ldr r1, [sp, #0x58]
	ldrh ip, [sp, #0x48]
	ldr r0, [sp, #0x54]
	ldr r8, _0230B288 ; =0x00001E03
	cmp r0, #0
	ldr r3, [sp, #0x4c]
	ldr r2, [sp, #0x50]
	strb r1, [sp, #0x22]
	strh ip, [sp, #0x1e]
	strb r3, [sp, #0x20]
	strb r2, [sp, #0x21]
	ldrh r1, [sp, #0x40]
	str r8, [sp, #8]
	orrne r0, r8, #4
	strne r0, [sp, #8]
	strh lr, [sp, #0xc]
	strh lr, [sp, #0xe]
	strneh lr, [sp, #0x10]
	str r1, [sp]
	add ip, sp, #8
	mov r0, r7
	mov r1, r6
	mov r2, r5
	mov r3, r4
	str ip, [sp, #4]
	bl FUN_0230B28C
	add sp, sp, #0x28
	ldmia sp!, {r4, r5, r6, r7, r8, lr}
	bx lr
	.align 2, 0
_0230B288: .word 0x00001E03
	arm_func_end FUN_0230B1E8

	arm_func_start FUN_0230B28C
FUN_0230B28C: ; 0x0230B28C
	stmdb sp!, {r4, r5, r6, r7, r8, sb, lr}
	sub sp, sp, #0x34
	mov sb, r0
	mov r8, r1
	mov r7, r2
	mov r6, r3
	bl FUN_0230A35C
	ldr r5, [r0, #4]
	mov r0, #2
	mov r1, #7
	mov r2, #8
	bl FUN_0230A23C
	cmp r0, #0
	addne sp, sp, #0x34
	ldmneia sp!, {r4, r5, r6, r7, r8, sb, lr}
	bxne lr
	add r0, r5, #0x188
	mov r1, #2
	bl FUN_0230409C
	add r0, r5, #0xc6
	mov r1, #2
	bl FUN_0230409C
	add r0, r5, #0x100
	ldrh r0, [r0, #0x88]
	cmp r0, #0
	beq _0230B30C
	ldrh r0, [r5, #0xc6]
	cmp r0, #1
	addne sp, sp, #0x34
	movne r0, #3
	ldmneia sp!, {r4, r5, r6, r7, r8, sb, lr}
	bxne lr
_0230B30C:
	add r0, r5, #0xc
	mov r1, #4
	bl FUN_0230409C
	ldr r0, [r5, #0xc]
	cmp r0, #1
	addeq sp, sp, #0x34
	moveq r0, #3
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, lr}
	bxeq lr
	ands r0, r7, #0x3f
	addne sp, sp, #0x34
	movne r0, #6
	ldmneia sp!, {r4, r5, r6, r7, r8, sb, lr}
	bxne lr
	ldrh r4, [sp, #0x50]
	ands r0, r4, #0x1f
	addne sp, sp, #0x34
	movne r0, #6
	ldmneia sp!, {r4, r5, r6, r7, r8, sb, lr}
	bxne lr
	add r0, r5, #0x9c
	mov r1, #2
	bl FUN_0230409C
	ldrh r0, [r5, #0x9c]
	cmp r0, #0
	bne _0230B3A4
	bl FUN_0230A924
	cmp r7, r0
	addlt sp, sp, #0x34
	movlt r0, #6
	ldmltia sp!, {r4, r5, r6, r7, r8, sb, lr}
	bxlt lr
	bl FUN_0230AA0C
	cmp r4, r0
	addlt sp, sp, #0x34
	movlt r0, #6
	ldmltia sp!, {r4, r5, r6, r7, r8, sb, lr}
	bxlt lr
_0230B3A4:
	mov r1, sb
	mov r0, #0xe
	bl FUN_0230A510
	add r1, sp, #0
	mov r0, #0
	mov r2, #0x30
	bl FUN_0230550C
	ldrh r3, [sp, #0x50]
	mov r4, r7, lsr #1
	mov r5, #0xe
	ldr r0, [sp, #0x54]
	add r1, sp, #0x14
	mov r2, #0x1c
	strh r5, [sp]
	str r8, [sp, #4]
	str r4, [sp, #8]
	str r6, [sp, #0xc]
	str r3, [sp, #0x10]
	bl FUN_02305520
	add r0, sp, #0
	mov r1, #0x30
	bl FUN_0230A36C
	cmp r0, #0
	moveq r0, #2
	add sp, sp, #0x34
	ldmia sp!, {r4, r5, r6, r7, r8, sb, lr}
	bx lr
	arm_func_end FUN_0230B28C

	arm_func_start FUN_0230B410
FUN_0230B410: ; 0x0230B410
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0xc
	mov r7, r0
	mov r6, r1
	mov r5, r2
	mov r4, r3
	bl FUN_0230A2E4
	cmp r0, #0
	addne sp, sp, #0xc
	ldmneia sp!, {r4, r5, r6, r7, lr}
	bxne lr
	mov r1, r7
	mov r0, #0x1d
	bl FUN_0230A510
	ldrh ip, [sp, #0x20]
	str r4, [sp]
	mov r2, r6
	mov r3, r5
	mov r0, #0x1d
	mov r1, #4
	str ip, [sp, #4]
	bl FUN_0230A3E4
	cmp r0, #0
	moveq r0, #2
	add sp, sp, #0xc
	ldmia sp!, {r4, r5, r6, r7, lr}
	bx lr
	arm_func_end FUN_0230B410

	arm_func_start FUN_0230B47C
FUN_0230B47C: ; 0x0230B47C
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	mov r5, r0
	mov r4, r1
	bl FUN_0230A2E4
	cmp r0, #0
	addne sp, sp, #4
	ldmneia sp!, {r4, r5, lr}
	bxne lr
	cmp r4, #0
	beq _0230B4BC
	cmp r4, #1
	addne sp, sp, #4
	movne r0, #6
	ldmneia sp!, {r4, r5, lr}
	bxne lr
_0230B4BC:
	mov r1, r5
	mov r0, #0x19
	bl FUN_0230A510
	mov r2, r4
	mov r0, #0x19
	mov r1, #1
	bl FUN_0230A3E4
	cmp r0, #0
	moveq r0, #2
	add sp, sp, #4
	ldmia sp!, {r4, r5, lr}
	bx lr
	arm_func_end FUN_0230B47C

	arm_func_start FUN_0230B4EC
FUN_0230B4EC: ; 0x0230B4EC
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	bl FUN_02304ED0
	mov r4, r0
	bl FUN_0230C404
	mov r1, #0x590
	mul lr, r5, r1
	ldr r3, _0230B578 ; =0x0234D6CC
	add r2, r0, lr
	ldr r1, [r3]
	ldrb r2, [r2, #0x4c5]
	add r1, r1, #0x1000
	mvn ip, #0
	str r5, [r1, #0x4ec]
	ldr r1, [r3]
	add r0, r0, #0x4d0
	add r0, r0, lr
	add r1, r1, #0x1000
	strb r2, [r1, #0x4f0]
	ldr r1, [r3]
	mov r2, #0xc0
	add r1, r1, #0x1000
	str ip, [r1, #0xb0c]
	ldr r1, [r3]
	add r1, r1, #0x1340
	bl FUN_023054F0
	ldr r0, _0230B578 ; =0x0234D6CC
	ldr r0, [r0]
	add r0, r0, #0x1340
	bl FUN_0230E8B0
	mov r5, r0
	mov r0, r4
	bl FUN_02304EE4
	mov r0, r5
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_0230B578: .word 0x0234D6CC
	arm_func_end FUN_0230B4EC

	arm_func_start FUN_0230B57C
FUN_0230B57C: ; 0x0230B57C
	stmdb sp!, {r3, r4, lr}
	sub sp, sp, #0x34
	ldr r2, _0230B604 ; =0x0234D6CC
	str r1, [sp]
	ldr r2, [r2]
	mov r4, r0
	add r0, r2, #0x1300
	add r1, sp, #4
	mov r2, #0x16
	bl FUN_02305618
	mov r3, #1
	mov r2, #7
	add r0, sp, #0x23
	add r1, sp, #0
	strh r3, [sp, #0x1a]
	strb r4, [sp, #0x1c]
	strb r2, [sp, #0x20]
	bl FUN_0230ED44
	ldr r1, _0230B604 ; =0x0234D6CC
	strb r0, [sp, #0x22]
	ldr r1, [r1]
	add r0, sp, #0x20
	bl FUN_0230EC54
	cmp r0, #0
	addeq sp, sp, #0x34
	moveq r0, #0x15
	ldmeqia sp!, {r3, r4, pc}
	ldr r0, _0230B604 ; =0x0234D6CC
	ldr r1, _0230B608 ; =0x0000FFFF
	ldr r2, [r0]
	mov r0, #8
	bl FUN_0230C380
	add sp, sp, #0x34
	ldmia sp!, {r3, r4, pc}
	.align 2, 0
_0230B604: .word 0x0234D6CC
_0230B608: .word 0x0000FFFF
	arm_func_end FUN_0230B57C

	arm_func_start FUN_0230B60C
FUN_0230B60C: ; 0x0230B60C
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl FUN_02304ED0
	ldr r1, _0230B630 ; =0x0234D6CC
	ldr r1, [r1]
	add r1, r1, #0x1000
	str r4, [r1, #0x4e4]
	bl FUN_02304EE4
	ldmia sp!, {r4, pc}
	.align 2, 0
_0230B630: .word 0x0234D6CC
	arm_func_end FUN_0230B60C

	arm_func_start FUN_0230B634
FUN_0230B634: ; 0x0230B634
	ldr r0, _0230B650 ; =0x0234D6CC
	ldr r0, [r0]
	cmp r0, #0
	addne r0, r0, #0x1000
	ldrne r0, [r0, #0x4e8]
	moveq r0, #0
	bx lr
	.align 2, 0
_0230B650: .word 0x0234D6CC
	arm_func_end FUN_0230B634

	arm_func_start FUN_0230B654
FUN_0230B654: ; 0x0230B654
	stmdb sp!, {r4, lr}
	mov r4, #0
	bl FUN_02304ED0
	ldr r1, _0230B69C ; =0x0234D6CC
	ldr r2, [r1]
	cmp r2, #0
	beq _0230B690
	add r1, r2, #0x1000
	ldr r1, [r1, #0x4e8]
	cmp r1, #7
	addeq r1, r2, #0x1400
	ldreqh r2, [r1, #0xf2]
	cmpeq r2, #0
	moveq r4, #1
	streqh r4, [r1, #0xf2]
_0230B690:
	bl FUN_02304EE4
	mov r0, r4
	ldmia sp!, {r4, pc}
	.align 2, 0
_0230B69C: .word 0x0234D6CC
	arm_func_end FUN_0230B654

	arm_func_start FUN_0230B6A0
FUN_0230B6A0: ; 0x0230B6A0
	ldr r2, _0230B6B8 ; =0x0234D6CC
	ldr ip, _0230B6BC ; =FUN_0230B6C0
	ldr r2, [r2]
	add r2, r2, #0x1000
	str r0, [r2, #0x4e8]
	bx ip
	.align 2, 0
_0230B6B8: .word 0x0234D6CC
_0230B6BC: .word FUN_0230B6C0
	arm_func_end FUN_0230B6A0

	arm_func_start FUN_0230B6C0
FUN_0230B6C0: ; 0x0230B6C0
	stmdb sp!, {r3, lr}
	ldr r2, _0230B6E4 ; =0x0234D6CC
	ldr r2, [r2]
	add r2, r2, #0x1000
	ldr r2, [r2, #0x4e4]
	cmp r2, #0
	ldmeqia sp!, {r3, pc}
	blx r2
	ldmia sp!, {r3, pc}
	.align 2, 0
_0230B6E4: .word 0x0234D6CC
	arm_func_end FUN_0230B6C0

	arm_func_start FUN_0230B6E8
FUN_0230B6E8: ; 0x0230B6E8
	stmdb sp!, {r3, r4, r5, lr}
	mov r4, r0
	mov r5, r1
	cmp r4, #0xff
	bgt _0230B774
	bge _0230B8CC
	cmp r4, #0x19
	addls pc, pc, r4, lsl #2
	b _0230B9D0
_0230B70C: ; jump table
	b _0230B9D0 ; case 0
	b _0230B9D0 ; case 1
	b _0230B9D0 ; case 2
	b _0230B9D0 ; case 3
	b _0230B78C ; case 4
	b _0230B7B4 ; case 5
	b _0230B7C4 ; case 6
	b _0230B9D0 ; case 7
	b _0230B9D0 ; case 8
	b _0230B7D0 ; case 9
	b _0230B8B8 ; case 10
	b _0230B87C ; case 11
	b _0230B9D0 ; case 12
	b _0230B9D0 ; case 13
	b _0230B9D0 ; case 14
	b _0230B9D0 ; case 15
	b _0230B9D0 ; case 16
	b _0230B7E4 ; case 17
	b _0230B9D0 ; case 18
	b _0230B9D0 ; case 19
	b _0230B9D0 ; case 20
	b _0230B780 ; case 21
	b _0230B9D0 ; case 22
	b _0230B9D0 ; case 23
	b _0230B9D0 ; case 24
	b _0230B7DC ; case 25
_0230B774:
	cmp r4, #0x100
	beq _0230B934
	b _0230B9D0
_0230B780:
	mov r0, #1
	bl FUN_0230B6A0
	b _0230B9D0
_0230B78C:
	bl FUN_0230E69C
	bl FUN_0230E6B0
	mov r2, r0
	ldrh r1, [r5, #0x12]
	ldr r0, _0230B9FC ; =FUN_0230BE94
	bl FUN_0230C474
	ldr r0, _0230B9FC ; =FUN_0230BE94
	mov r1, #1
	bl FUN_0230C7B0
	b _0230B9D0
_0230B7B4:
	ldr r0, _0230B9FC ; =FUN_0230BE94
	mov r1, #0
	bl FUN_0230C7B0
	b _0230B9D0
_0230B7C4:
	mov r0, #2
	bl FUN_0230B6A0
	b _0230B9D0
_0230B7D0:
	mov r0, r5
	bl FUN_0230BA10
	b _0230B9D0
_0230B7DC:
	bl FUN_0230BCF0
	b _0230B9D0
_0230B7E4:
	ldr r0, _0230BA00 ; =0x0234D6CC
	ldr r2, [r0]
	add r0, r2, #0x1000
	ldr r1, [r0, #0x4e8]
	cmp r1, #0xa
	ldreqb r0, [r0, #0xb10]
	cmpeq r0, #1
	bne _0230B83C
	ldr r1, _0230BA04 ; =0x023FE840
	add r0, r2, #0x1400
	mov r2, #0xe4
	bl FUN_023054F0
	ldr r0, _0230BA00 ; =0x0234D6CC
	ldr r1, _0230BA08 ; =0x023FE800
	ldr r0, [r0]
	mov r2, #0x3c
	add r0, r0, #0x1340
	bl FUN_023054F0
	mov r0, #0xb
	mov r1, #0
	bl FUN_0230B6A0
	b _0230B9D0
_0230B83C:
	mov r0, #0xc
	mov r1, #0
	bl FUN_0230B6A0
	ldr r0, _0230BA00 ; =0x0234D6CC
	ldr r0, [r0]
	add r0, r0, #0x1000
	ldrb r1, [r0, #0x300]
	bic r1, r1, #0xf0
	strb r1, [r0, #0x300]
	bl FUN_0230C018
	ldr r0, _0230BA00 ; =0x0234D6CC
	mov r1, #0
	ldr r0, [r0]
	add r0, r0, #0x1000
	str r1, [r0, #0x4e8]
	b _0230B9D0
_0230B87C:
	mov r0, #3
	bl FUN_0230B6A0
	ldr r0, _0230BA00 ; =0x0234D6CC
	ldr r0, [r0]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4ec]
	bl FUN_0230CF50
	ldr r0, _0230BA00 ; =0x0234D6CC
	mov r1, #0
	ldr r0, [r0]
	add r0, r0, #0x1000
	str r1, [r0, #0x4ec]
	bl FUN_0230E994
	bl FUN_0230E5E4
	b _0230B9D0
_0230B8B8:
	mov r0, #4
	bl FUN_0230B6A0
	bl FUN_0230E994
	bl FUN_0230E5E4
	b _0230B9D0
_0230B8CC:
	ldrh r0, [r5, #2]
	cmp r0, #0xf
	addls pc, pc, r0, lsl #2
	b _0230B928
_0230B8DC: ; jump table
	b _0230B928 ; case 0
	b _0230B91C ; case 1
	b _0230B928 ; case 2
	b _0230B928 ; case 3
	b _0230B91C ; case 4
	b _0230B91C ; case 5
	b _0230B91C ; case 6
	b _0230B928 ; case 7
	b _0230B91C ; case 8
	b _0230B91C ; case 9
	b _0230B928 ; case 10
	b _0230B928 ; case 11
	b _0230B928 ; case 12
	b _0230B928 ; case 13
	b _0230B928 ; case 14
	b _0230B928 ; case 15
_0230B91C:
	mov r0, #9
	bl FUN_0230C068
	b _0230B9D0
_0230B928:
	mov r0, #8
	bl FUN_0230C068
	b _0230B9D0
_0230B934:
	ldrh r0, [r5]
	cmp r0, #0x1d
	addls pc, pc, r0, lsl #2
	b _0230B9C8
_0230B944: ; jump table
	b _0230B9BC ; case 0
	b _0230B9C8 ; case 1
	b _0230B9C8 ; case 2
	b _0230B9C8 ; case 3
	b _0230B9C8 ; case 4
	b _0230B9C8 ; case 5
	b _0230B9C8 ; case 6
	b _0230B9BC ; case 7
	b _0230B9BC ; case 8
	b _0230B9C8 ; case 9
	b _0230B9C8 ; case 10
	b _0230B9C8 ; case 11
	b _0230B9C8 ; case 12
	b _0230B9BC ; case 13
	b _0230B9BC ; case 14
	b _0230B9BC ; case 15
	b _0230B9C8 ; case 16
	b _0230B9BC ; case 17
	b _0230B9BC ; case 18
	b _0230B9C8 ; case 19
	b _0230B9C8 ; case 20
	b _0230B9BC ; case 21
	b _0230B9C8 ; case 22
	b _0230B9C8 ; case 23
	b _0230B9C8 ; case 24
	b _0230B9BC ; case 25
	b _0230B9C8 ; case 26
	b _0230B9C8 ; case 27
	b _0230B9C8 ; case 28
	b _0230B9BC ; case 29
_0230B9BC:
	mov r0, #9
	bl FUN_0230C068
	b _0230B9D0
_0230B9C8:
	mov r0, #8
	bl FUN_0230C068
_0230B9D0:
	cmp r4, #0x11
	ldmneia sp!, {r3, r4, r5, pc}
	ldr r0, _0230BA00 ; =0x0234D6CC
	ldr r2, _0230BA0C ; =0x00001B20
	ldr r1, [r0]
	mov r0, #0
	bl FUN_023054D8
	ldr r0, _0230BA00 ; =0x0234D6CC
	mov r1, #0
	str r1, [r0]
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_0230B9FC: .word FUN_0230BE94
_0230BA00: .word 0x0234D6CC
_0230BA04: .word 0x023FE840
_0230BA08: .word 0x023FE800
_0230BA0C: .word 0x00001B20
	arm_func_end FUN_0230B6E8

	arm_func_start FUN_0230BA10
FUN_0230BA10: ; 0x0230BA10
	stmdb sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x18
	ldr r1, _0230BCEC ; =0x0234D6CC
	mov r6, r0
	ldr r5, [r1]
	bl FUN_0230EA04
	mov r4, r0
	ldr r1, [r6, #0xc]
	add r0, sp, #0
	bl FUN_0230ED90
	ldrb r1, [sp]
	mov r6, r0
	cmp r1, #6
	addls pc, pc, r1, lsl #2
	b _0230BCE4
_0230BA4C: ; jump table
	b _0230BCE4 ; case 0
	b _0230BA68 ; case 1
	b _0230BA90 ; case 2
	b _0230BAE0 ; case 3
	b _0230BB68 ; case 4
	b _0230BCA8 ; case 5
	b _0230BAB8 ; case 6
_0230BA68:
	add r0, r5, #0x1000
	ldr r0, [r0, #0x4e8]
	cmp r0, #2
	addne sp, sp, #0x18
	ldmneia sp!, {r4, r5, r6, pc}
	mov r0, #5
	mov r1, #0
	bl FUN_0230B6A0
	add sp, sp, #0x18
	ldmia sp!, {r4, r5, r6, pc}
_0230BA90:
	add r0, r5, #0x1000
	ldr r0, [r0, #0x4e8]
	cmp r0, #5
	addne sp, sp, #0x18
	ldmneia sp!, {r4, r5, r6, pc}
	mov r0, #6
	mov r1, #0
	bl FUN_0230B6A0
	add sp, sp, #0x18
	ldmia sp!, {r4, r5, r6, pc}
_0230BAB8:
	add r0, r5, #0x1000
	ldr r0, [r0, #0x4e8]
	cmp r0, #5
	addne sp, sp, #0x18
	ldmneia sp!, {r4, r5, r6, pc}
	mov r0, #0xe
	mov r1, #0
	bl FUN_0230B6A0
	add sp, sp, #0x18
	ldmia sp!, {r4, r5, r6, pc}
_0230BAE0:
	add r1, r5, #0x1000
	ldr r1, [r1, #0x4e8]
	cmp r1, #5
	addne sp, sp, #0x18
	ldmneia sp!, {r4, r5, r6, pc}
	add r1, r5, #0x1400
	mov r2, #0xe4
	bl FUN_02305618
	add r0, r5, #0x2f8
	add r0, r0, #0x1800
	add r1, r5, #0x1400
	bl FUN_0230C080
	cmp r0, #0
	bne _0230BB28
	mov r0, #3
	bl FUN_0230C068
	add sp, sp, #0x18
	ldmia sp!, {r4, r5, r6, pc}
_0230BB28:
	add r1, r5, #0x1000
	ldrb r3, [r1, #0x300]
	and r2, r4, #0xff
	add r0, r5, #0x2f8
	bic r3, r3, #0xf0
	mov r2, r2, lsl #0x1c
	orr r2, r3, r2, lsr #24
	add r0, r0, #0x1800
	strb r2, [r1, #0x300]
	bl FUN_0230C200
	add r1, r5, #0x1400
	strh r0, [r1, #0xf6]
	mov r0, #7
	bl FUN_0230B6A0
	add sp, sp, #0x18
	ldmia sp!, {r4, r5, r6, pc}
_0230BB68:
	add r0, r5, #0x1000
	ldr r0, [r0, #0x4e8]
	cmp r0, #7
	addeq r0, r5, #0x1400
	ldreqh r0, [r0, #0xf2]
	cmpeq r0, #1
	bne _0230BB9C
	mov r0, #8
	mov r1, #0
	bl FUN_0230B6A0
	add r0, r5, #0x1400
	mov r1, #0
	strh r1, [r0, #0xf2]
_0230BB9C:
	add r0, r5, #0x1000
	ldr r0, [r0, #0x4e8]
	cmp r0, #8
	addne sp, sp, #0x18
	ldmneia sp!, {r4, r5, r6, pc}
	add r3, r5, #0x1400
	ldrh r0, [r3, #0xf6]
	cmp r0, #0
	beq _0230BBC8
	cmp r0, #0x3000
	blo _0230BBD8
_0230BBC8:
	mov r0, #5
	bl FUN_0230C068
	add sp, sp, #0x18
	ldmia sp!, {r4, r5, r6, pc}
_0230BBD8:
	ldrh r2, [sp, #4]
	cmp r2, r0
	bhs _0230BBFC
	add r1, r5, #0x2f8
	add r0, sp, #8
	add r1, r1, #0x1800
	bl FUN_0230C14C
	cmp r0, #0
	bne _0230BC08
_0230BBFC:
	mov r0, #4
	bl FUN_0230C068
	b _0230BC84
_0230BC08:
	add r0, r5, #0x1000
	ldrh r1, [sp, #2]
	ldrb r0, [r0, #0x4f0]
	cmp r1, r0
	beq _0230BC28
	mov r0, #6
	bl FUN_0230C068
	b _0230BC84
_0230BC28:
	ldrb r0, [sp, #0x14]
	ldr r1, [sp, #8]
	ldr r2, [sp, #0xc]
	bl FUN_0230C208
	cmp r0, #0
	bne _0230BC4C
	mov r0, #7
	bl FUN_0230C068
	b _0230BC84
_0230BC4C:
	ldrh r0, [sp, #4]
	bl FUN_0230BEE8
	cmp r0, #0
	bne _0230BC84
	ldr r1, [sp, #8]
	ldr r2, [sp, #0xc]
	mov r0, r6
	bl FUN_02305618
	add r0, r5, #0x1400
	ldrh r1, [r0, #0xf4]
	add r1, r1, #1
	strh r1, [r0, #0xf4]
	ldrh r0, [sp, #4]
	bl FUN_0230BF18
_0230BC84:
	bl FUN_0230BF54
	cmp r0, #0
	addne sp, sp, #0x18
	ldmneia sp!, {r4, r5, r6, pc}
	mov r0, #9
	mov r1, #0
	bl FUN_0230B6A0
	add sp, sp, #0x18
	ldmia sp!, {r4, r5, r6, pc}
_0230BCA8:
	add r0, r5, #0x1000
	ldr r1, [r0, #0x4e8]
	cmp r1, #9
	bne _0230BCCC
	mov r0, #0xa
	mov r1, #0
	bl FUN_0230B6A0
	add sp, sp, #0x18
	ldmia sp!, {r4, r5, r6, pc}
_0230BCCC:
	cmp r1, #0xa
	addne sp, sp, #0x18
	ldmneia sp!, {r4, r5, r6, pc}
	mov r1, #1
	strb r1, [r0, #0xb10]
	bl FUN_0230E5E4
_0230BCE4:
	add sp, sp, #0x18
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_0230BCEC: .word 0x0234D6CC
	arm_func_end FUN_0230BA10

	arm_func_start FUN_0230BCF0
FUN_0230BCF0: ; 0x0230BCF0
	stmdb sp!, {lr}
	sub sp, sp, #0x14
	ldr r0, _0230BE8C ; =0x0234D6CC
	ldr r1, [r0]
	add r0, r1, #0x1000
	ldr r0, [r0, #0x4e8]
	cmp r0, #0xa
	addls pc, pc, r0, lsl #2
	b _0230BD40
_0230BD14: ; jump table
	b _0230BD40 ; case 0
	b _0230BD40 ; case 1
	b _0230BD40 ; case 2
	b _0230BD40 ; case 3
	b _0230BD40 ; case 4
	b _0230BD6C ; case 5
	b _0230BD40 ; case 6
	b _0230BDA0 ; case 7
	b _0230BDCC ; case 8
	b _0230BE34 ; case 9
	b _0230BE60 ; case 10
_0230BD40:
	mov r2, #0
	add r0, sp, #0
	strb r2, [sp]
	bl FUN_0230EC54
	ldr r0, _0230BE8C ; =0x0234D6CC
	ldr r1, _0230BE90 ; =0x0000FFFF
	ldr r2, [r0]
	mov r0, #8
	bl FUN_0230C380
	add sp, sp, #0x14
	ldmia sp!, {pc}
_0230BD6C:
	bl FUN_0230C404
	ldr r1, _0230BE8C ; =0x0234D6CC
	mov r3, r0
	ldr r0, [r1]
	mov r1, #0x590
	add r0, r0, #0x1000
	ldr r2, [r0, #0x4ec]
	ldrb r0, [r0, #0x4f0]
	mla r1, r2, r1, r3
	ldr r1, [r1, #0x4c8]
	bl FUN_0230B57C
	add sp, sp, #0x14
	ldmia sp!, {pc}
_0230BDA0:
	mov r2, #8
	add r0, sp, #0
	strb r2, [sp]
	bl FUN_0230EC54
	ldr r0, _0230BE8C ; =0x0234D6CC
	ldr r1, _0230BE90 ; =0x0000FFFF
	ldr r2, [r0]
	mov r0, #8
	bl FUN_0230C380
	add sp, sp, #0x14
	ldmia sp!, {pc}
_0230BDCC:
	add r0, sp, #0
	mov r1, #0
	mov r2, #0x12
	bl FUN_02305584
	mov r0, #9
	strb r0, [sp]
	bl FUN_0230BF7C
	ldr r1, _0230BE8C ; =0x0234D6CC
	strh r0, [sp, #2]
	ldr r1, [r1]
	add r0, sp, #0
	add r2, r1, #0x1400
	ldrh r3, [r2, #0xf4]
	strb r3, [sp, #4]
	ldrh r2, [r2, #0xf4]
	and r2, r2, #0xff00
	mov r2, r2, asr #8
	strb r2, [sp, #5]
	bl FUN_0230EC54
	ldr r0, _0230BE8C ; =0x0234D6CC
	ldr r1, _0230BE90 ; =0x0000FFFF
	ldr r2, [r0]
	mov r0, #8
	bl FUN_0230C380
	add sp, sp, #0x14
	ldmia sp!, {pc}
_0230BE34:
	mov r2, #0xa
	add r0, sp, #0
	strb r2, [sp]
	bl FUN_0230EC54
	ldr r0, _0230BE8C ; =0x0234D6CC
	ldr r1, _0230BE90 ; =0x0000FFFF
	ldr r2, [r0]
	mov r0, #8
	bl FUN_0230C380
	add sp, sp, #0x14
	ldmia sp!, {pc}
_0230BE60:
	mov r2, #0xb
	add r0, sp, #0
	strb r2, [sp]
	bl FUN_0230EC54
	ldr r0, _0230BE8C ; =0x0234D6CC
	ldr r1, _0230BE90 ; =0x0000FFFF
	ldr r2, [r0]
	mov r0, #8
	bl FUN_0230C380
	add sp, sp, #0x14
	ldmia sp!, {pc}
	.align 2, 0
_0230BE8C: .word 0x0234D6CC
_0230BE90: .word 0x0000FFFF
	arm_func_end FUN_0230BCF0

	arm_func_start FUN_0230BE94
FUN_0230BE94: ; 0x0230BE94
	stmdb sp!, {r3, lr}
	cmp r0, #4
	addls pc, pc, r0, lsl #2
	ldmia sp!, {r3, pc}
_0230BEA4: ; jump table
	ldmia sp!, {r3, pc} ; case 0
	b _0230BEB8 ; case 1
	b _0230BEC4 ; case 2
	b _0230BED0 ; case 3
	b _0230BEDC ; case 4
_0230BEB8:
	mov r0, #0xf
	bl FUN_0230B6C0
	ldmia sp!, {r3, pc}
_0230BEC4:
	mov r0, #0x10
	bl FUN_0230B6C0
	ldmia sp!, {r3, pc}
_0230BED0:
	mov r0, #0x11
	bl FUN_0230B6C0
	ldmia sp!, {r3, pc}
_0230BEDC:
	mov r0, #0x12
	bl FUN_0230B6C0
	ldmia sp!, {r3, pc}
	arm_func_end FUN_0230BE94

	arm_func_start FUN_0230BEE8
FUN_0230BEE8: ; 0x0230BEE8
	ldr r1, _0230BF14 ; =0x0234D6CC
	and r2, r0, #7
	ldr r1, [r1]
	mov r3, #1
	add r0, r1, r0, asr #3
	add r0, r0, #0x1000
	ldrb r0, [r0, #0x4f8]
	tst r0, r3, lsl r2
	moveq r3, #0
	mov r0, r3
	bx lr
	.align 2, 0
_0230BF14: .word 0x0234D6CC
	arm_func_end FUN_0230BEE8

	arm_func_start FUN_0230BF18
FUN_0230BF18: ; 0x0230BF18
	stmdb sp!, {r3, lr}
	ldr r2, _0230BF50 ; =0x0234D6CC
	and r3, r0, #7
	ldr r1, [r2]
	mov ip, #1
	add r1, r1, r0, asr #3
	add r1, r1, #0x1000
	ldrb lr, [r1, #0x4f8]
	orr r3, lr, ip, lsl r3
	strb r3, [r1, #0x4f8]
	ldr r1, [r2]
	add r1, r1, #0x1000
	str r0, [r1, #0xb0c]
	ldmia sp!, {r3, pc}
	.align 2, 0
_0230BF50: .word 0x0234D6CC
	arm_func_end FUN_0230BF18

	arm_func_start FUN_0230BF54
FUN_0230BF54: ; 0x0230BF54
	ldr r0, _0230BF78 ; =0x0234D6CC
	ldr r0, [r0]
	add r0, r0, #0x1400
	ldrh r1, [r0, #0xf6]
	ldrh r0, [r0, #0xf4]
	sub r0, r1, r0
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	bx lr
	.align 2, 0
_0230BF78: .word 0x0234D6CC
	arm_func_end FUN_0230BF54

	arm_func_start FUN_0230BF7C
FUN_0230BF7C: ; 0x0230BF7C
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	ldr r6, _0230C014 ; =0x0234D6CC
	mov r5, #0
	ldr r2, [r6]
	mov r7, r5
	add r0, r2, #0x1000
	ldr r0, [r0, #0xb0c]
	add r4, r0, #1
_0230BF9C:
	cmp r4, #0
	blt _0230BFB4
	add r0, r2, #0x1400
	ldrh r0, [r0, #0xf6]
	cmp r4, r0
	blt _0230BFBC
_0230BFB4:
	mov r4, r7
	b _0230BFDC
_0230BFBC:
	mov r0, r4
	bl FUN_0230BEE8
	cmp r0, #0
	addne r4, r4, #1
	bne _0230BFDC
	mov r0, r4, lsl #0x10
	mov r0, r0, lsr #0x10
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_0230BFDC:
	ldr r2, [r6]
	add r1, r2, #0x1000
	ldr r0, [r1, #0xb0c]
	cmp r0, r4
	addeq r0, r2, #0x1400
	ldreqh r0, [r0, #0xf6]
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	add r5, r5, #1
	cmp r5, #0x3e8
	ble _0230BF9C
	mov r0, r4, lsl #0x10
	str r4, [r1, #0xb0c]
	mov r0, r0, lsr #0x10
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0230C014: .word 0x0234D6CC
	arm_func_end FUN_0230BF7C

	arm_func_start FUN_0230C018
FUN_0230C018: ; 0x0230C018
	stmdb sp!, {r3, lr}
	mov r0, #0
	mov r1, #0x2000000
	mov r2, #0x2c0000
	bl FUN_02305538
	mov r0, #0
	mov r1, #0x22c0000
	mov r2, #0x40000
	bl FUN_02305538
	ldr r1, _0230C060 ; =0x023FE800
	mov r0, #0
	mov r2, #0x124
	bl FUN_023054D8
	ldr r1, _0230C064 ; =0x027FFE00
	mov r0, #0
	mov r2, #0x160
	bl FUN_023054D8
	ldmia sp!, {r3, pc}
	.align 2, 0
_0230C060: .word 0x023FE800
_0230C064: .word 0x027FFE00
	arm_func_end FUN_0230C018

	arm_func_start FUN_0230C068
FUN_0230C068: ; 0x0230C068
	stmdb sp!, {r3, lr}
	strh r0, [sp]
	add r1, sp, #0
	mov r0, #0x13
	bl FUN_0230B6C0
	ldmia sp!, {r3, pc}
	arm_func_end FUN_0230C068

	arm_func_start FUN_0230C080
FUN_0230C080: ; 0x0230C080
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	mov sl, r0
	add r6, sl, #0xc
	cmp r1, #0
	mov r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	mov r2, r0
_0230C09C:
	str r0, [sl, r2, lsl #2]
	add r3, r1, r2, lsl #4
	add r2, r2, #1
	ldr r3, [r3, #0x14]
	and r2, r2, #0xff
	cmp r2, #3
	add r0, r0, r3
	blo _0230C09C
	mov sb, #0
	ldr r4, _0230C148 ; =0x0234D6CC
	strh sb, [r6]
	add r5, r1, #0xc
_0230C0CC:
	ldr r0, [r4]
	add r7, r5, sb, lsl #4
	add r0, r0, #0x1000
	ldr r1, [r0, #0x318]
	ldr r8, [r7, #8]
	add r0, r8, r1
	sub r0, r0, #1
	bl FUN_02313B18
	mov r1, sb, lsl #1
	ldrh r3, [r6, r1]
	mov r2, r0, lsl #0x10
	ldr r1, [r7, #4]
	add r2, r3, r2, lsr #16
	mov r3, r2, lsl #0x10
	mov r0, sb
	mov r2, r8
	mov r7, r3, lsr #0x10
	bl FUN_0230C2B4
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	cmp sb, #2
	addlo r0, r6, sb, lsl #1
	strloh r7, [r0, #2]
	add r0, sb, #1
	and sb, r0, #0xff
	strhsh r7, [sl, #0x12]
	cmp sb, #3
	blo _0230C0CC
	mov r0, #1
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	.align 2, 0
_0230C148: .word 0x0234D6CC
	arm_func_end FUN_0230C080

	arm_func_start FUN_0230C14C
FUN_0230C14C: ; 0x0230C14C
	stmdb sp!, {r3, r4, r5, lr}
	ldrh r4, [r1, #0x12]
	cmp r2, r4
	movhs r0, #0
	ldmhsia sp!, {r3, r4, r5, pc}
	mov ip, #2
_0230C164:
	add r4, r1, ip, lsl #1
	ldrh r4, [r4, #0xc]
	cmp r2, r4
	bhs _0230C184
	sub r4, ip, #1
	mov ip, r4, lsl #0x18
	movs ip, ip, asr #0x18
	bpl _0230C164
_0230C184:
	cmp ip, #0
	movlt r0, #0
	ldmltia sp!, {r3, r4, r5, pc}
	ldr r4, _0230C1FC ; =0x0234D6CC
	add r5, r1, ip, lsl #1
	ldr lr, [r4]
	ldrh r5, [r5, #0xc]
	add lr, lr, #0x1000
	ldr lr, [lr, #0x318]
	sub r5, r2, r5
	mul r2, r5, lr
	add r3, r3, #0xc
	add r5, r3, ip, lsl #4
	ldr r3, [r5, #8]
	sub lr, r3, r2
	str lr, [r0, #4]
	ldr r3, [r4]
	add r3, r3, #0x1000
	ldr r3, [r3, #0x318]
	cmp lr, r3
	strhi r3, [r0, #4]
	ldr r1, [r1, ip, lsl #2]
	add r1, r2, r1
	str r1, [r0, #8]
	ldr r1, [r5]
	add r1, r2, r1
	str r1, [r0]
	strb ip, [r0, #0xc]
	mov r0, #1
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_0230C1FC: .word 0x0234D6CC
	arm_func_end FUN_0230C14C

	arm_func_start FUN_0230C200
FUN_0230C200: ; 0x0230C200
	ldrh r0, [r0, #0x12]
	bx lr
	arm_func_end FUN_0230C200

	arm_func_start FUN_0230C208
FUN_0230C208: ; 0x0230C208
	ldr r3, _0230C2AC ; =0x02314228
	ldr r0, [r3, r0, lsl #2]
	cmp r0, #0
	beq _0230C24C
	cmp r0, #1
	beq _0230C268
	cmp r0, #2
	bne _0230C29C
	ldr r0, _0230C2B0 ; =0x027FFE00
	cmp r1, r0
	blo _0230C2A4
	add r1, r1, r2
	add r0, r0, #0x160
	cmp r1, r0
	bhi _0230C2A4
	mov r0, #1
	bx lr
_0230C24C:
	cmp r1, #0x2000000
	blo _0230C2A4
	add r0, r1, r2
	cmp r0, #0x22c0000
	bhi _0230C2A4
	mov r0, #1
	bx lr
_0230C268:
	cmp r1, #0x22c0000
	blo _0230C280
	add r0, r1, r2
	cmp r0, #0x2300000
	movls r0, #1
	bxls lr
_0230C280:
	cmp r1, #0x2000000
	blo _0230C2A4
	add r0, r1, r2
	cmp r0, #0x2300000
	bhi _0230C2A4
	mov r0, #1
	bx lr
_0230C29C:
	mov r0, #0
	bx lr
_0230C2A4:
	mov r0, #0
	bx lr
	.align 2, 0
_0230C2AC: .word 0x02314228
_0230C2B0: .word 0x027FFE00
	arm_func_end FUN_0230C208

	arm_func_start FUN_0230C2B4
FUN_0230C2B4: ; 0x0230C2B4
	stmdb sp!, {r3, lr}
	ldr r3, _0230C374 ; =0x02314228
	ldr r3, [r3, r0, lsl #2]
	cmp r3, #0
	beq _0230C2D8
	cmp r3, #1
	beq _0230C2E0
	cmp r3, #2
	bne _0230C364
_0230C2D8:
	bl FUN_0230C208
	ldmia sp!, {r3, pc}
_0230C2E0:
	cmp r1, #0x2000000
	blo _0230C338
	ldr r0, _0230C378 ; =0x023FE800
	cmp r1, r0
	bhs _0230C338
	cmp r1, #0x2300000
	add r1, r1, r2
	bhs _0230C30C
	cmp r1, #0x2300000
	movhi r0, #0
	ldmhiia sp!, {r3, pc}
_0230C30C:
	cmp r1, #0x2300000
	movls r0, #1
	ldmlsia sp!, {r3, pc}
	ldr r0, _0230C378 ; =0x023FE800
	cmp r1, r0
	bhs _0230C330
	cmp r2, #0x40000
	movls r0, #1
	ldmlsia sp!, {r3, pc}
_0230C330:
	mov r0, #0
	ldmia sp!, {r3, pc}
_0230C338:
	ldr r3, _0230C37C ; =0x037F8000
	cmp r1, r3
	blo _0230C36C
	add r0, r3, #0x17000
	cmp r1, r0
	bhs _0230C36C
	add r1, r1, r2
	cmp r1, r0
	movls r0, #1
	movhi r0, #0
	ldmia sp!, {r3, pc}
_0230C364:
	mov r0, #0
	ldmia sp!, {r3, pc}
_0230C36C:
	mov r0, #0
	ldmia sp!, {r3, pc}
	.align 2, 0
_0230C374: .word 0x02314228
_0230C378: .word 0x023FE800
_0230C37C: .word 0x037F8000
	arm_func_end FUN_0230C2B4

	arm_func_start FUN_0230C380
FUN_0230C380: ; 0x0230C380
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r4, r2
	add r2, r6, #0x1f
	mov r5, r1
	mov r0, r4
	bic r1, r2, #0x1f
	bl FUN_023040D4
	bl FUN_023040F8
	mov r0, r4
	mov r1, r6
	mov r2, r5
	bl FUN_0230E7D0
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end FUN_0230C380

	arm_func_start FUN_0230C3B8
FUN_0230C3B8: ; 0x0230C3B8
	mov r3, r1, asr #1
	cmp r3, #0
	mov r2, #0
	ble _0230C3DC
_0230C3C8:
	ldrh r1, [r0], #2
	sub r3, r3, #1
	cmp r3, #0
	add r2, r2, r1
	bgt _0230C3C8
_0230C3DC:
	mov r0, r2, lsl #0x10
	mov r0, r0, lsr #0x10
	add r1, r0, r2, lsr #16
	ldr r0, _0230C400 ; =0x0000FFFF
	add r1, r1, r1, lsr #16
	eor r0, r1, r0
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	bx lr
	.align 2, 0
_0230C400: .word 0x0000FFFF
	arm_func_end FUN_0230C3B8

	arm_func_start FUN_0230C404
FUN_0230C404: ; 0x0230C404
	ldr r0, _0230C410 ; =0x02347C20
	ldr r0, [r0, #0xc]
	bx lr
	.align 2, 0
_0230C410: .word 0x02347C20
	arm_func_end FUN_0230C404

	arm_func_start FUN_0230C414
FUN_0230C414: ; 0x0230C414
	ldr r1, _0230C424 ; =0x02347DA0
	ldr r0, _0230C428 ; =0x02347C20
	str r1, [r0, #0xc]
	bx lr
	.align 2, 0
_0230C424: .word 0x02347DA0
_0230C428: .word 0x02347C20
	arm_func_end FUN_0230C414

	arm_func_start FUN_0230C42C
FUN_0230C42C: ; 0x0230C42C
	ldr r2, _0230C43C ; =0x02347C20
	str r0, [r2, #4]
	str r1, [r2]
	bx lr
	.align 2, 0
_0230C43C: .word 0x02347C20
	arm_func_end FUN_0230C42C

	arm_func_start FUN_0230C440
FUN_0230C440: ; 0x0230C440
	stmdb sp!, {r3, lr}
	ldr r0, _0230C46C ; =0x02347C20
	ldr r2, _0230C470 ; =0x00005910
	ldr r1, [r0, #0xc]
	mov r0, #0
	bl FUN_02305538
	ldr r0, _0230C46C ; =0x02347C20
	mov r1, #1
	ldr r0, [r0, #0xc]
	strh r1, [r0, #0xc]
	ldmia sp!, {r3, pc}
	.align 2, 0
_0230C46C: .word 0x02347C20
_0230C470: .word 0x00005910
	arm_func_end FUN_0230C440

	arm_func_start FUN_0230C474
FUN_0230C474: ; 0x0230C474
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	mov r5, r2
	mov r7, r0
	mov r0, r5
	mov r6, r1
	bl FUN_0230C514
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	ldr r1, _0230C50C ; =0x02347CE0
	mov r0, r5
	mov r2, #0xc0
	bl FUN_023054F0
	ldr r5, _0230C50C ; =0x02347CE0
	ldr r2, _0230C510 ; =0x02347C20
	add r3, r5, #0x50
	add r0, r3, #8
	mov r1, #0x68
	str r3, [r2, #8]
	bl FUN_0230C3B8
	cmp r0, #0
	movne r0, #0
	ldmneia sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, r5
	mov r1, r7
	bl FUN_0230C554
	movs r4, r0
	movmi r0, #0
	ldmmiia sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, r5
	mov r1, r4
	mov r2, r6
	bl FUN_0230C90C
	mov r0, r4
	mov r1, r7
	bl FUN_0230C6BC
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0230C50C: .word 0x02347CE0
_0230C510: .word 0x02347C20
	arm_func_end FUN_0230C474

	arm_func_start FUN_0230C514
FUN_0230C514: ; 0x0230C514
	ldrh r0, [r0, #0x40]
	cmp r0, #1
	moveq r0, #1
	movne r0, #0
	bx lr
	arm_func_end FUN_0230C514

	arm_func_start FUN_0230C528
FUN_0230C528: ; 0x0230C528
	mov r2, #0x10000
	rsb r2, r2, #0
	mov r3, #0x20
	strh r3, [r0, #0xa]
	and r2, r1, r2
	strh r1, [r0, #0xc]
	mov r1, r2, lsr #0x10
	strh r1, [r0, #0xe]
	ldrh r1, [r0, #0x48]
	strh r1, [r0, #0x10]
	bx lr
	arm_func_end FUN_0230C528

	arm_func_start FUN_0230C554
FUN_0230C554: ; 0x0230C554
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	ldr r2, _0230C6B8 ; =0x02347C20
	mov r8, r1
	ldr r6, [r2, #0xc]
	ldr lr, [r2, #8]
	ldrh ip, [r6]
	mov r3, r6
	add r2, r6, #0x10
	mov r4, #0
	mov r1, #1
_0230C57C:
	tst ip, r1, lsl r4
	beq _0230C60C
	ldr r7, [r2, #0x4b8]
	ldr r5, [lr]
	cmp r7, r5
	ldreqb r7, [r2, #0x4c4]
	ldreqb r5, [r0, #4]
	cmpeq r7, r5
	ldreqb r7, [r2, #0x4c5]
	ldreqb r5, [r0, #5]
	cmpeq r7, r5
	ldreqb r7, [r2, #0x4c6]
	ldreqb r5, [r0, #6]
	cmpeq r7, r5
	ldreqb r7, [r2, #0x4c7]
	ldreqb r5, [r0, #7]
	cmpeq r7, r5
	ldreqb r7, [r2, #0x4c8]
	ldreqb r5, [r0, #8]
	cmpeq r7, r5
	ldreqb r7, [r2, #0x4c9]
	ldreqb r5, [r0, #9]
	cmpeq r7, r5
	bne _0230C60C
	ldrb r7, [lr, #4]
	ldrb r5, [r3, #0x4c5]
	mov r7, r7, lsl #0x18
	cmp r5, r7, lsr #26
	bne _0230C60C
	ldrh r0, [r6, #4]
	tst r0, r1, lsl r4
	bne _0230C604
	mov r0, r4
	bl FUN_0230CE8C
_0230C604:
	mov r0, r4
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_0230C60C:
	add r4, r4, #1
	cmp r4, #0x10
	add r2, r2, #0x590
	add r3, r3, #0x590
	blt _0230C57C
	ldrh r2, [r6]
	mov r7, #0
	mov r1, #1
_0230C62C:
	tst r2, r1, lsl r7
	mov r5, r1, lsl r7
	bne _0230C68C
	mov r1, #0x590
	mul r4, r7, r1
	add r1, r6, #0x4d0
	add r1, r1, r4
	mov r2, #0xc0
	bl FUN_023054F0
	ldr r2, _0230C6B8 ; =0x02347C20
	mov r1, r5, lsl #0x10
	ldr r3, [r2, #8]
	ldr r0, [r2, #0xc]
	ldrb r5, [r3, #5]
	add r3, r0, r4
	mov r0, r7
	strb r5, [r3, #0x4c3]
	ldr r3, [r2, #0xc]
	ldrh r2, [r3]
	orr r1, r2, r1, lsr #16
	strh r1, [r3]
	bl FUN_0230CE8C
	mov r0, r7
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_0230C68C:
	add r7, r7, #1
	cmp r7, #0x10
	blt _0230C62C
	cmp r8, #0
	beq _0230C6B0
	mov r1, #0
	mov r2, r1
	mov r0, #4
	blx r8
_0230C6B0:
	mvn r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	.align 2, 0
_0230C6B8: .word 0x02347C20
	arm_func_end FUN_0230C554

	arm_func_start FUN_0230C6BC
FUN_0230C6BC: ; 0x0230C6BC
	stmdb sp!, {r4, r5, r6, lr}
	ldr r2, _0230C7AC ; =0x02347C20
	movs r5, r1
	ldr r1, [r2, #0xc]
	mov r6, r0
	add r1, r1, #0x10
	mov r0, #0x590
	mla r4, r6, r0, r1
	beq _0230C6F0
	mov r1, r4
	mov r2, r6
	mov r0, #5
	blx r5
_0230C6F0:
	ldr r1, [r4, #0x580]
	ldr r0, [r4, #0x584]
	cmp r1, r0
	bne _0230C774
	cmp r1, #0
	addne r0, r4, #0x300
	ldrneh r1, [r0, #0x5a]
	cmpne r1, #0
	beq _0230C774
	add r0, r4, #0x500
	ldrh r0, [r0, #0x88]
	cmp r0, r1
	bne _0230C774
	ldr r0, _0230C7AC ; =0x02347C20
	mov r2, #1
	ldr r3, [r0, #0xc]
	ldrh r1, [r3, #4]
	tst r1, r2, lsl r6
	ldmneia sp!, {r4, r5, r6, pc}
	orr r1, r1, r2, lsl r6
	strh r1, [r3, #4]
	ldr r1, [r0, #0xc]
	ldrh r0, [r1, #2]
	orr r0, r0, r2, lsl r6
	strh r0, [r1, #2]
	bl FUN_0230CEFC
	cmp r5, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	mov r1, r4
	mov r2, r6
	mov r0, #1
	blx r5
	ldmia sp!, {r4, r5, r6, pc}
_0230C774:
	ldr r0, _0230C7AC ; =0x02347C20
	mov r2, #1
	ldr r1, [r0, #0xc]
	ldrh r0, [r1, #4]
	tst r0, r2, lsl r6
	eorne r0, r0, r2, lsl r6
	strneh r0, [r1, #4]
	cmpne r5, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	mov r1, r4
	mov r2, r6
	mov r0, #2
	blx r5
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_0230C7AC: .word 0x02347C20
	arm_func_end FUN_0230C6BC

	arm_func_start FUN_0230C7B0
FUN_0230C7B0: ; 0x0230C7B0
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov r8, #0
	ldr r5, _0230C908 ; =0x02347C20
	mov sl, r0
	str r1, [sp]
	mov r7, r8
	mov sb, r8
	mov r6, r8
	mov fp, #1
_0230C7D4:
	ldr r0, [r5, #0xc]
	mov r2, fp, lsl r7
	ldrh r1, [r0]
	add r3, r0, #0x10
	add r3, r3, sb
	mov r4, r2, lsl #0x10
	tst r1, r4, lsr #16
	beq _0230C864
	add r1, r3, #0x500
	ldrsh r2, [r1, #0x8a]
	ldrh r0, [r0, #0xc]
	sub r0, r2, r0
	strh r0, [r1, #0x8a]
	ldrsh r0, [r1, #0x8a]
	cmp r0, #0
	bge _0230C864
	strh r6, [r1, #0x8a]
	ldr r0, [r5, #0xc]
	ldrh r0, [r0, #4]
	tst r0, r4, lsr #16
	cmpne sl, #0
	beq _0230C83C
	mov r0, #3
	mov r1, r6
	mov r2, r7
	blx sl
_0230C83C:
	ldr r1, [r5, #0xc]
	mvn r2, r4, lsr #16
	ldrh r0, [r1, #6]
	ldrh r3, [r1]
	tst r0, r4, lsr #16
	and r2, r3, r2
	mov r0, r7
	movne r8, #1
	strh r2, [r1]
	bl FUN_0230CF50
_0230C864:
	add r7, r7, #1
	cmp r7, #0x10
	add sb, sb, #0x590
	blt _0230C7D4
	ldr r1, _0230C908 ; =0x02347C20
	ldr r3, [r1, #0xc]
	ldrh r0, [r3, #6]
	cmp r0, #0
	beq _0230C8E8
	ldrsh r2, [r3, #8]
	cmp r2, #0
	ble _0230C8E8
	ldrh r0, [r3, #0xc]
	sub r0, r2, r0
	strh r0, [r3, #8]
	ldr r2, [r1, #0xc]
	ldrsh r0, [r2, #8]
	cmp r0, #0
	movlt r8, #1
	blt _0230C8E8
	ldr r0, [sp]
	cmp r0, #0
	bne _0230C8E0
	ldrsh r0, [r2, #0xa]
	add r0, r0, #1
	strh r0, [r2, #0xa]
	ldr r0, [r1, #0xc]
	ldrsh r0, [r0, #0xa]
	cmp r0, #4
	movgt r8, #1
	b _0230C8E8
_0230C8E0:
	mov r0, #0
	strh r0, [r2, #0xa]
_0230C8E8:
	cmp r8, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r0, _0230C908 ; =0x02347C20
	mov r1, #0
	ldr r0, [r0, #0xc]
	strh r1, [r0, #8]
	bl FUN_0230CEFC
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_0230C908: .word 0x02347C20
	arm_func_end FUN_0230C7B0

	arm_func_start FUN_0230C90C
FUN_0230C90C: ; 0x0230C90C
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r1
	mov r4, r2
	bl FUN_0230CA14
	mov r0, r5
	bl FUN_0230CA7C
	mov r0, r5
	bl FUN_0230CAD8
	ldr r1, _0230CA0C ; =0x02347C20
	mov r0, #0x590
	ldr r3, [r1, #0xc]
	ldr r2, [r1, #8]
	add r1, r3, #0x10
	mla r1, r5, r0, r1
	ldrb r3, [r1, #0x58e]
	ldrb r0, [r2, #7]
	cmp r3, r0
	bne _0230C988
	ldrb r0, [r1, #0x58f]
	add r2, r0, #1
	and r0, r2, #0xff
	strb r2, [r1, #0x58f]
	cmp r0, #3
	bls _0230C990
	add r0, r1, #0xc4
	add r1, r1, #0x500
	mov r2, #0
	add r0, r0, #0x400
	strh r2, [r1, #0x8a]
	bl FUN_0230CB0C
	ldmia sp!, {r3, r4, r5, pc}
_0230C988:
	mov r0, #0
	strb r0, [r1, #0x58f]
_0230C990:
	ldr r3, _0230CA0C ; =0x02347C20
	ldr ip, _0230CA10 ; =0x00001771
	ldr r0, [r3, #8]
	add r2, r1, #0x500
	ldrb lr, [r0, #7]
	add r0, r1, #0x4c0
	strb lr, [r1, #0x58e]
	strh ip, [r2, #0x8a]
	ldr ip, [r3, #8]
	ldr ip, [ip]
	str ip, [r1, #0x4b8]
	ldr r3, [r3, #8]
	ldrb r3, [r3, #4]
	mov r3, r3, lsl #0x18
	mov r3, r3, lsr #0x1a
	strb r3, [r1, #0x4b5]
	strh r4, [r2, #0x8c]
	ldr r1, [r1, #0x4b8]
	bl FUN_0230C528
	ldr r0, _0230CA0C ; =0x02347C20
	ldr r0, [r0, #8]
	ldrb r0, [r0, #4]
	mov r0, r0, lsl #0x1e
	mov r0, r0, lsr #0x1e
	cmp r0, #2
	mov r0, r5
	bne _0230CA04
	bl FUN_0230CC7C
	ldmia sp!, {r3, r4, r5, pc}
_0230CA04:
	bl FUN_0230CBAC
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_0230CA0C: .word 0x02347C20
_0230CA10: .word 0x00001771
	arm_func_end FUN_0230C90C

	arm_func_start FUN_0230CA14
FUN_0230CA14: ; 0x0230CA14
	stmdb sp!, {r4, r5, r6, lr}
	mov r5, r1
	mov r1, #0x590
	mul r4, r5, r1
	ldr r1, _0230CA78 ; =0x02347C20
	mov r6, r0
	ldr r0, [r1, #0xc]
	ldrh r1, [r6, #0x48]
	add r0, r0, r4
	add r0, r0, #0x500
	ldrh r0, [r0, #0x18]
	cmp r1, r0
	ldmeqia sp!, {r4, r5, r6, pc}
	mov r0, r5
	bl FUN_0230CFA4
	ldr r1, _0230CA78 ; =0x02347C20
	mov r0, r6
	ldr r1, [r1, #0xc]
	mov r2, #0xc0
	add r1, r1, #0x4d0
	add r1, r1, r4
	bl FUN_023054F0
	mov r0, r5
	bl FUN_0230CE8C
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_0230CA78: .word 0x02347C20
	arm_func_end FUN_0230CA14

	arm_func_start FUN_0230CA7C
FUN_0230CA7C: ; 0x0230CA7C
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r1, #0x590
	mul r4, r5, r1
	ldr r1, _0230CAD4 ; =0x02347C20
	ldr r2, [r1, #0xc]
	ldr r3, [r1, #8]
	add r1, r2, r4
	ldrb r2, [r3, #5]
	ldrb r1, [r1, #0x4c3]
	cmp r2, r1
	ldmeqia sp!, {r3, r4, r5, pc}
	bl FUN_0230CFA4
	mov r0, r5
	bl FUN_0230CE8C
	ldr r0, _0230CAD4 ; =0x02347C20
	ldr r1, [r0, #8]
	ldr r0, [r0, #0xc]
	ldrb r1, [r1, #5]
	add r0, r0, r4
	strb r1, [r0, #0x4c3]
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_0230CAD4: .word 0x02347C20
	arm_func_end FUN_0230CA7C

	arm_func_start FUN_0230CAD8
FUN_0230CAD8: ; 0x0230CAD8
	stmdb sp!, {r3, lr}
	ldr r2, _0230CB08 ; =0x02347C20
	mov r1, #0x590
	ldr r3, [r2, #0xc]
	ldr r2, [r2, #8]
	mla r1, r0, r1, r3
	ldrb r2, [r2, #6]
	ldrb r1, [r1, #0x4c4]
	cmp r2, r1
	ldmeqia sp!, {r3, pc}
	bl FUN_0230CE8C
	ldmia sp!, {r3, pc}
	.align 2, 0
_0230CB08: .word 0x02347C20
	arm_func_end FUN_0230CAD8

	arm_func_start FUN_0230CB0C
FUN_0230CB0C: ; 0x0230CB0C
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	mov ip, #0
	ldr r4, _0230CBA8 ; =0x02347C20
	mov lr, ip
	mov r5, ip
	mov r2, #1
_0230CB24:
	ldr r3, [r4, #0xc]
	ldrh r1, [r3]
	tst r1, r2, lsl ip
	beq _0230CB94
	add r1, r3, #0xd4
	add r1, r1, #0x400
	ldrb r6, [r1, lr]
	ldrb r7, [r0]
	add r1, r1, lr
	cmp r7, r6
	ldreqb r7, [r0, #1]
	ldreqb r6, [r1, #1]
	cmpeq r7, r6
	ldreqb r7, [r0, #2]
	ldreqb r6, [r1, #2]
	cmpeq r7, r6
	ldreqb r7, [r0, #3]
	ldreqb r6, [r1, #3]
	cmpeq r7, r6
	ldreqb r7, [r0, #4]
	ldreqb r6, [r1, #4]
	cmpeq r7, r6
	ldreqb r6, [r0, #5]
	ldreqb r1, [r1, #5]
	cmpeq r6, r1
	addeq r1, r3, lr
	addeq r1, r1, #0x500
	streqh r5, [r1, #0x9a]
_0230CB94:
	add ip, ip, #1
	cmp ip, #0x10
	add lr, lr, #0x590
	blt _0230CB24
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0230CBA8: .word 0x02347C20
	arm_func_end FUN_0230CB0C

	arm_func_start FUN_0230CBAC
FUN_0230CBAC: ; 0x0230CBAC
	stmdb sp!, {r4, lr}
	ldr r2, _0230CC78 ; =0x02347C20
	mov r1, #0x590
	ldr r4, [r2, #0xc]
	ldr r3, [r2, #8]
	add r2, r4, #0x10
	mla r4, r0, r1, r2
	ldrb r2, [r4, #0x4b3]
	ldrb r1, [r3, #5]
	add r0, r4, #0x358
	cmp r2, r1
	bne _0230CBF0
	ldrb r1, [r3, #0xa]
	ldr ip, [r4, #0x580]
	mov r2, #1
	tst ip, r2, lsl r1
	ldmneia sp!, {r4, pc}
_0230CBF0:
	ldr r2, _0230CC78 ; =0x02347C20
	ldrb r1, [r3, #4]
	ldr r2, [r2, #8]
	mov r1, r1, lsl #0x1e
	movs r1, r1, lsr #0x1e
	ldrb ip, [r2, #0xa]
	moveq lr, r4
	addne lr, r4, #0x220
	mov r1, #0x62
	mla r1, ip, r1, lr
	ldrb r2, [r2, #0xc]
	add ip, r1, r2
	cmp ip, r0
	ldmhiia sp!, {r4, pc}
	add r0, r3, #0xe
	bl FUN_023054F0
	ldr r0, _0230CC78 ; =0x02347C20
	mov r2, #1
	ldr r1, [r0, #8]
	ldrb r1, [r1, #4]
	mov r1, r1, lsl #0x1e
	mov r1, r1, lsr #0x1e
	strb r1, [r4, #0x4b2]
	ldr r1, [r0, #8]
	ldr r3, [r4, #0x580]
	ldrb r1, [r1, #0xa]
	orr r1, r3, r2, lsl r1
	str r1, [r4, #0x580]
	ldr r0, [r0, #8]
	ldrb r0, [r0, #0xb]
	mov r0, r2, lsl r0
	sub r0, r0, #1
	str r0, [r4, #0x584]
	ldmia sp!, {r4, pc}
	.align 2, 0
_0230CC78: .word 0x02347C20
	arm_func_end FUN_0230CBAC

	arm_func_start FUN_0230CC7C
FUN_0230CC7C: ; 0x0230CC7C
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	ldr r1, _0230CE84 ; =0x02347C20
	mov sl, r0
	ldr r2, [r1, #0xc]
	mov r0, #0x590
	add r2, r2, #0x10
	mla r5, sl, r0, r2
	mov r3, #0
_0230CC9C:
	ldr r2, [r1, #8]
	add r0, r5, r3
	add r2, r2, r3
	ldrb r2, [r2, #0x68]
	add r3, r3, #1
	cmp r3, #8
	strb r2, [r0, #0x4a8]
	blt _0230CC9C
	ldr r0, _0230CE84 ; =0x02347C20
	add r1, r5, #0x510
	ldr r0, [r0, #8]
	mov r2, #0x70
	bl FUN_023054F0
	ldr r4, _0230CE84 ; =0x02347C20
	ldrb r0, [r5, #0x4b4]
	ldr r2, [r4, #8]
	ldrb r1, [r2, #6]
	cmp r0, r1
	beq _0230CDC8
	add r0, r0, #1
	and r0, r0, #0xff
	cmp r0, r1
	add r0, r5, #0x5e
	bne _0230CD7C
	mov sb, #0
	add r8, r0, #0x300
	mov r6, sb
	mov fp, #0x16
	mov r7, #2
_0230CD10:
	ldr r0, [r4, #8]
	ldrh r0, [r0, #0xe]
	tst r0, r7, lsl sb
	beq _0230CD30
	mov r0, r6
	mov r1, r8
	mov r2, fp
	bl FUN_023054D8
_0230CD30:
	add sb, sb, #1
	cmp sb, #0xf
	add r8, r8, #0x16
	blt _0230CD10
	ldr r1, _0230CE84 ; =0x02347C20
	add r0, r5, #0x500
	ldr r3, [r1, #8]
	mov r2, #1
	ldrh r3, [r3, #0xe]
	ldrh r4, [r0, #0x88]
	mvn r2, r2, lsl sl
	mvn r3, r3
	and r3, r4, r3
	strh r3, [r0, #0x88]
	ldr r1, [r1, #0xc]
	ldrh r0, [r1, #4]
	and r0, r0, r2
	strh r0, [r1, #4]
	b _0230CDB4
_0230CD7C:
	ldr r2, _0230CE88 ; =0x0000014A
	add r1, r0, #0x300
	mov r0, #0
	bl FUN_023054D8
	add r0, r5, #0x500
	mov r3, #0
	mov r1, r4
	strh r3, [r0, #0x88]
	ldr r3, [r1, #0xc]
	mov r2, #1
	ldrh r1, [r3, #4]
	mvn r0, r2, lsl sl
	and r0, r1, r0
	strh r0, [r3, #4]
_0230CDB4:
	ldr r0, _0230CE84 ; =0x02347C20
	ldr r0, [r0, #8]
	ldrb r0, [r0, #6]
	strb r0, [r5, #0x4b4]
	b _0230CDDC
_0230CDC8:
	add r0, r5, #0x500
	ldrh r1, [r0, #0x88]
	ldrh r0, [r2, #0xc]
	cmp r1, r0
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_0230CDDC:
	ldr r4, _0230CE84 ; =0x02347C20
	add r1, r5, #0x188
	ldr r0, [r4, #8]
	mov sl, #0
	ldrb r3, [r0, #0xa]
	add r0, r5, #0x300
	add r7, r1, #0x400
	strb r3, [r5, #0x358]
	ldr r3, [r4, #8]
	add r2, r5, #0x500
	ldrh r3, [r3, #0xc]
	mov sb, sl
	mov fp, #0x16
	strh r3, [r0, #0x5a]
	ldr r1, [r4, #8]
	ldrh r1, [r1, #0xe]
	strh r1, [r0, #0x5c]
	ldrh r0, [r2, #0x88]
	orr r0, r0, #1
	strh r0, [r2, #0x88]
	add r0, r5, #0x5e
	add r6, r0, #0x300
	mov r5, #1
_0230CE38:
	ldr r0, [r4, #8]
	add r0, r0, #0x10
	ldrb r1, [r0, sb]
	mov r1, r1, lsl #0x18
	movs r8, r1, lsr #0x1c
	beq _0230CE70
	sub r2, r8, #1
	mla r1, r2, fp, r6
	mov r2, #0x16
	add r0, r0, sb
	bl FUN_023054F0
	ldrh r0, [r7]
	orr r0, r0, r5, lsl r8
	strh r0, [r7]
_0230CE70:
	add sl, sl, #1
	cmp sl, #4
	add sb, sb, #0x16
	blo _0230CE38
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_0230CE84: .word 0x02347C20
_0230CE88: .word 0x0000014A
	arm_func_end FUN_0230CC7C

	arm_func_start FUN_0230CE8C
FUN_0230CE8C: ; 0x0230CE8C
	stmdb sp!, {r4, lr}
	ldr r1, _0230CEF8 ; =0x02347C20
	mov r4, r0
	ldr r3, [r1, #0xc]
	ldrh r0, [r3, #6]
	cmp r0, #0
	ldmneia sp!, {r4, pc}
	ldr r2, [r1, #4]
	cmp r2, #0
	beq _0230CEC8
	add r0, r3, #0xd4
	add r1, r0, #0x400
	mov r0, #0x590
	mla r0, r4, r0, r1
	blx r2
_0230CEC8:
	ldr r0, _0230CEF8 ; =0x02347C20
	mov r1, #1
	ldr r2, [r0, #0xc]
	mov r3, #0x16
	strh r3, [r2, #0xc]
	mov r3, r1, lsl r4
	ldr r2, [r0, #0xc]
	add r1, r1, #0x320
	strh r3, [r2, #6]
	ldr r0, [r0, #0xc]
	strh r1, [r0, #8]
	ldmia sp!, {r4, pc}
	.align 2, 0
_0230CEF8: .word 0x02347C20
	arm_func_end FUN_0230CE8C

	arm_func_start FUN_0230CEFC
FUN_0230CEFC: ; 0x0230CEFC
	stmdb sp!, {r3, lr}
	ldr r0, _0230CF4C ; =0x02347C20
	ldr r1, [r0, #0xc]
	ldrh r1, [r1, #6]
	cmp r1, #0
	ldmeqia sp!, {r3, pc}
	ldr r0, [r0]
	cmp r0, #0
	beq _0230CF24
	blx r0
_0230CF24:
	ldr r0, _0230CF4C ; =0x02347C20
	mov r3, #1
	ldr r1, [r0, #0xc]
	mov r2, #0
	strh r3, [r1, #0xc]
	ldr r1, [r0, #0xc]
	strh r2, [r1, #6]
	ldr r0, [r0, #0xc]
	strh r2, [r0, #0xa]
	ldmia sp!, {r3, pc}
	.align 2, 0
_0230CF4C: .word 0x02347C20
	arm_func_end FUN_0230CEFC

	arm_func_start FUN_0230CF50
FUN_0230CF50: ; 0x0230CF50
	stmdb sp!, {r4, lr}
	ldr r1, _0230CFA0 ; =0x02347C20
	mov r3, r0
	ldr r2, [r1, #0xc]
	mov ip, #1
	ldrh r0, [r2, #2]
	mvn r4, ip, lsl r3
	and r0, r0, r4
	strh r0, [r2, #2]
	ldr lr, [r1, #0xc]
	mov r2, #0x590
	ldrh ip, [lr, #4]
	mov r0, #0
	and ip, ip, r4
	strh ip, [lr, #4]
	ldr r1, [r1, #0xc]
	add r1, r1, #0x10
	mla r1, r3, r2, r1
	bl FUN_023054D8
	ldmia sp!, {r4, pc}
	.align 2, 0
_0230CFA0: .word 0x02347C20
	arm_func_end FUN_0230CF50

	arm_func_start FUN_0230CFA4
FUN_0230CFA4: ; 0x0230CFA4
	stmdb sp!, {r4, lr}
	ldr ip, _0230D030 ; =0x02347C20
	mov lr, #1
	ldr r3, [ip, #0xc]
	mov r1, #0x590
	ldrh r2, [r3, #2]
	mvn r4, lr, lsl r0
	and r2, r2, r4
	strh r2, [r3, #2]
	ldr lr, [ip, #0xc]
	mul r1, r0, r1
	ldrh r3, [lr, #4]
	mov r0, #0
	mov r2, #0x4c0
	and r3, r3, r4
	strh r3, [lr, #4]
	ldr r3, [ip, #0xc]
	add r3, r3, r1
	str r0, [r3, #0x590]
	ldr r3, [ip, #0xc]
	add r3, r3, r1
	str r0, [r3, #0x594]
	ldr r3, [ip, #0xc]
	add r3, r3, r1
	add r3, r3, #0x500
	strh r0, [r3, #0x98]
	ldr r3, [ip, #0xc]
	add r3, r3, r1
	add r3, r3, #0x500
	strh r0, [r3, #0x9c]
	ldr r3, [ip, #0xc]
	add r3, r3, #0x10
	add r1, r3, r1
	bl FUN_023054D8
	ldmia sp!, {r4, pc}
	.align 2, 0
_0230D030: .word 0x02347C20
	arm_func_end FUN_0230CFA4

	arm_func_start FUN_0230D034
FUN_0230D034: ; 0x0230D034
	stmdb sp!, {r3, r4, r5, lr}
	mov r4, r0
	bl FUN_0230A8F8
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	ldrh lr, [r4, #4]
	mov r2, #1
	mov ip, #0
	mov r5, lr
	mov r3, r2
_0230D060:
	sub r1, r5, #1
	tst r0, r3, lsl r1
	cmpne lr, r5
	strneh r5, [r4, #4]
	bne _0230D09C
	add r1, ip, #1
	mov r1, r1, lsl #0x10
	cmp r5, #0x10
	mov ip, r1, lsr #0x10
	moveq r1, r2
	addne r1, r5, #1
	mov r1, r1, lsl #0x10
	cmp ip, #0x10
	mov r5, r1, lsr #0x10
	blo _0230D060
_0230D09C:
	mov r0, #1
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end FUN_0230D034

	arm_func_start FUN_0230D0A4
FUN_0230D0A4: ; 0x0230D0A4
	ldr r1, _0230D100 ; =0x0234D6C0
	mov r0, #0
	ldr ip, [r1, #8]
	mov r3, r0
	add r1, ip, #0x500
	ldrh r1, [r1, #0x28]
	mov r2, r0
	cmp r1, #1
	ldreqb r1, [ip, #0x50c]
	cmpeq r1, #0
	moveq r3, #1
	cmp r3, #0
	beq _0230D0E8
	add r1, ip, #0x500
	ldrh r1, [r1, #0x26]
	cmp r1, #0
	moveq r2, #1
_0230D0E8:
	cmp r2, #0
	addne r1, ip, #0x500
	ldrneh r1, [r1, #0x2a]
	cmpne r1, #0
	movne r0, #1
	bx lr
	.align 2, 0
_0230D100: .word 0x0234D6C0
	arm_func_end FUN_0230D0A4

	arm_func_start FUN_0230D104
FUN_0230D104: ; 0x0230D104
	stmdb sp!, {r3, lr}
	ldr r0, _0230D14C ; =FUN_0230D154
	bl FUN_0230AB64
	mov r1, r0
	mov r0, #0x80
	bl FUN_0230EA1C
	ldr r3, _0230D150 ; =0x0231CF40
	ldr r0, _0230D14C ; =FUN_0230D154
	ldrh r1, [r3, #4]
	str r1, [sp]
	ldrh r1, [r3, #6]
	ldrh r2, [r3, #2]
	ldrh r3, [r3]
	bl FUN_0230B410
	mov r1, r0
	mov r0, #0x1d
	bl FUN_0230EA1C
	ldmia sp!, {r3, pc}
	.align 2, 0
_0230D14C: .word FUN_0230D154
_0230D150: .word 0x0231CF40
	arm_func_end FUN_0230D104

	arm_func_start FUN_0230D154
FUN_0230D154: ; 0x0230D154
	stmdb sp!, {r3, r4, lr}
	sub sp, sp, #0x1c
	mov r4, r0
	ldrh r0, [r4]
	cmp r0, #0x19
	bgt _0230D1BC
	bge _0230D298
	cmp r0, #0xf
	addls pc, pc, r0, lsl #2
	b _0230D8C4
_0230D17C: ; jump table
	b _0230D1D8 ; case 0
	b _0230D6C4 ; case 1
	b _0230D758 ; case 2
	b _0230D8C4 ; case 3
	b _0230D8C4 ; case 4
	b _0230D8C4 ; case 5
	b _0230D8C4 ; case 6
	b _0230D260 ; case 7
	b _0230D2E8 ; case 8
	b _0230D8C4 ; case 9
	b _0230D8C4 ; case 10
	b _0230D8C4 ; case 11
	b _0230D8C4 ; case 12
	b _0230D7CC ; case 13
	b _0230D53C ; case 14
	b _0230D5C8 ; case 15
_0230D1BC:
	cmp r0, #0x1d
	bgt _0230D1CC
	beq _0230D210
	b _0230D8C4
_0230D1CC:
	cmp r0, #0x80
	beq _0230D804
	b _0230D8C4
_0230D1D8:
	ldrh r0, [r4, #2]
	cmp r0, #0
	beq _0230D204
	ldr r0, _0230D8E4 ; =0x0234D6C0
	mov r1, r4
	ldr r2, [r0, #8]
	mov r0, #0x100
	ldr r2, [r2, #0x51c]
	blx r2
	add sp, sp, #0x1c
	ldmia sp!, {r3, r4, pc}
_0230D204:
	bl FUN_0230D104
	add sp, sp, #0x1c
	ldmia sp!, {r3, r4, pc}
_0230D210:
	ldrh r0, [r4, #2]
	cmp r0, #0
	beq _0230D23C
	ldr r0, _0230D8E4 ; =0x0234D6C0
	mov r1, r4
	ldr r2, [r0, #8]
	mov r0, #0x100
	ldr r2, [r2, #0x51c]
	blx r2
	add sp, sp, #0x1c
	ldmia sp!, {r3, r4, pc}
_0230D23C:
	ldr r1, _0230D8E4 ; =0x0234D6C0
	ldr r0, _0230D8E8 ; =FUN_0230D154
	ldr r1, [r1, #8]
	bl FUN_0230AE94
	mov r1, r0
	mov r0, #7
	bl FUN_0230EA1C
	add sp, sp, #0x1c
	ldmia sp!, {r3, r4, pc}
_0230D260:
	ldr r0, _0230D8E4 ; =0x0234D6C0
	mov r1, r4
	ldr r2, [r0, #8]
	mov r0, #0x15
	ldr r2, [r2, #0x51c]
	blx r2
	ldr r0, _0230D8E8 ; =FUN_0230D154
	mov r1, #1
	bl FUN_0230B47C
	mov r1, r0
	mov r0, #0x19
	bl FUN_0230EA1C
	add sp, sp, #0x1c
	ldmia sp!, {r3, r4, pc}
_0230D298:
	ldrh r0, [r4, #2]
	cmp r0, #0
	beq _0230D2C4
	ldr r0, _0230D8E4 ; =0x0234D6C0
	mov r1, r4
	ldr r2, [r0, #8]
	mov r0, #0x100
	ldr r2, [r2, #0x51c]
	blx r2
	add sp, sp, #0x1c
	ldmia sp!, {r3, r4, pc}
_0230D2C4:
	ldr r1, _0230D8EC ; =0x0231CF40
	ldr r0, _0230D8E8 ; =FUN_0230D154
	ldr r1, [r1, #0xc]
	bl FUN_0230ADD4
	mov r1, r0
	mov r0, #8
	bl FUN_0230EA1C
	add sp, sp, #0x1c
	ldmia sp!, {r3, r4, pc}
_0230D2E8:
	ldrh r0, [r4, #2]
	cmp r0, #0
	beq _0230D314
	ldr r0, _0230D8E4 ; =0x0234D6C0
	mov r1, r4
	ldr r2, [r0, #8]
	mov r0, #0x100
	ldr r2, [r2, #0x51c]
	blx r2
	add sp, sp, #0x1c
	ldmia sp!, {r3, r4, pc}
_0230D314:
	ldrh r0, [r4, #8]
	cmp r0, #7
	bgt _0230D344
	bge _0230D38C
	cmp r0, #2
	bgt _0230D51C
	cmp r0, #0
	blt _0230D51C
	beq _0230D364
	cmp r0, #2
	beq _0230D4E8
	b _0230D51C
_0230D344:
	cmp r0, #9
	bgt _0230D354
	beq _0230D4AC
	b _0230D51C
_0230D354:
	cmp r0, #0x1a
	addeq sp, sp, #0x1c
	ldmeqia sp!, {r3, r4, pc}
	b _0230D51C
_0230D364:
	ldr r1, _0230D8E4 ; =0x0234D6C0
	mov r2, #0
	ldr r0, [r1, #8]
	add sp, sp, #0x1c
	add r0, r0, #0x500
	strh r2, [r0, #0x2a]
	ldr r0, [r1, #8]
	add r0, r0, #0x500
	strh r2, [r0, #0x28]
	ldmia sp!, {r3, r4, pc}
_0230D38C:
	ldr r2, _0230D8E4 ; =0x0234D6C0
	ldr r0, [r2, #8]
	add r0, r0, #0x500
	ldrh r1, [r0, #0x26]
	cmp r1, #1
	addeq sp, sp, #0x1c
	ldmeqia sp!, {r3, r4, pc}
	ldrh lr, [r0, #0x2a]
	ldrh r3, [r4, #0x10]
	mov ip, #1
	mov r1, r4
	orr r3, lr, ip, lsl r3
	strh r3, [r0, #0x2a]
	ldr r2, [r2, #8]
	mov r0, #0
	ldr r2, [r2, #0x51c]
	blx r2
	ldr r1, _0230D8E4 ; =0x0234D6C0
	ldr r0, [r1, #8]
	add r0, r0, #0x500
	ldrh r0, [r0, #0x28]
	cmp r0, #0
	bne _0230D47C
	ldr r0, [r1, #0xc]
	add r0, r0, #0x1000
	ldr r2, [r0, #0x31c]
	cmp r2, #0
	bne _0230D47C
	mov r2, #1
	str r2, [r0, #0x31c]
	ldr r0, [r1, #8]
	ldr r1, _0230D8E4 ; =0x0234D6C0
	add r0, r0, #0x500
	ldrh r0, [r0, #0x2c]
	ldr ip, [r1, #8]
	mov r1, #1
	cmp r0, #0
	movne r2, #0
	mov r0, r2, lsl #0x10
	mov r3, r0, lsr #0x10
	add r0, ip, #0x500
	ldrh r4, [r0, #0x18]
	mov r2, #0
	str r4, [sp]
	str r3, [sp, #4]
	str r2, [sp, #8]
	str r2, [sp, #0xc]
	str r2, [sp, #0x10]
	str r1, [sp, #0x14]
	str r1, [sp, #0x18]
	ldrh r2, [r0, #0x1a]
	ldr r1, [ip, #0x504]
	ldr r0, _0230D8E8 ; =FUN_0230D154
	add r3, ip, #0x40
	bl FUN_0230B1E8
	mov r1, r0
	mov r0, #0xe
	bl FUN_0230EA1C
	add sp, sp, #0x1c
	ldmia sp!, {r3, r4, pc}
_0230D47C:
	bl FUN_0230D0A4
	cmp r0, #0
	addeq sp, sp, #0x1c
	ldmeqia sp!, {r3, r4, pc}
	ldr r1, _0230D8E4 ; =0x0234D6C0
	mov r0, #0x19
	ldr r2, [r1, #8]
	mov r1, #0
	ldr r2, [r2, #0x51c]
	blx r2
	add sp, sp, #0x1c
	ldmia sp!, {r3, r4, pc}
_0230D4AC:
	ldr r2, _0230D8E4 ; =0x0234D6C0
	ldrh r3, [r4, #0x10]
	ldr r1, [r2, #8]
	mov r0, #1
	add r1, r1, #0x500
	ldrh ip, [r1, #0x2a]
	mvn r3, r0, lsl r3
	and r3, ip, r3
	strh r3, [r1, #0x2a]
	ldr r2, [r2, #8]
	mov r1, r4
	ldr r2, [r2, #0x51c]
	blx r2
	add sp, sp, #0x1c
	ldmia sp!, {r3, r4, pc}
_0230D4E8:
	ldr r0, _0230D8E4 ; =0x0234D6C0
	ldr r1, [r0, #8]
	add r0, r1, #0x500
	ldrh r0, [r0, #0x26]
	cmp r0, #1
	addeq sp, sp, #0x1c
	ldmeqia sp!, {r3, r4, pc}
	ldr r2, [r1, #0x51c]
	mov r1, r4
	mov r0, #0x1c
	blx r2
	add sp, sp, #0x1c
	ldmia sp!, {r3, r4, pc}
_0230D51C:
	ldr r0, _0230D8E4 ; =0x0234D6C0
	mov r1, r4
	ldr r2, [r0, #8]
	mov r0, #0x100
	ldr r2, [r2, #0x51c]
	blx r2
	add sp, sp, #0x1c
	ldmia sp!, {r3, r4, pc}
_0230D53C:
	ldr r2, _0230D8E4 ; =0x0234D6C0
	mov r1, #0
	ldr r0, [r2, #0xc]
	add r0, r0, #0x1000
	str r1, [r0, #0x31c]
	ldrh r0, [r4, #4]
	cmp r0, #0xa
	beq _0230D568
	cmp r0, #0xb
	beq _0230D590
	b _0230D5AC
_0230D568:
	ldr r0, [r2, #8]
	mov r3, #1
	add r0, r0, #0x500
	strh r3, [r0, #0x28]
	ldr r2, [r2, #8]
	mov r0, #0x19
	ldr r2, [r2, #0x51c]
	blx r2
	add sp, sp, #0x1c
	ldmia sp!, {r3, r4, pc}
_0230D590:
	ldr r0, [r2, #8]
	ldr r1, [r4, #8]
	ldr r2, [r0, #0x51c]
	mov r0, #3
	blx r2
	add sp, sp, #0x1c
	ldmia sp!, {r3, r4, pc}
_0230D5AC:
	ldr r0, [r2, #8]
	mov r1, r4
	ldr r2, [r0, #0x51c]
	mov r0, #0x100
	blx r2
	add sp, sp, #0x1c
	ldmia sp!, {r3, r4, pc}
_0230D5C8:
	ldr r0, _0230D8E4 ; =0x0234D6C0
	ldr r3, [r0, #0xc]
	add r0, r3, #0x7000
	ldr r0, [r0, #0x4c8]
	cmp r0, #0
	beq _0230D624
	mov r2, #0
	mov r1, r2
_0230D5E8:
	add r0, r3, r1, lsl #2
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4e8]
	cmp r0, #0
	beq _0230D608
	add r2, r2, #1
	cmp r2, #2
	bhs _0230D614
_0230D608:
	add r1, r1, #1
	cmp r1, #0xf
	blo _0230D5E8
_0230D614:
	cmp r2, #1
	bne _0230D624
	ldr r0, _0230D8F0 ; =0x000032C8
	bl _02304F40
_0230D624:
	ldr r0, _0230D8E4 ; =0x0234D6C0
	mov r2, #0
	ldr r1, [r0, #8]
	strb r2, [r1, #0x50c]
	ldrh r1, [r4, #2]
	cmp r1, #0
	bne _0230D674
	ldr r0, [r0, #8]
	mov r1, r4
	ldr r2, [r0, #0x51c]
	mov r0, #2
	blx r2
	ldr r1, _0230D8E4 ; =0x0234D6C0
	mov r0, #0x19
	ldr r2, [r1, #8]
	mov r1, #0
	ldr r2, [r2, #0x51c]
	blx r2
	add sp, sp, #0x1c
	ldmia sp!, {r3, r4, pc}
_0230D674:
	cmp r1, #0xa
	ldr r0, [r0, #8]
	mov r1, r4
	bne _0230D698
	ldr r2, [r0, #0x51c]
	mov r0, #0x2a
	blx r2
	add sp, sp, #0x1c
	ldmia sp!, {r3, r4, pc}
_0230D698:
	ldr r2, [r0, #0x51c]
	mov r0, #0x13
	blx r2
	ldr r1, _0230D8E4 ; =0x0234D6C0
	mov r0, #0x19
	ldr r2, [r1, #8]
	mov r1, #0
	ldr r2, [r2, #0x51c]
	blx r2
	add sp, sp, #0x1c
	ldmia sp!, {r3, r4, pc}
_0230D6C4:
	ldr r1, _0230D8E4 ; =0x0234D6C0
	ldr r0, [r1, #0xc]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x320]
	cmp r0, #0
	bne _0230D740
	ldrh r0, [r4, #2]
	mov r2, #0
	cmp r0, #0
	ldr r0, [r1, #8]
	add r0, r0, #0x500
	beq _0230D714
	strh r2, [r0, #0x26]
	ldr r0, [r1, #8]
	mov r1, r4
	ldr r2, [r0, #0x51c]
	mov r0, #0x100
	blx r2
	add sp, sp, #0x1c
	ldmia sp!, {r3, r4, pc}
_0230D714:
	strh r2, [r0, #0x2a]
	ldr r1, [r1, #8]
	ldr r0, _0230D8E8 ; =FUN_0230D154
	add r1, r1, #0x500
	strh r2, [r1, #0x28]
	bl FUN_0230AF9C
	mov r1, r0
	mov r0, #2
	bl FUN_0230EA1C
	add sp, sp, #0x1c
	ldmia sp!, {r3, r4, pc}
_0230D740:
	mov r1, #0
	mov r2, r1
	mov r0, #1
	bl FUN_0230AA84
	mov r0, #0
	bl FUN_0230AB64
_0230D758:
	ldrh r0, [r4, #2]
	cmp r0, #0
	beq _0230D794
	ldr r2, _0230D8E4 ; =0x0234D6C0
	mov r3, #0
	ldr r0, [r2, #8]
	mov r1, r4
	add r0, r0, #0x500
	strh r3, [r0, #0x26]
	ldr r2, [r2, #8]
	mov r0, #0x100
	ldr r2, [r2, #0x51c]
	blx r2
	add sp, sp, #0x1c
	ldmia sp!, {r3, r4, pc}
_0230D794:
	ldr r3, _0230D8E4 ; =0x0234D6C0
	mov ip, #0
	ldr r0, [r3, #8]
	mov r1, r4
	strb ip, [r0, #0x50d]
	ldr r2, [r3, #0xc]
	mov r0, #0x11
	add r2, r2, #0x1300
	strh ip, [r2, #0x16]
	ldr r2, [r3, #8]
	ldr r2, [r2, #0x51c]
	blx r2
	add sp, sp, #0x1c
	ldmia sp!, {r3, r4, pc}
_0230D7CC:
	ldrh r0, [r4, #2]
	cmp r0, #0
	addne sp, sp, #0x1c
	ldmneia sp!, {r3, r4, pc}
	ldr r0, _0230D8E4 ; =0x0234D6C0
	ldrh r1, [r4, #0xa]
	ldr r0, [r0, #8]
	add sp, sp, #0x1c
	add r0, r0, #0x500
	ldrh r2, [r0, #0x2a]
	mvn r1, r1
	and r1, r2, r1
	strh r1, [r0, #0x2a]
	ldmia sp!, {r3, r4, pc}
_0230D804:
	ldrh r0, [r4, #4]
	sub r0, r0, #0x10
	cmp r0, #7
	addls pc, pc, r0, lsl #2
	b _0230D8DC
_0230D818: ; jump table
	b _0230D838 ; case 0
	b _0230D858 ; case 1
	b _0230D878 ; case 2
	b _0230D898 ; case 3
	b _0230D8DC ; case 4
	b _0230D8DC ; case 5
	b _0230D8B8 ; case 6
	b _0230D8DC ; case 7
_0230D838:
	ldr r0, _0230D8E4 ; =0x0234D6C0
	mov r1, r4
	ldr r2, [r0, #8]
	mov r0, #0x1d
	ldr r2, [r2, #0x51c]
	blx r2
	add sp, sp, #0x1c
	ldmia sp!, {r3, r4, pc}
_0230D858:
	ldr r0, _0230D8E4 ; =0x0234D6C0
	mov r1, r4
	ldr r2, [r0, #8]
	mov r0, #0x1f
	ldr r2, [r2, #0x51c]
	blx r2
	add sp, sp, #0x1c
	ldmia sp!, {r3, r4, pc}
_0230D878:
	ldr r0, _0230D8E4 ; =0x0234D6C0
	mov r1, r4
	ldr r2, [r0, #8]
	mov r0, #0x20
	ldr r2, [r2, #0x51c]
	blx r2
	add sp, sp, #0x1c
	ldmia sp!, {r3, r4, pc}
_0230D898:
	ldr r0, _0230D8E4 ; =0x0234D6C0
	mov r1, r4
	ldr r2, [r0, #8]
	mov r0, #0x21
	ldr r2, [r2, #0x51c]
	blx r2
	add sp, sp, #0x1c
	ldmia sp!, {r3, r4, pc}
_0230D8B8:
	bl FUN_02305188
	add sp, sp, #0x1c
	ldmia sp!, {r3, r4, pc}
_0230D8C4:
	ldr r0, _0230D8E4 ; =0x0234D6C0
	mov r1, r4
	ldr r2, [r0, #8]
	mov r0, #0x100
	ldr r2, [r2, #0x51c]
	blx r2
_0230D8DC:
	add sp, sp, #0x1c
	ldmia sp!, {r3, r4, pc}
	.align 2, 0
_0230D8E4: .word 0x0234D6C0
_0230D8E8: .word FUN_0230D154
_0230D8EC: .word 0x0231CF40
_0230D8F0: .word 0x000032C8
	arm_func_end FUN_0230D154

	arm_func_start FUN_0230D8F4
FUN_0230D8F4: ; 0x0230D8F4
	stmdb sp!, {r3, lr}
	mov r1, r0
	ldrh r0, [r1, #2]
	cmp r0, #0
	ldmneia sp!, {r3, pc}
	ldrh r0, [r1, #4]
	cmp r0, #0x15
	bgt _0230D930
	bge _0230D948
	cmp r0, #9
	ldmgtia sp!, {r3, pc}
	cmp r0, #7
	ldmltia sp!, {r3, pc}
	cmpne r0, #9
	ldmia sp!, {r3, pc}
_0230D930:
	cmp r0, #0x1a
	ldmgtia sp!, {r3, pc}
	cmp r0, #0x19
	ldmltia sp!, {r3, pc}
	cmpne r0, #0x1a
	ldmia sp!, {r3, pc}
_0230D948:
	ldr r2, _0230D960 ; =0x0234D6C0
	mov r0, #9
	ldr r2, [r2, #8]
	ldr r2, [r2, #0x51c]
	blx r2
	ldmia sp!, {r3, pc}
	.align 2, 0
_0230D960: .word 0x0234D6C0
	arm_func_end FUN_0230D8F4

	arm_func_start FUN_0230D964
FUN_0230D964: ; 0x0230D964
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x1c
	mov r6, r0
	ldrh r0, [r6]
	ldr r1, _0230E180 ; =0x0234D6C0
	cmp r0, #0x1d
	ldr r4, [r1, #8]
	bgt _0230D9F0
	cmp r0, #0x1d
	bge _0230DA5C
	cmp r0, #0x15
	addls pc, pc, r0, lsl #2
	b _0230E168
_0230D998: ; jump table
	b _0230D9FC ; case 0
	b _0230E060 ; case 1
	b _0230E0C0 ; case 2
	b _0230E168 ; case 3
	b _0230E168 ; case 4
	b _0230E168 ; case 5
	b _0230E168 ; case 6
	b _0230E168 ; case 7
	b _0230E168 ; case 8
	b _0230E168 ; case 9
	b _0230DAF8 ; case 10
	b _0230DDC0 ; case 11
	b _0230DE10 ; case 12
	b _0230E168 ; case 13
	b _0230DF88 ; case 14
	b _0230DFFC ; case 15
	b _0230E168 ; case 16
	b _0230E168 ; case 17
	b _0230E168 ; case 18
	b _0230E168 ; case 19
	b _0230E168 ; case 20
	b _0230E11C ; case 21
_0230D9F0:
	cmp r0, #0x80
	beq _0230E144
	b _0230E168
_0230D9FC:
	ldrh r0, [r6, #2]
	ldr r2, [r4, #0x51c]
	mov r1, r6
	cmp r0, #0
	beq _0230DA20
	mov r0, #0x100
	blx r2
	add sp, sp, #0x1c
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_0230DA20:
	mov r0, #0x15
	blx r2
	ldr r3, _0230E184 ; =0x0231CF40
	ldr r0, _0230E188 ; =FUN_0230D964
	ldrh r1, [r3, #4]
	str r1, [sp]
	ldrh r1, [r3, #6]
	ldrh r2, [r3, #2]
	ldrh r3, [r3]
	bl FUN_0230B410
	mov r1, r0
	mov r0, #0x1d
	bl FUN_0230EA1C
	add sp, sp, #0x1c
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_0230DA5C:
	ldrh r0, [r6, #2]
	cmp r0, #0
	beq _0230DA80
	ldr r2, [r4, #0x51c]
	mov r1, r6
	mov r0, #0x100
	blx r2
	add sp, sp, #0x1c
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_0230DA80:
	add r0, r4, #0x440
	str r0, [r1, #0x20]
	ldrh r0, [r1, #0x24]
	mov r2, #1
	cmp r0, #0
	moveq r0, #1
	streqh r0, [r1, #0x24]
	ldr r0, _0230E180 ; =0x0234D6C0
	ldrh r1, [r0, #0x26]
	cmp r1, #0
	moveq r1, #0xc8
	streqh r1, [r0, #0x26]
	ldr r0, _0230E180 ; =0x0234D6C0
	mov r1, #0xff
	strb r1, [r0, #0x28]
	strb r1, [r0, #0x29]
	strb r1, [r0, #0x2a]
	strb r1, [r0, #0x2b]
	strb r1, [r0, #0x2c]
	strb r1, [r0, #0x2d]
	str r2, [r4, #0x5e4]
	ldr r0, _0230E188 ; =FUN_0230D964
	ldr r1, _0230E18C ; =0x0234D6E0
	str r2, [r4, #0x5e8]
	bl FUN_0230ACD4
	mov r1, r0
	mov r0, #0xa
	bl FUN_0230EA1C
	add sp, sp, #0x1c
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_0230DAF8:
	ldrh r0, [r6, #2]
	cmp r0, #0
	beq _0230DB1C
	ldr r2, [r4, #0x51c]
	mov r1, r6
	mov r0, #0x100
	blx r2
	add sp, sp, #0x1c
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_0230DB1C:
	ldrh r0, [r6, #8]
	cmp r0, #3
	addeq sp, sp, #0x1c
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	cmp r0, #4
	beq _0230DD48
	cmp r0, #5
	bne _0230DDA8
	add ip, r4, #0x600
	mov r5, #0
	add r0, r4, #0x500
	mov fp, #0x180
	b _0230DC78
_0230DB50:
	mla r2, r5, fp, ip
	ldrb r3, [r6, #0xa]
	ldrb r1, [r2, #0xca]
	mov lr, #0
	mov sl, lr
	cmp r3, r1
	ldreqb r1, [r2, #0xcb]
	ldreqb r2, [r6, #0xb]
	mov r7, lr
	mov r8, lr
	cmpeq r2, r1
	moveq sl, #1
	mov sb, lr
	cmp sl, #0
	beq _0230DBA4
	mov r2, #0x180
	mla r2, r5, r2, ip
	ldrb r1, [r6, #0xc]
	ldrb r2, [r2, #0xcc]
	cmp r1, r2
	moveq sb, #1
_0230DBA4:
	cmp sb, #0
	beq _0230DBC4
	mov r1, #0x180
	mla r1, r5, r1, ip
	ldrb r2, [r6, #0xd]
	ldrb r1, [r1, #0xcd]
	cmp r2, r1
	moveq r8, #1
_0230DBC4:
	cmp r8, #0
	beq _0230DBE4
	mov r1, #0x180
	mla r1, r5, r1, ip
	ldrb r2, [r6, #0xe]
	ldrb r1, [r1, #0xce]
	cmp r2, r1
	moveq r7, #1
_0230DBE4:
	cmp r7, #0
	beq _0230DC04
	mov r1, #0x180
	mla r1, r5, r1, ip
	ldrb r2, [r6, #0xf]
	ldrb r1, [r1, #0xcf]
	cmp r2, r1
	moveq lr, #1
_0230DC04:
	cmp lr, #0
	beq _0230DC74
	mov r0, #0x180
	mla r0, r5, r0, ip
	ldrh r1, [r6, #0x36]
	add sb, r6, #0x38
	add r8, r0, #0xf8
	strh r1, [r0, #0xf6]
	mov r7, #8
_0230DC28:
	ldmia sb!, {r0, r1, r2, r3}
	stmia r8!, {r0, r1, r2, r3}
	subs r7, r7, #1
	bne _0230DC28
	add r1, r4, #0x600
	mov r0, #0x180
	mla r0, r5, r0, r1
	mov r1, #0xc0
	bl FUN_0230409C
	ldr r1, _0230E180 ; =0x0234D6C0
	add r2, r4, #0x600
	mov r0, #0x180
	mla r2, r5, r0, r2
	ldrh r0, [r1]
	add r1, r4, #0x440
	mov r3, #0xc0
	bl FUN_02305354
	str r5, [r4, #0x5ec]
	b _0230DCE8
_0230DC74:
	add r5, r5, #1
_0230DC78:
	ldrh r1, [r0, #0xe0]
	cmp r5, r1
	blt _0230DB50
	cmp r5, #0x10
	bge _0230DCE8
	mov r0, #0x180
	mla r1, r5, r0, ip
	mov r0, r6
	add r7, r5, #1
	add r3, r4, #0x500
	add r1, r1, #0xc0
	mov r2, #0xb8
	strh r7, [r3, #0xe0]
	bl FUN_023054F0
	add r1, r4, #0x600
	mov r0, #0x180
	mla r0, r5, r0, r1
	mov r1, #0xc0
	bl FUN_0230409C
	ldr r1, _0230E180 ; =0x0234D6C0
	add r2, r4, #0x600
	mov r0, #0x180
	mla r2, r5, r0, r2
	ldrh r0, [r1]
	add r1, r4, #0x440
	mov r3, #0xc0
	bl FUN_02305354
	str r5, [r4, #0x5ec]
_0230DCE8:
	ldr r2, [r4, #0x51c]
	mov r1, r6
	mov r0, #4
	blx r2
	ldr r0, [r4, #0x5e4]
	cmp r0, #0
	addeq sp, sp, #0x1c
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r0, [r4, #0x5e8]
	cmp r0, #0
	beq _0230DD28
	ldr r0, _0230E18C ; =0x0234D6E0
	bl FUN_0230D034
	cmp r0, #0
	bne _0230DD28
	bl FUN_0230E5E4
_0230DD28:
	ldr r0, _0230E188 ; =FUN_0230D964
	ldr r1, _0230E18C ; =0x0234D6E0
	bl FUN_0230ACD4
	mov r1, r0
	mov r0, #0xa
	bl FUN_0230EA1C
	add sp, sp, #0x1c
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_0230DD48:
	ldr r2, [r4, #0x51c]
	mov r1, r6
	mov r0, #5
	blx r2
	ldr r0, [r4, #0x5e4]
	cmp r0, #0
	addeq sp, sp, #0x1c
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r0, [r4, #0x5e8]
	cmp r0, #0
	beq _0230DD88
	ldr r0, _0230E18C ; =0x0234D6E0
	bl FUN_0230D034
	cmp r0, #0
	bne _0230DD88
	bl FUN_0230E5E4
_0230DD88:
	ldr r0, _0230E188 ; =FUN_0230D964
	ldr r1, _0230E18C ; =0x0234D6E0
	bl FUN_0230ACD4
	mov r1, r0
	mov r0, #0xa
	bl FUN_0230EA1C
	add sp, sp, #0x1c
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_0230DDA8:
	ldr r2, [r4, #0x51c]
	mov r1, r6
	mov r0, #0x100
	blx r2
	add sp, sp, #0x1c
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_0230DDC0:
	ldrh r0, [r6, #2]
	cmp r0, #0
	beq _0230DDE4
	ldr r2, [r4, #0x51c]
	mov r1, r6
	mov r0, #0x100
	blx r2
	add sp, sp, #0x1c
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_0230DDE4:
	ldr r1, [r4, #0x520]
	mov r2, #0
	ldr r0, _0230E188 ; =FUN_0230D964
	mov r3, #1
	str r2, [sp]
	bl FUN_0230ABB0
	mov r1, r0
	mov r0, #0xc
	bl FUN_0230EA1C
	add sp, sp, #0x1c
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_0230DE10:
	ldrh r0, [r6, #2]
	cmp r0, #0
	beq _0230DE40
	add r0, r4, #0x500
	mov r1, #0
	strh r1, [r0, #0xe0]
	ldr r2, [r4, #0x51c]
	mov r1, r6
	mov r0, #0xb
	blx r2
	add sp, sp, #0x1c
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_0230DE40:
	ldrh r0, [r6, #8]
	cmp r0, #9
	bgt _0230DE6C
	cmp r0, #6
	blt _0230DF70
	beq _0230DE7C
	cmp r0, #7
	beq _0230DE98
	cmp r0, #9
	beq _0230DF48
	b _0230DF70
_0230DE6C:
	cmp r0, #0x1a
	addeq sp, sp, #0x1c
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	b _0230DF70
_0230DE7C:
	add r0, r4, #0x500
	mov r1, #0
	strh r1, [r0, #0x2a]
	mov r1, #1
	strh r1, [r0, #0x28]
	add sp, sp, #0x1c
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_0230DE98:
	ldrh r2, [r6, #0xa]
	add r0, r4, #0x500
	mov r1, r6
	strh r2, [r0, #0xe2]
	ldr r2, [r4, #0x51c]
	mov r0, #6
	blx r2
	ldr r1, _0230E190 ; =FUN_0230D8F4
	add r3, r4, #0x500
	mov r0, #1
	mov r2, #0
	strh r0, [r3, #0x2a]
	bl FUN_0230AA84
	cmp r0, #0
	addne sp, sp, #0x1c
	ldmneia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	add r0, r4, #0x500
	ldrh r0, [r0, #0x2c]
	add r1, r4, #0x500
	ldrh r2, [r1, #0x18]
	cmp r0, #0
	movne r0, #0
	moveq r0, #1
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	str r2, [sp]
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	mov r0, #1
	str r0, [sp, #0x14]
	str r0, [sp, #0x18]
	ldrh r2, [r1, #0x1a]
	ldr r1, [r4, #0x504]
	ldr r0, _0230E188 ; =FUN_0230D964
	add r3, r4, #0x40
	bl FUN_0230B1E8
	mov r1, r0
	mov r0, #0xe
	bl FUN_0230EA1C
	add sp, sp, #0x1c
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_0230DF48:
	ldr r2, [r4, #0x51c]
	mov r1, r6
	mov r0, #0xa
	blx r2
	add r0, r4, #0x500
	mov r1, #0
	strh r1, [r0, #0x2a]
	strh r1, [r0, #0x28]
	add sp, sp, #0x1c
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_0230DF70:
	ldr r2, [r4, #0x51c]
	mov r1, r6
	mov r0, #0x100
	blx r2
	add sp, sp, #0x1c
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_0230DF88:
	ldrh r0, [r6, #4]
	cmp r0, #0xa
	beq _0230DFB0
	cmp r0, #0xc
	addeq sp, sp, #0x1c
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	cmp r0, #0xd
	addeq sp, sp, #0x1c
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	b _0230DFE4
_0230DFB0:
	add r0, r4, #0x500
	mov r1, #1
	strh r1, [r0, #0x28]
	bl FUN_0230D0A4
	cmp r0, #0
	addeq sp, sp, #0x1c
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r2, [r4, #0x51c]
	mov r0, #0x19
	mov r1, #0
	blx r2
	add sp, sp, #0x1c
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_0230DFE4:
	ldr r2, [r4, #0x51c]
	mov r1, r6
	mov r0, #0x100
	blx r2
	add sp, sp, #0x1c
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_0230DFFC:
	mov r0, #0
	strb r0, [r4, #0x50c]
	ldrh r0, [r6, #2]
	cmp r0, #0
	bne _0230E024
	ldr r2, [r4, #0x51c]
	mov r1, r6
	mov r0, #8
	blx r2
	b _0230E048
_0230E024:
	cmp r0, #9
	ldr r2, [r4, #0x51c]
	mov r1, r6
	bne _0230E040
	mov r0, #0x29
	blx r2
	b _0230E048
_0230E040:
	mov r0, #0x12
	blx r2
_0230E048:
	ldr r2, [r4, #0x51c]
	mov r0, #0x19
	mov r1, #0
	blx r2
	add sp, sp, #0x1c
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_0230E060:
	ldrh r0, [r6, #2]
	cmp r0, #0
	add r0, r4, #0x500
	beq _0230E090
	mov r1, #0
	strh r1, [r0, #0x26]
	ldr r2, [r4, #0x51c]
	mov r1, r6
	mov r0, #0x100
	blx r2
	add sp, sp, #0x1c
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_0230E090:
	mov r2, #0
	strh r2, [r0, #0x2a]
	ldr r1, [r1, #8]
	ldr r0, _0230E188 ; =FUN_0230D964
	add r1, r1, #0x500
	strh r2, [r1, #0x28]
	bl FUN_0230AF9C
	mov r1, r0
	mov r0, #2
	bl FUN_0230EA1C
	add sp, sp, #0x1c
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_0230E0C0:
	ldrh r0, [r6, #2]
	cmp r0, #0
	beq _0230E0F0
	add r0, r4, #0x500
	mov r1, #0
	strh r1, [r0, #0x26]
	ldr r2, [r4, #0x51c]
	mov r1, r6
	mov r0, #0x100
	blx r2
	add sp, sp, #0x1c
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_0230E0F0:
	mov r2, #0
	strb r2, [r4, #0x50d]
	ldr r0, [r1, #0xc]
	mov r1, r6
	add r0, r0, #0x1300
	strh r2, [r0, #0x16]
	ldr r2, [r4, #0x51c]
	mov r0, #0x11
	blx r2
	add sp, sp, #0x1c
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_0230E11C:
	bl FUN_0230D0A4
	cmp r0, #0
	addeq sp, sp, #0x1c
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r2, [r4, #0x51c]
	mov r0, #0x19
	mov r1, #0
	blx r2
	add sp, sp, #0x1c
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_0230E144:
	ldrh r0, [r6, #4]
	cmp r0, #0x16
	beq _0230E15C
	add sp, sp, #0x1c
	cmp r0, #0x17
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_0230E15C:
	bl FUN_02305188
	add sp, sp, #0x1c
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_0230E168:
	ldr r2, [r4, #0x51c]
	mov r1, r6
	mov r0, #0x100
	blx r2
	add sp, sp, #0x1c
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_0230E180: .word 0x0234D6C0
_0230E184: .word 0x0231CF40
_0230E188: .word FUN_0230D964
_0230E18C: .word 0x0234D6E0
_0230E190: .word FUN_0230D8F4
	arm_func_end FUN_0230D964

	arm_func_start FUN_0230E194
FUN_0230E194: ; 0x0230E194
	stmdb sp!, {r3, lr}
	sub sp, sp, #8
	add r0, sp, #0
	bl FUN_0230509C
	mov r1, #0
	add r2, sp, #0
	mov r3, r1
_0230E1B0:
	ldrb r0, [r2], #1
	add r1, r1, #1
	cmp r1, #6
	add r3, r3, r0
	blt _0230E1B0
	ldr r1, _0230E1F4 ; =0x027FFC3C
	ldr r0, _0230E1F8 ; =0xCCCCCCCD
	ldr r1, [r1]
	mov r2, #0x14
	add r1, r3, r1
	rsb r3, r1, r1, lsl #3
	umull r1, r0, r3, r0
	mov r0, r0, lsr #4
	umull r0, r1, r2, r0
	sub r0, r3, r0
	add sp, sp, #8
	ldmia sp!, {r3, pc}
	.align 2, 0
_0230E1F4: .word 0x027FFC3C
_0230E1F8: .word 0xCCCCCCCD
	arm_func_end FUN_0230E194

	arm_func_start FUN_0230E1FC
FUN_0230E1FC: ; 0x0230E1FC
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	ldr r4, _0230E3D4 ; =0x0234D6C0
	mov sb, r1
	ldr r1, [r4, #0xc]
	mov r8, r2
	cmp r1, #0
	addne r1, r1, #0x1300
	ldrneh r1, [r1, #0x16]
	mov r7, r3
	cmpne r1, #0
	movne r0, #2
	ldmneia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	add r0, r0, #0x1f
	bic r4, r0, #0x1f
	add r0, r4, #0x1f
	add r0, r0, #0x1e00
	cmp r7, #0x10000
	bic r5, r0, #0x1f
	bne _0230E250
	bl FUN_0230A7D8
	mov r7, r0
_0230E250:
	bl FUN_02304ED0
	ldr r3, _0230E3D8 ; =0x0000FFFF
	ldr r1, _0230E3DC ; =0x0231CF40
	mov r2, #5
	strh r3, [r1, #6]
	strh r2, [r1]
	mov r2, #0x28
	strh r2, [r1, #2]
	mov r6, r0
	strh r2, [r1, #4]
	mov r2, #1
	ldr r0, [sp, #0x20]
	ldr r3, _0230E3D4 ; =0x0234D6C0
	str r2, [r1, #0xc]
	strh r0, [r3]
	str r4, [r3, #8]
	mov r1, r4
	mov r0, #0
	mov r2, #0x1e00
	str r5, [r3, #0xc]
	bl FUN_0230550C
	mov r1, r5
	mov r0, #0
	mov r2, #0x1340
	bl FUN_023054D8
	ldrb r0, [sb, #1]
	add r2, r4, #0x530
	mov r1, #0
	cmp r0, #0
	ble _0230E2E4
_0230E2C8:
	add r0, sb, r1, lsl #1
	ldrh r0, [r0, #2]
	add r1, r1, #1
	strh r0, [r2], #2
	ldrb r0, [sb, #1]
	cmp r1, r0
	blt _0230E2C8
_0230E2E4:
	add r0, r4, #0x138
	add r3, r0, #0x400
	ldr r0, _0230E3DC ; =0x0231CF40
	mov ip, #0
	ldr r1, [r0, #8]
_0230E2F8:
	ldrh r2, [r1]
	cmp r2, #0
	beq _0230E31C
	add r1, r1, #2
	add ip, ip, #1
	str r1, [r0, #8]
	cmp ip, #0x10
	strh r2, [r3], #2
	blt _0230E2F8
_0230E31C:
	mov r0, sb
	add r1, r5, #0x1300
	mov r2, #0x16
	bl FUN_02305618
	ldrb r0, [sb, #1]
	cmp r0, #0xa
	bhs _0230E348
	add r0, r5, r0, lsl #1
	add r0, r0, #0x1300
	mov r1, #0
	strh r1, [r0, #2]
_0230E348:
	add r0, r4, #0x500
	mov r1, #0x100
	strh r1, [r0]
	mov r1, #8
	strh r1, [r0, #2]
	mov r2, #0
	strh r2, [r0, #0x18]
	strh r2, [r0, #0x1a]
	mov r1, #1
	strh r1, [r0, #0x2c]
	add r0, r5, #0x400
	str r0, [r4, #0x504]
	strh r2, [r4, #0xe]
	strh r2, [r4, #0x12]
	strh r1, [r4, #0x16]
	strh r2, [r4, #0x14]
	str r8, [r4, #8]
	strh r7, [r4, #0xc]
	bl FUN_0230E194
	add r0, r0, #0xc8
	strh r0, [r4, #0x18]
	mov r0, #0xf
	strh r0, [r4, #0x10]
	mov r3, #0
	strb r3, [r4, #0x50c]
	strb r3, [r4, #0x50d]
	add r1, r5, #0x1300
	mov r2, #1
	mov r0, r6
	strh r2, [r1, #0x16]
	add r1, r5, #0x1000
	str r3, [r1, #0x31c]
	bl FUN_02304EE4
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	.align 2, 0
_0230E3D4: .word 0x0234D6C0
_0230E3D8: .word 0x0000FFFF
_0230E3DC: .word 0x0231CF40
	arm_func_end FUN_0230E1FC

	arm_func_start FUN_0230E3E0
FUN_0230E3E0: ; 0x0230E3E0
	stmdb sp!, {r4, lr}
	ldr r2, _0230E4B0 ; =0x0234D6C0
	mov r3, #0
	ldr r1, [r2, #8]
	mov r0, #0xa
	add r1, r1, #0x500
	strh r3, [r1, #0x28]
	ldr r1, [r2, #8]
	add r1, r1, #0x500
	strh r3, [r1, #0x2a]
	ldr r1, [r2, #8]
	add r1, r1, #0x500
	strh r3, [r1, #0x26]
	ldr r1, [r2, #8]
	add r1, r1, #0x500
	strh r3, [r1, #0x48]
	bl FUN_0230E774
	ldr r4, _0230E4B0 ; =0x0234D6C0
	ldr r0, [r4, #0xc]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x320]
	cmp r0, #0
	bne _0230E488
_0230E43C:
	ldrh r2, [r4]
	ldmib r4, {r0, r1}
	ldr r1, [r1, #0x508]
	bl FUN_0230B024
	cmp r0, #4
	beq _0230E43C
	cmp r0, #2
	movne r0, #8
	ldmneia sp!, {r4, pc}
	ldr r0, _0230E4B0 ; =0x0234D6C0
	ldr r0, [r0, #8]
	ldr r0, [r0, #0x508]
	bl FUN_0230AB64
	ldr r0, _0230E4B0 ; =0x0234D6C0
	mov r2, #1
	ldr r1, [r0, #8]
	mov r0, #0
	strb r2, [r1, #0x50d]
	ldmia sp!, {r4, pc}
_0230E488:
	ldr r0, [r4, #8]
	ldr r0, [r0, #0x508]
	bl FUN_0230AB64
	mov r0, r4
	ldr r0, [r0, #8]
	mov r1, #1
	strb r1, [r0, #0x50d]
	bl FUN_0230D104
	mov r0, #0
	ldmia sp!, {r4, pc}
	.align 2, 0
_0230E4B0: .word 0x0234D6C0
	arm_func_end FUN_0230E3E0

	arm_func_start FUN_0230E4B4
FUN_0230E4B4: ; 0x0230E4B4
	stmdb sp!, {r4, r5, r6, lr}
	bl FUN_02304ED0
	ldr r3, _0230E58C ; =0x0234D6C0
	mov r4, r0
	ldr r1, [r3, #0xc]
	mov r0, #0
	add r1, r1, #0x1000
	str r0, [r1, #0x320]
	ldr r5, [r3, #0xc]
	mov r2, #0x7e0
	add r1, r5, #0x3f
	add r1, r1, #0x1b00
	bic r1, r1, #0x1f
	str r1, [r3, #4]
	add r1, r5, #0x1000
	ldr r6, [r1, #0x4e4]
	add r1, r5, #0x1340
	bl FUN_023054D8
	mov r0, r6
	bl FUN_0230B60C
	ldr r2, _0230E58C ; =0x0234D6C0
	mov r0, #0
	ldr r1, [r2, #0xc]
	mov r3, #2
	add r1, r1, #0x1000
	str r0, [r1, #0x4e8]
	ldr r1, [r2, #8]
	ldr r5, _0230E590 ; =FUN_0230B6E8
	add r1, r1, #0x500
	strh r3, [r1, #0x24]
	ldr r1, [r2, #8]
	mov r3, #1
	str r5, [r1, #0x51c]
	ldr r5, [r2, #8]
	ldr ip, _0230E594 ; =FUN_0230D964
	sub r1, r3, #2
	str ip, [r5, #0x508]
	ldr r5, [r2, #8]
	str r0, [r5, #0x5e4]
	ldr r0, [r2, #8]
	str r3, [r0, #0x5e8]
	ldr r0, [r2, #8]
	str r1, [r0, #0x5ec]
	bl FUN_0230C414
	ldr r0, _0230E598 ; =FUN_0230E6CC
	ldr r1, _0230E59C ; =FUN_0230E71C
	bl FUN_0230C42C
	bl FUN_0230C440
	bl FUN_0230E3E0
	mov r5, r0
	mov r0, r4
	bl FUN_02304EE4
	mov r0, r5
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_0230E58C: .word 0x0234D6C0
_0230E590: .word FUN_0230B6E8
_0230E594: .word FUN_0230D964
_0230E598: .word FUN_0230E6CC
_0230E59C: .word FUN_0230E71C
	arm_func_end FUN_0230E4B4

	arm_func_start FUN_0230E5A0
FUN_0230E5A0: ; 0x0230E5A0
	stmdb sp!, {r4, lr}
	ldr r0, _0230E5D4 ; =0x0234D6C0
	ldr r0, [r0, #8]
	ldr r0, [r0, #0x508]
	bl FUN_0230AFE4
	mov r4, r0
	mov r1, r4
	mov r0, #1
	bl FUN_0230EA1C
	cmp r4, #2
	moveq r4, #0
	mov r0, r4
	ldmia sp!, {r4, pc}
	.align 2, 0
_0230E5D4: .word 0x0234D6C0
	arm_func_end FUN_0230E5A0

	arm_func_start FUN_0230E5D8
FUN_0230E5D8: ; 0x0230E5D8
	ldr ip, _0230E5E0 ; =FUN_0230E5A0
	bx ip
	.align 2, 0
_0230E5E0: .word FUN_0230E5A0
	arm_func_end FUN_0230E5D8

	arm_func_start FUN_0230E5E4
FUN_0230E5E4: ; 0x0230E5E4
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, #1
	bl FUN_02304ED0
	ldr r1, _0230E658 ; =0x0234D6C0
	mov r4, r0
	ldr r2, [r1, #8]
	add r0, r2, #0x500
	ldrh r0, [r0, #0x26]
	cmp r0, #0
	bne _0230E648
	mov r0, #0
	str r0, [r2, #0x5e4]
	ldr r0, [r1, #8]
	mov r1, r5
	add r0, r0, #0x500
	strh r1, [r0, #0x26]
	bl FUN_0230EA54
	cmp r0, #0
	beq _0230E640
	ldr r0, _0230E65C ; =FUN_0230E5D8
	bl FUN_0230EBDC
	mov r5, #0
	b _0230E648
_0230E640:
	bl FUN_0230E5A0
	mov r5, r0
_0230E648:
	mov r0, r4
	bl FUN_02304EE4
	mov r0, r5
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_0230E658: .word 0x0234D6C0
_0230E65C: .word FUN_0230E5D8
	arm_func_end FUN_0230E5E4

	arm_func_start FUN_0230E660
FUN_0230E660: ; 0x0230E660
	stmdb sp!, {r4, lr}
	bl FUN_02304ED0
	ldr r1, _0230E698 ; =0x0234D6C0
	mov r4, r0
	ldr r0, [r1, #0xc]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x320]
	cmp r0, #0
	beq _0230E688
	bl FUN_02305188
_0230E688:
	bl FUN_0230E5E4
	mov r0, r4
	bl FUN_02304EE4
	ldmia sp!, {r4, pc}
	.align 2, 0
_0230E698: .word 0x0234D6C0
	arm_func_end FUN_0230E660

	arm_func_start FUN_0230E69C
FUN_0230E69C: ; 0x0230E69C
	ldr r0, _0230E6AC ; =0x0234D6C0
	ldr r0, [r0, #8]
	ldr r0, [r0, #0x5ec]
	bx lr
	.align 2, 0
_0230E6AC: .word 0x0234D6C0
	arm_func_end FUN_0230E69C

	arm_func_start FUN_0230E6B0
FUN_0230E6B0: ; 0x0230E6B0
	ldr r2, _0230E6C8 ; =0x0234D6C0
	mov r1, #0x180
	ldr r2, [r2, #8]
	add r2, r2, #0x600
	mla r0, r1, r0, r2
	bx lr
	.align 2, 0
_0230E6C8: .word 0x0234D6C0
	arm_func_end FUN_0230E6B0

	arm_func_start FUN_0230E6CC
FUN_0230E6CC: ; 0x0230E6CC
	ldr r1, _0230E718 ; =0x0234D6C0
	mov r2, #0xdc
	strh r2, [r1, #0x26]
	ldr r2, [r1, #8]
	mov r3, #0
	str r3, [r2, #0x5e8]
	ldrb r2, [r0]
	strb r2, [r1, #0x28]
	ldrb r2, [r0, #1]
	strb r2, [r1, #0x29]
	ldrb r2, [r0, #2]
	strb r2, [r1, #0x2a]
	ldrb r2, [r0, #3]
	strb r2, [r1, #0x2b]
	ldrb r2, [r0, #4]
	strb r2, [r1, #0x2c]
	ldrb r0, [r0, #5]
	strb r0, [r1, #0x2d]
	bx lr
	.align 2, 0
_0230E718: .word 0x0234D6C0
	arm_func_end FUN_0230E6CC

	arm_func_start FUN_0230E71C
FUN_0230E71C: ; 0x0230E71C
	ldr r1, _0230E76C ; =0x0234D6C0
	mov r0, #0xa
	strh r0, [r1, #0x26]
	ldr r2, [r1, #8]
	mov r3, #1
	ldr r0, _0230E770 ; =0x0231424C
	str r3, [r2, #0x5e8]
	ldrb ip, [r0]
	ldrb r3, [r0, #1]
	ldrb r2, [r0, #2]
	strb ip, [r1, #0x28]
	strb r3, [r1, #0x29]
	strb r2, [r1, #0x2a]
	ldrb r2, [r0, #3]
	strb r2, [r1, #0x2b]
	ldrb r2, [r0, #4]
	strb r2, [r1, #0x2c]
	ldrb r0, [r0, #5]
	strb r0, [r1, #0x2d]
	bx lr
	.align 2, 0
_0230E76C: .word 0x0234D6C0
_0230E770: .word 0x0231424C
	arm_func_end FUN_0230E71C

	arm_func_start FUN_0230E774
FUN_0230E774: ; 0x0230E774
	ldr r1, _0230E780 ; =0x0234D6C0
	strh r0, [r1, #0x26]
	bx lr
	.align 2, 0
_0230E780: .word 0x0234D6C0
	arm_func_end FUN_0230E774

	arm_func_start FUN_0230E784
FUN_0230E784: ; 0x0230E784
	stmdb sp!, {r3, r4, lr}
	sub sp, sp, #0xc
	ldrh r4, [sp, #0x18]
	mov r3, r2
	mov r2, r1
	str r4, [sp]
	mov r4, #1
	str r4, [sp, #4]
	mov r4, #3
	mov r1, #0
	str r4, [sp, #8]
	bl FUN_0230B08C
	mov r4, r0
	mov r1, r4
	mov r0, #0xf
	bl FUN_0230EA1C
	mov r0, r4
	add sp, sp, #0xc
	ldmia sp!, {r3, r4, pc}
	arm_func_end FUN_0230E784

	arm_func_start FUN_0230E7D0
FUN_0230E7D0: ; 0x0230E7D0
	stmdb sp!, {r3, r4, r5, lr}
	ldr ip, _0230E8A8 ; =0x0234D6C0
	mov r3, r1, lsl #0x10
	ldr r5, [ip, #8]
	mov ip, r2, lsl #0x10
	add lr, r5, #0x500
	ldrh r4, [lr, #0x28]
	mov r1, r0
	mov r2, r3, lsr #0x10
	cmp r4, #0
	ldrneh r0, [lr, #0x26]
	mov r4, ip, lsr #0x10
	cmpne r0, #1
	moveq r0, #1
	ldmeqia sp!, {r3, r4, r5, pc}
	ldrh r0, [lr, #0x24]
	cmp r0, #1
	beq _0230E824
	cmp r0, #2
	beq _0230E86C
	b _0230E8A0
_0230E824:
	ldrh r0, [lr, #0x2c]
	cmp r0, #0
	moveq r0, #0x3e8
	movne r0, #0
	mov r3, r0, lsl #0x10
	str r4, [sp]
	ldr r0, [r5, #0x508]
	mov r3, r3, lsr #0x10
	bl FUN_0230E784
	cmp r0, #2
	bne _0230E860
	ldr r1, _0230E8A8 ; =0x0234D6C0
	mov r2, #1
	ldr r1, [r1, #8]
	strb r2, [r1, #0x50c]
_0230E860:
	cmp r0, #2
	moveq r0, #0
	ldmia sp!, {r3, r4, r5, pc}
_0230E86C:
	ldr r0, _0230E8AC ; =FUN_0230D964
	mov r3, #0
	str r4, [sp]
	bl FUN_0230E784
	cmp r0, #2
	bne _0230E894
	ldr r1, _0230E8A8 ; =0x0234D6C0
	mov r2, #1
	ldr r1, [r1, #8]
	strb r2, [r1, #0x50c]
_0230E894:
	cmp r0, #2
	moveq r0, #0
	ldmia sp!, {r3, r4, r5, pc}
_0230E8A0:
	mov r0, #1
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_0230E8A8: .word 0x0234D6C0
_0230E8AC: .word FUN_0230D964
	arm_func_end FUN_0230E7D0

	arm_func_start FUN_0230E8B0
FUN_0230E8B0: ; 0x0230E8B0
	stmdb sp!, {r4, lr}
	ldr r1, _0230E990 ; =0x0234D6C0
	mov r4, r0
	ldr r0, [r1, #8]
	ldrh r2, [r4, #0x4c]
	add r0, r0, #0x500
	strh r2, [r0]
	ldr r0, [r1, #8]
	ldrh r2, [r4, #0x4e]
	add r0, r0, #0x500
	strh r2, [r0, #2]
	ldr r0, [r1, #8]
	ldr r2, [r1, #0xc]
	add r0, r0, #0x500
	ldrh r3, [r0]
	add r0, r2, #0x1000
	sub r2, r3, #6
	str r2, [r0, #0x318]
	ldr r0, [r1, #8]
	add r0, r0, #0x500
	ldrh r0, [r0, #2]
	bl FUN_0230EC24
	ldrh r0, [r4, #0x4c]
	ldr r1, _0230E990 ; =0x0234D6C0
	mov r2, #0
	add r3, r0, #0x55
	ldr r0, [r1, #8]
	bic r3, r3, #0x1f
	mov r3, r3, lsl #1
	add r0, r0, #0x500
	strh r3, [r0, #0x1a]
	ldrh r3, [r4, #0x4e]
	ldr r0, [r1, #8]
	add r3, r3, #0x21
	bic r3, r3, #0x1f
	add r0, r0, #0x500
	strh r3, [r0, #0x18]
	ldr r0, [r1, #8]
	str r4, [r0, #0x520]
	ldr r0, [r1, #8]
	ldrh r3, [r4, #0x48]
	add r0, r0, #0x500
	strh r3, [r0, #0x48]
	ldr r0, [r1, #8]
	str r2, [r0, #0x5e4]
	ldr r0, [r1, #8]
	ldr r0, [r0, #0x508]
	bl FUN_0230AC8C
	mov r4, r0
	mov r1, r4
	mov r0, #0xb
	bl FUN_0230EA1C
	cmp r4, #2
	moveq r4, #0
	mov r0, r4
	ldmia sp!, {r4, pc}
	.align 2, 0
_0230E990: .word 0x0234D6C0
	arm_func_end FUN_0230E8B0

	arm_func_start FUN_0230E994
FUN_0230E994: ; 0x0230E994
	stmdb sp!, {r4, lr}
	ldr r0, _0230E9F8 ; =0x0234D6C0
	mov r2, #1
	ldr r1, [r0, #8]
	str r2, [r1, #0x5e4]
	ldr r0, [r0, #8]
	ldr r0, [r0, #0x5e8]
	cmp r0, #0
	beq _0230E9CC
	ldr r0, _0230E9FC ; =0x0234D6E0
	bl FUN_0230D034
	cmp r0, #0
	bne _0230E9CC
	bl FUN_0230E5E4
_0230E9CC:
	ldr r0, _0230EA00 ; =FUN_0230D964
	ldr r1, _0230E9FC ; =0x0234D6E0
	bl FUN_0230ACD4
	mov r4, r0
	mov r1, r4
	mov r0, #0xa
	bl FUN_0230EA1C
	cmp r4, #2
	moveq r4, #0
	mov r0, r4
	ldmia sp!, {r4, pc}
	.align 2, 0
_0230E9F8: .word 0x0234D6C0
_0230E9FC: .word 0x0234D6E0
_0230EA00: .word FUN_0230D964
	arm_func_end FUN_0230E994

	arm_func_start FUN_0230EA04
FUN_0230EA04: ; 0x0230EA04
	ldr r0, _0230EA18 ; =0x0234D6C0
	ldr r0, [r0, #8]
	add r0, r0, #0x500
	ldrh r0, [r0, #0xe2]
	bx lr
	.align 2, 0
_0230EA18: .word 0x0234D6C0
	arm_func_end FUN_0230EA04

	arm_func_start FUN_0230EA1C
FUN_0230EA1C: ; 0x0230EA1C
	stmdb sp!, {r3, lr}
	cmp r1, #2
	cmpne r1, #0
	ldmeqia sp!, {r3, pc}
	ldr r2, _0230EA50 ; =0x0234D6C0
	strh r0, [sp]
	ldr r0, [r2, #8]
	strh r1, [sp, #2]
	ldr r2, [r0, #0x51c]
	add r1, sp, #0
	mov r0, #0xff
	blx r2
	ldmia sp!, {r3, pc}
	.align 2, 0
_0230EA50: .word 0x0234D6C0
	arm_func_end FUN_0230EA1C

	arm_func_start FUN_0230EA54
FUN_0230EA54: ; 0x0230EA54
	ldr r0, _0230EA6C ; =0x0234D700
	ldr r0, [r0]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	bx lr
	.align 2, 0
_0230EA6C: .word 0x0234D700
	arm_func_end FUN_0230EA54

	arm_func_start FUN_0230EA70
FUN_0230EA70: ; 0x0230EA70
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	ldr r4, _0230EBD8 ; =0x0234D700
	mov sb, r0
	mov r8, r1
	mov r7, r2
	mov r6, r3
	ldr r4, [r4]
	bl FUN_0230EA54
	cmp r0, #0
	bne _0230EA9C
	bl FUN_02305188
_0230EA9C:
	ldr r0, [sb, #4]
	mov r0, r0, lsl #0x1f
	movs r0, r0, lsr #0x1f
	beq _0230EAB0
	bl FUN_02305188
_0230EAB0:
	cmp r6, #0x1f
	bls _0230EAFC
	mov r0, r4
	bl FUN_02303420
	cmp r6, #0x20
	bne _0230EAD8
	cmp r0, #0
	subne r6, r0, #1
	moveq r6, #0
	b _0230EAFC
_0230EAD8:
	cmp r6, #0x21
	bne _0230EAF0
	cmp r0, #0x1f
	addlo r6, r0, #1
	movhs r6, #0x1f
	b _0230EAFC
_0230EAF0:
	cmp r6, #0x22
	moveq r6, r0
	movne r6, #0x1f
_0230EAFC:
	bl FUN_02304ED0
	ldr r1, [sb, #4]
	mov r5, r0
	bic r0, r1, #1
	orr r1, r0, #1
	and r0, r1, #1
	str r1, [sb, #4]
	orr r0, r0, r6, lsl #1
	stmib sb, {r0, r8}
	str r7, [sb, #0xc]
	ldr r0, [r4, #0xc0]
	cmp r0, #0
	add r0, r4, #0xc4
	bne _0230EB54
	cmp sb, r0
	ldreq r0, _0230EBD8 ; =0x0234D700
	moveq r1, #0
	streq r1, [r0]
	mov r0, r4
	str sb, [r4, #0xc0]
	bl FUN_02303528
	b _0230EBCC
_0230EB54:
	cmp sb, r0
	ldr r1, [r4, #0xc0]
	bne _0230EB90
	ldr r0, [r1]
	cmp r0, #0
	beq _0230EB7C
_0230EB6C:
	mov r1, r0
	ldr r0, [r0]
	cmp r0, #0
	bne _0230EB6C
_0230EB7C:
	ldr r0, _0230EBD8 ; =0x0234D700
	str sb, [r1]
	mov r1, #0
	str r1, [r0]
	b _0230EBCC
_0230EB90:
	ldr r0, [r1, #4]
	cmp r6, r0, lsr #1
	strlo sb, [r4, #0xc0]
	strlo r1, [sb]
	blo _0230EBCC
	b _0230EBAC
_0230EBA8:
	mov r1, r2
_0230EBAC:
	ldr r2, [r1]
	cmp r2, #0
	beq _0230EBC4
	ldr r0, [r2, #4]
	cmp r6, r0, lsr #1
	bhs _0230EBA8
_0230EBC4:
	str r2, [sb]
	str sb, [r1]
_0230EBCC:
	mov r0, r5
	bl FUN_02304EE4
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	.align 2, 0
_0230EBD8: .word 0x0234D700
	arm_func_end FUN_0230EA70

	arm_func_start FUN_0230EBDC
FUN_0230EBDC: ; 0x0230EBDC
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	bl FUN_02304ED0
	mov r4, r0
	bl FUN_0230EA54
	cmp r0, #0
	beq _0230EC14
	ldr r0, _0230EC20 ; =0x0234D700
	mov r1, #0
	ldr r0, [r0]
	mov r2, r5
	mov r3, r1
	add r0, r0, #0xc4
	bl FUN_0230EA70
_0230EC14:
	mov r0, r4
	bl FUN_02304EE4
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_0230EC20: .word 0x0234D700
	arm_func_end FUN_0230EBDC

	arm_func_start FUN_0230EC24
FUN_0230EC24: ; 0x0230EC24
	stmdb sp!, {r3, lr}
	ldr r2, _0230EC50 ; =0x0234D704
	sub r1, r0, #2
	mov r0, #0x1e
	str r1, [r2, #8]
	bl FUN_0231390C
	ldr r1, _0230EC50 ; =0x0234D704
	mov r2, #0x1e
	str r0, [r1, #0xc]
	str r2, [r1, #0x10]
	ldmia sp!, {r3, pc}
	.align 2, 0
_0230EC50: .word 0x0234D704
	arm_func_end FUN_0230EC24

	arm_func_start FUN_0230EC54
FUN_0230EC54: ; 0x0230EC54
	stmdb sp!, {r4, lr}
	ldrb r3, [r0]
	mov r4, r1
	add r2, r4, #1
	strb r3, [r1]
	ldrb r1, [r0]
	mov r4, r2
	cmp r1, #0xb
	addls pc, pc, r1, lsl #2
	b _0230ED30
_0230EC7C: ; jump table
	b _0230ED30 ; case 0
	b _0230ED30 ; case 1
	b _0230ED30 ; case 2
	b _0230ED30 ; case 3
	b _0230ED30 ; case 4
	b _0230ED30 ; case 5
	b _0230ED30 ; case 6
	b _0230ECAC ; case 7
	b _0230ED38 ; case 8
	b _0230ECF0 ; case 9
	b _0230ED38 ; case 10
	b _0230ED38 ; case 11
_0230ECAC:
	ldrb r3, [r0, #2]
	ldr r1, _0230ED40 ; =0x0234D704
	add r4, r2, #1
	strb r3, [r2]
	ldrb r3, [r0, #2]
	ldr r2, [r1, #0xc]
	cmp r3, r2
	movgt r0, #0
	ldmgtia sp!, {r4, pc}
	ldr r2, [r1, #8]
	mov r1, r4
	add r0, r0, #3
	bl FUN_02305618
	ldr r0, _0230ED40 ; =0x0234D704
	ldr r0, [r0, #8]
	add r4, r4, r0
	b _0230ED38
_0230ECF0:
	ldrh r1, [r0, #2]
	add r4, r2, #2
	ldr r3, _0230ED40 ; =0x0234D704
	strb r1, [r2]
	ldrh ip, [r0, #2]
	mov r1, r4
	add r0, r0, #4
	and ip, ip, #0xff00
	mov ip, ip, asr #8
	strb ip, [r2, #1]
	ldr r2, [r3, #8]
	bl FUN_02305618
	ldr r0, _0230ED40 ; =0x0234D704
	ldr r0, [r0, #8]
	add r4, r4, r0
	b _0230ED38
_0230ED30:
	mov r0, #0
	ldmia sp!, {r4, pc}
_0230ED38:
	mov r0, r4
	ldmia sp!, {r4, pc}
	.align 2, 0
_0230ED40: .word 0x0234D704
	arm_func_end FUN_0230EC54

	arm_func_start FUN_0230ED44
FUN_0230ED44: ; 0x0230ED44
	stmdb sp!, {r3, r4, r5, lr}
	ldr r2, _0230ED8C ; =0x0234D704
	mov r4, r1
	ldrb r3, [r2]
	mov r5, r0
	ldr r1, [r2, #0xc]
	add r0, r3, #1
	bl FUN_0231390C
	ldr r0, _0230ED8C ; =0x0234D704
	and r3, r1, #0xff
	strb r1, [r0]
	ldr r2, [r0, #8]
	mov r1, r5
	mla r0, r3, r2, r4
	bl FUN_02305618
	ldr r0, _0230ED8C ; =0x0234D704
	ldrb r0, [r0]
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_0230ED8C: .word 0x0234D704
	arm_func_end FUN_0230ED44

	arm_func_start FUN_0230ED90
FUN_0230ED90: ; 0x0230ED90
	ldrb r2, [r1], #1
	strb r2, [r0]
	cmp r2, #6
	addls pc, pc, r2, lsl #2
	b _0230EDF8
_0230EDA4: ; jump table
	b _0230EDF8 ; case 0
	b _0230EE00 ; case 1
	b _0230EE00 ; case 2
	b _0230EE00 ; case 3
	b _0230EDC0 ; case 4
	b _0230EE00 ; case 5
	b _0230EE00 ; case 6
_0230EDC0:
	ldrb r2, [r1]
	strh r2, [r0, #2]
	ldrh r3, [r0, #2]
	ldrb r2, [r1, #1]
	orr r2, r3, r2, lsl #8
	strh r2, [r0, #2]
	ldrb r2, [r1, #2]
	strh r2, [r0, #4]
	ldrb r2, [r1, #3]
	ldrh r3, [r0, #4]
	add r1, r1, #4
	orr r2, r3, r2, lsl #8
	strh r2, [r0, #4]
	b _0230EE00
_0230EDF8:
	mov r0, #0
	bx lr
_0230EE00:
	mov r0, r1
	bx lr
	arm_func_end FUN_0230ED90

	arm_func_start FUN_0230EE08
FUN_0230EE08: ; 0x0230EE08
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	mov r5, r0
	bl FUN_02304ED0
	ldr r1, _0230EE58 ; =0x0234D718
	mov r4, r0
	str r5, [r1]
	bl FUN_0230F118
	cmp r0, #0
	bne _0230EE44
	cmp r5, #0
	movne r1, #0x1000
	moveq r1, #0x5000
	mov r0, #0xf000
	bl FUN_023049EC
_0230EE44:
	mov r0, r4
	bl FUN_02304EE4
	add sp, sp, #4
	ldmia sp!, {r4, r5, lr}
	bx lr
	.align 2, 0
_0230EE58: .word 0x0234D718
	arm_func_end FUN_0230EE08

	arm_func_start FUN_0230EE5C
FUN_0230EE5C: ; 0x0230EE5C
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #4
	mov r7, r0
	mov r1, r7
	mov r0, #0xd
	mov r2, #0
	bl FUN_02305930
	cmp r0, #0
	addeq sp, sp, #4
	ldmeqia sp!, {r4, r5, r6, r7, lr}
	bxeq lr
	mov r6, #1
	mov r5, #0xd
	mov r4, #0
_0230EE94:
	mov r0, r6
	blx SVC_WaitByLoop
	mov r0, r5
	mov r1, r7
	mov r2, r4
	bl FUN_02305930
	cmp r0, #0
	bne _0230EE94
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, lr}
	bx lr
	arm_func_end FUN_0230EE5C

	arm_func_start FUN_0230EEC0
FUN_0230EEC0: ; 0x0230EEC0
	stmdb sp!, {r4, lr}
	mov r4, r1
	ldr r1, [r4]
	cmp r1, #0
	bne _0230EED8
	bl FUN_02302FA8
_0230EED8:
	ldr r0, [r4, #4]
	bl FUN_02304EE4
	ldmia sp!, {r4, lr}
	bx lr
	arm_func_end FUN_0230EEC0

	arm_func_start FUN_0230EEE8
FUN_0230EEE8: ; 0x0230EEE8
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #4
	mov r7, r0
	mov r6, r1
	ldr r5, _0230EF64 ; =0x027FFFE8
	mov r4, #1
_0230EF00:
	bl FUN_02304ED0
	str r0, [r6, #4]
	mov r0, r5
	bl FUN_0230300C
	and r0, r0, #0x40
	str r0, [r6]
	ldr r0, [r6]
	cmp r0, #0
	addne sp, sp, #4
	ldmneia sp!, {r4, r5, r6, r7, lr}
	bxne lr
	mov r0, r7
	bl FUN_023030AC
	cmp r0, #0
	addeq sp, sp, #4
	ldmeqia sp!, {r4, r5, r6, r7, lr}
	bxeq lr
	ldr r0, [r6, #4]
	bl FUN_02304EE4
	mov r0, r4
	blx SVC_WaitByLoop
	b _0230EF00
	arm_func_end FUN_0230EEE8

	arm_func_start FUN_0230EF58
FUN_0230EF58: ; 0x0230EF58
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, lr}
	bx lr
	.align 2, 0
_0230EF64: .word 0x027FFFE8
	arm_func_end FUN_0230EF58

	arm_func_start FUN_0230EF68
FUN_0230EF68: ; 0x0230EF68
	ldr r3, _0230EF98 ; =0x04000204
	ldr r2, [r0]
	ldrh r1, [r3]
	bic r1, r1, #0xc
	orr r1, r1, r2, lsl #2
	strh r1, [r3]
	ldrh r1, [r3]
	ldr r2, [r0, #4]
	bic r0, r1, #0x10
	orr r0, r0, r2, lsl #4
	strh r0, [r3]
	bx lr
	.align 2, 0
_0230EF98: .word 0x04000204
	arm_func_end FUN_0230EF68

	arm_func_start FUN_0230EF9C
FUN_0230EF9C: ; 0x0230EF9C
	ldr r2, _0230EFE0 ; =0x04000204
	ldrh r1, [r2]
	and r1, r1, #0xc
	mov r1, r1, asr #2
	str r1, [r0]
	ldrh r1, [r2]
	and r1, r1, #0x10
	mov r1, r1, asr #4
	str r1, [r0, #4]
	ldrh r0, [r2]
	bic r0, r0, #0xc
	orr r0, r0, #0xc
	strh r0, [r2]
	ldrh r0, [r2]
	bic r0, r0, #0x10
	strh r0, [r2]
	bx lr
	.align 2, 0
_0230EFE0: .word 0x04000204
	arm_func_end FUN_0230EF9C

	arm_func_start FUN_0230EFE4
FUN_0230EFE4: ; 0x0230EFE4
	stmdb sp!, {r4, lr}
	sub sp, sp, #0x10
	ldr r2, _0230F0F0 ; =0x027FFC30
	ldr r0, _0230F0F4 ; =0x0000FFFF
	ldrh r1, [r2]
	mov r4, #1
	cmp r1, r0
	addeq sp, sp, #0x10
	moveq r0, #0
	ldmeqia sp!, {r4, lr}
	bxeq lr
	ldrb r0, [r2, #5]
	mov r0, r0, lsl #0x1e
	mov r0, r0, lsr #0x1f
	cmp r0, #1
	addeq sp, sp, #0x10
	moveq r0, #0
	ldmeqia sp!, {r4, lr}
	bxeq lr
	ldr r0, _0230F0F8 ; =0x0234D71C
	add r1, sp, #0
	ldrh r0, [r0, #2]
	bl FUN_0230EEE8
	add r0, sp, #8
	bl FUN_0230EF9C
	mov r0, #0x8000000
	ldrb r2, [r0, #0xb2]
	cmp r2, #0x96
	bne _0230F06C
	ldr r1, _0230F0F0 ; =0x027FFC30
	ldrh r0, [r0, #0xbe]
	ldrh r1, [r1]
	cmp r1, r0
	bne _0230F0B4
_0230F06C:
	cmp r2, #0x96
	beq _0230F08C
	ldr r1, _0230F0F0 ; =0x027FFC30
	ldr r0, _0230F0FC ; =0x0801FFFE
	ldrh r1, [r1]
	ldrh r0, [r0]
	cmp r1, r0
	bne _0230F0B4
_0230F08C:
	ldr r2, _0230F0F0 ; =0x027FFC30
	mov r0, #0x8000000
	ldr r1, [r2, #8]
	ldr r0, [r0, #0xac]
	cmp r1, r0
	beq _0230F0C8
	ldrb r0, [r2, #5]
	mov r0, r0, lsl #0x1f
	movs r0, r0, lsr #0x1f
	beq _0230F0C8
_0230F0B4:
	ldr r1, _0230F0F0 ; =0x027FFC30
	mov r4, #0
	ldrb r0, [r1, #5]
	orr r0, r0, #2
	strb r0, [r1, #5]
_0230F0C8:
	add r0, sp, #8
	bl FUN_0230EF68
	ldr r0, _0230F0F8 ; =0x0234D71C
	add r1, sp, #0
	ldrh r0, [r0, #2]
	bl FUN_0230EEC0
	mov r0, r4
	add sp, sp, #0x10
	ldmia sp!, {r4, lr}
	bx lr
	.align 2, 0
_0230F0F0: .word 0x027FFC30
_0230F0F4: .word 0x0000FFFF
_0230F0F8: .word 0x0234D71C
_0230F0FC: .word 0x0801FFFE
	arm_func_end FUN_0230EFE4

	arm_func_start FUN_0230F100
FUN_0230F100: ; 0x0230F100
	ldr r0, _0230F114 ; =0x027FFC30
	ldrb r0, [r0, #5]
	mov r0, r0, lsl #0x1f
	mov r0, r0, lsr #0x1f
	bx lr
	.align 2, 0
_0230F114: .word 0x027FFC30
	arm_func_end FUN_0230F100

	arm_func_start FUN_0230F118
FUN_0230F118: ; 0x0230F118
	stmdb sp!, {lr}
	sub sp, sp, #4
	bl FUN_0230EFE4
	cmp r0, #0
	beq _0230F144
	bl FUN_0230F100
	cmp r0, #0
	addeq sp, sp, #4
	moveq r0, #1
	ldmeqia sp!, {lr}
	bxeq lr
_0230F144:
	mov r0, #0
	add sp, sp, #4
	ldmia sp!, {lr}
	bx lr
	arm_func_end FUN_0230F118

	arm_func_start FUN_0230F154
FUN_0230F154: ; 0x0230F154
	stmdb sp!, {lr}
	sub sp, sp, #4
	ldr r1, _0230F18C ; =0x0234D71C
	mov r3, #0
	ldr r2, _0230F190 ; =0x05000001
	add r0, sp, #0
	str r3, [sp]
	blx SVC_CpuSet
	bl FUN_02302FB4
	ldr r1, _0230F18C ; =0x0234D71C
	strh r0, [r1, #2]
	add sp, sp, #4
	ldmia sp!, {lr}
	bx lr
	.align 2, 0
_0230F18C: .word 0x0234D71C
_0230F190: .word 0x05000001
	arm_func_end FUN_0230F154

	arm_func_start FUN_0230F194
FUN_0230F194: ; 0x0230F194
	ldr r0, _0230F1A4 ; =0x0234D724
	mov r1, #0
	str r1, [r0]
	bx lr
	.align 2, 0
_0230F1A4: .word 0x0234D724
	arm_func_end FUN_0230F194

	arm_func_start FUN_0230F1A8
FUN_0230F1A8: ; 0x0230F1A8
	stmdb sp!, {lr}
	sub sp, sp, #4
	mov r0, #2
	bl FUN_0230EE5C
	bl FUN_02305188
	add sp, sp, #4
	ldmia sp!, {lr}
	bx lr
	arm_func_end FUN_0230F1A8

	arm_func_start FUN_0230F1C8
FUN_0230F1C8: ; 0x0230F1C8
	stmdb sp!, {lr}
	sub sp, sp, #4
	and r0, r1, #0x3f
	cmp r0, #0x11
	bne _0230F230
	ldr r0, _0230F240 ; =0x0234D72C
	ldr r0, [r0]
	cmp r0, #0
	addne sp, sp, #4
	ldmneia sp!, {lr}
	bxne lr
	ldr r1, _0230F244 ; =0x0234D730
	mov r0, #0
	ldr r1, [r1]
	cmp r1, #0
	beq _0230F20C
	blx r1
_0230F20C:
	cmp r0, #0
	beq _0230F218
	bl FUN_0230F1A8
_0230F218:
	ldr r0, _0230F240 ; =0x0234D72C
	mov r1, #1
	str r1, [r0]
	add sp, sp, #4
	ldmia sp!, {lr}
	bx lr
_0230F230:
	bl FUN_02305188
	add sp, sp, #4
	ldmia sp!, {lr}
	bx lr
	.align 2, 0
_0230F240: .word 0x0234D72C
_0230F244: .word 0x0234D730
	arm_func_end FUN_0230F1C8

	arm_func_start FUN_0230F248
FUN_0230F248: ; 0x0230F248
	stmdb sp!, {lr}
	sub sp, sp, #4
	and r0, r1, #0x3f
	cmp r0, #1
	ldreq r0, _0230F280 ; =0x0234D71C
	moveq r1, #1
	streqh r1, [r0]
	addeq sp, sp, #4
	ldmeqia sp!, {lr}
	bxeq lr
	bl FUN_02305188
	add sp, sp, #4
	ldmia sp!, {lr}
	bx lr
	.align 2, 0
_0230F280: .word 0x0234D71C
	arm_func_end FUN_0230F248

	arm_func_start FUN_0230F284
FUN_0230F284: ; 0x0230F284
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0x14
	ldr r0, _0230F46C ; =0x0234D720
	ldr r1, [r0]
	cmp r1, #0
	addne sp, sp, #0x14
	ldmneia sp!, {r4, r5, r6, r7, lr}
	bxne lr
	ldr r1, _0230F470 ; =0x04000300
	mov r2, #1
	str r2, [r0]
	ldrh r0, [r1]
	ands r0, r0, #1
	addeq sp, sp, #0x14
	ldmeqia sp!, {r4, r5, r6, r7, lr}
	bxeq lr
	mov r0, #0x40000
	bl FUN_02302E80
	ldr r3, _0230F474 ; =0x04000208
	mov r2, #1
	ldrh r4, [r3]
	ldr r1, _0230F478 ; =0x0234D71C
	mov r6, r0
	strh r2, [r3]
	ldrh r0, [r1, #2]
	add r1, sp, #0
	bl FUN_0230EEE8
	ldr r1, _0230F47C ; =0x04000204
	add r0, sp, #8
	ldrh r1, [r1]
	and r1, r1, #0x8000
	mov r5, r1, asr #0xf
	bl FUN_0230EF9C
	ldr r3, _0230F47C ; =0x04000204
	ldr r0, _0230F480 ; =0x0234D740
	ldrh r2, [r3]
	add r0, r0, #0x80
	mov r1, #0x40
	bic r2, r2, #0x8000
	strh r2, [r3]
	bl FUN_0230409C
	ldr r2, _0230F480 ; =0x0234D740
	ldr r1, _0230F484 ; =0x08000080
	mov r0, #1
	mov r3, #0x40
	add r2, r2, #0x80
	bl FUN_02305354
	ldr r2, _0230F47C ; =0x04000204
	add r0, sp, #8
	ldrh r1, [r2]
	bic r1, r1, #0x8000
	orr r1, r1, r5, lsl #15
	strh r1, [r2]
	bl FUN_0230EF68
	ldr r0, _0230F478 ; =0x0234D71C
	add r1, sp, #0
	ldrh r0, [r0, #2]
	bl FUN_0230EEC0
	ldr r0, _0230F488 ; =0x027FFF9B
	ldrb r0, [r0]
	cmp r0, #0
	bne _0230F38C
	ldr r0, _0230F48C ; =0x027FFF9A
	ldrb r0, [r0]
	cmp r0, #0
	bne _0230F3F8
_0230F38C:
	ldr r2, _0230F480 ; =0x0234D740
	ldr r0, _0230F490 ; =0x027FFC30
	ldrh r1, [r2, #0xbe]
	mov r3, #0
	strh r1, [r0]
_0230F3A0:
	add r0, r2, r3
	ldrb r1, [r0, #0xb5]
	add r0, r3, #0x2700000
	add r0, r0, #0xff000
	add r3, r3, #1
	strb r1, [r0, #0xc32]
	cmp r3, #3
	blt _0230F3A0
	ldrh r0, [r2, #0xb0]
	ldr r1, _0230F490 ; =0x027FFC30
	strh r0, [r1, #6]
	ldr r0, [r2, #0xac]
	str r0, [r1, #8]
	bl FUN_0230EFE4
	cmp r0, #0
	movne r2, #1
	ldr r1, _0230F488 ; =0x027FFF9B
	moveq r2, #0
	strb r2, [r1]
	ldr r0, _0230F48C ; =0x027FFF9A
	mov r1, #1
	strb r1, [r0]
_0230F3F8:
	ldr r0, _0230F494 ; =0xFFFF0020
	ldr r1, _0230F498 ; =0x0234D744
	mov r2, #0x9c
	bl FUN_02305520
	bl FUN_02304068
	ldr r0, _0230F480 ; =0x0234D740
	add r0, r0, #0xfe000000
	mov r0, r0, lsr #5
	mov r0, r0, lsl #6
	orr r0, r0, #1
	bl FUN_0230EE5C
	ldr r5, _0230F478 ; =0x0234D71C
	ldrh r0, [r5]
	cmp r0, #1
	beq _0230F44C
	mov r7, #1
_0230F438:
	mov r0, r7
	blx SVC_WaitByLoop
	ldrh r0, [r5]
	cmp r0, #1
	bne _0230F438
_0230F44C:
	ldr r2, _0230F474 ; =0x04000208
	mov r0, r6
	ldrh r1, [r2]
	strh r4, [r2]
	bl FUN_02302E80
	add sp, sp, #0x14
	ldmia sp!, {r4, r5, r6, r7, lr}
	bx lr
	.align 2, 0
_0230F46C: .word 0x0234D720
_0230F470: .word 0x04000300
_0230F474: .word 0x04000208
_0230F478: .word 0x0234D71C
_0230F47C: .word 0x04000204
_0230F480: .word 0x0234D740
_0230F484: .word 0x08000080
_0230F488: .word 0x027FFF9B
_0230F48C: .word 0x027FFF9A
_0230F490: .word 0x027FFC30
_0230F494: .word 0xFFFF0020
_0230F498: .word 0x0234D744
	arm_func_end FUN_0230F284

	arm_func_start FUN_0230F49C
FUN_0230F49C: ; 0x0230F49C
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	ldr r0, _0230F550 ; =0x0234D728
	ldr r1, [r0]
	cmp r1, #0
	addne sp, sp, #4
	ldmneia sp!, {r4, r5, lr}
	bxne lr
	mov r1, #1
	str r1, [r0]
	bl FUN_0230F154
	ldr r0, _0230F554 ; =0x0234D72C
	mov r1, #0
	str r1, [r0]
	bl FUN_02305800
	mov r5, #0xd
	mov r4, #1
_0230F4E0:
	mov r0, r5
	mov r1, r4
	bl FUN_023059E4
	cmp r0, #0
	beq _0230F4E0
	ldr r1, _0230F558 ; =FUN_0230F248
	mov r0, #0xd
	bl FUN_02305A0C
	bl FUN_0230F284
	mov r0, #0xd
	mov r1, #0
	bl FUN_02305A0C
	ldr r1, _0230F55C ; =FUN_0230F1C8
	mov r0, #0xd
	bl FUN_02305A0C
	ldr r1, _0230F560 ; =0x0234D730
	mov r2, #0
	ldr r0, _0230F564 ; =0x0234D800
	str r2, [r1]
	bl FUN_0230F66C
	ldr r1, _0230F568 ; =FUN_0230F194
	mov r0, #0x11
	bl FUN_02305A0C
	mov r0, #0
	bl FUN_0230EE08
	add sp, sp, #4
	ldmia sp!, {r4, r5, lr}
	bx lr
	.align 2, 0
_0230F550: .word 0x0234D728
_0230F554: .word 0x0234D72C
_0230F558: .word FUN_0230F248
_0230F55C: .word FUN_0230F1C8
_0230F560: .word 0x0234D730
_0230F564: .word 0x0234D800
_0230F568: .word FUN_0230F194
	arm_func_end FUN_0230F49C

	arm_func_start FUN_0230F56C
FUN_0230F56C: ; 0x0230F56C
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	sub sp, sp, #0x28
	ldr r6, _0230F650 ; =0x0234D8EC
	ldr r5, _0230F654 ; =0x0234D8E8
	mov r4, r0
	add sb, sp, #0
	mov r8, #0
	mov r7, #0x24
_0230F58C:
	mov r0, sb
	mov r1, r8
	mov r2, r7
	bl FUN_02305584
	bl FUN_02304ED0
	ldr r1, [r4, #0xc0]
	mov sl, r0
	cmp r1, #0
	bne _0230F5C4
_0230F5B0:
	mov r0, r8
	bl FUN_023035DC
	ldr r0, [r4, #0xc0]
	cmp r0, #0
	beq _0230F5B0
_0230F5C4:
	ldr lr, [r4, #0xc0]
	add ip, sp, #0
	ldmia lr!, {r0, r1, r2, r3}
	stmia ip!, {r0, r1, r2, r3}
	ldmia lr!, {r0, r1, r2, r3}
	stmia ip!, {r0, r1, r2, r3}
	ldr r1, [lr]
	mov r0, sl
	str r1, [ip]
	bl FUN_02304EE4
	ldr r1, [sp]
	cmp r1, #0
	beq _0230F604
	mov r0, sb
	blx r1
	str r0, [sp, #8]
_0230F604:
	bl FUN_02304ED0
	ldr r1, [sp, #4]
	mov sl, r0
	strb r8, [r6, #0x22]
	cmp r1, #0
	beq _0230F624
	mov r0, sb
	blx r1
_0230F624:
	ldr r0, [r5]
	cmp r0, #0
	beq _0230F640
	mov r0, sl
	str r8, [r4, #0xc0]
	bl FUN_02304EE4
	b _0230F58C
_0230F640:
	bl FUN_02303744
	add sp, sp, #0x28
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	bx lr
	.align 2, 0
_0230F650: .word 0x0234D8EC
_0230F654: .word 0x0234D8E8
	arm_func_end FUN_0230F56C

	arm_func_start FUN_0230F658
FUN_0230F658: ; 0x0230F658
	ldr ip, _0230F668 ; =FUN_02305584
	mov r1, #0
	mov r2, #0x24
	bx ip
	.align 2, 0
_0230F668: .word FUN_02305584
	arm_func_end FUN_0230F658

	arm_func_start FUN_0230F66C
FUN_0230F66C: ; 0x0230F66C
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #0xc
	mov r5, r0
	bl FUN_02304ED0
	ldr r1, _0230F6EC ; =0x0234D8E8
	mov r4, r0
	ldr r0, [r1]
	cmp r0, #0
	bne _0230F6D8
	add r0, r5, #0xc4
	str r5, [r1]
	bl FUN_0230F658
	ldr r0, _0230F6F0 ; =0x0234D8EC
	bl FUN_0230F658
	mov r0, #0
	str r0, [r5, #0xc0]
	mov r2, #0x400
	ldr r1, _0230F6F4 ; =FUN_0230F56C
	ldr r3, _0230F6F8 ; =0x0234DD10
	mov r0, r5
	str r2, [sp]
	mov r2, #0x14
	str r2, [sp, #4]
	mov r2, r5
	bl FUN_02303770
	mov r0, r5
	bl FUN_02303528
_0230F6D8:
	mov r0, r4
	bl FUN_02304EE4
	add sp, sp, #0xc
	ldmia sp!, {r4, r5, lr}
	bx lr
	.align 2, 0
_0230F6EC: .word 0x0234D8E8
_0230F6F0: .word 0x0234D8EC
_0230F6F4: .word FUN_0230F56C
_0230F6F8: .word 0x0234DD10
	arm_func_end FUN_0230F66C