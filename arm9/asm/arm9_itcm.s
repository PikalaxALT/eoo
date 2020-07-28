	.include "asm/macros.inc"
	.include "global.inc"

	.text

	arm_func_start OS_IrqHandler
OS_IrqHandler: ; 0x01FF8000
	stmdb sp!, {lr}
	mov ip, #0x4000000
	add ip, ip, #0x210
	ldr r1, [ip, #-8]
	cmp r1, #0
	ldmeqia sp!, {pc}
	ldmia ip, {r1, r2}
	ands r1, r1, r2
	ldmeqia sp!, {pc}
	mov r3, #0x80000000
_01FF8028:
	clz r0, r1
	bics r1, r1, r3, lsr r0
	bne _01FF8028
	mov r1, r3, lsr r0
	str r1, [ip, #4]
	rsbs r0, r0, #0x1f
	ldr r1, _01FF8050 ; =OS_IRQTable
	ldr r0, [r1, r0, lsl #2]
	ldr lr, _01FF8054 ; =OS_IrqHandler_ThreadSwitch
	bx r0
	.align 2, 0
_01FF8050: .word OS_IRQTable
_01FF8054: .word OS_IrqHandler_ThreadSwitch
	arm_func_end OS_IrqHandler

	arm_func_start OS_IrqHandler_ThreadSwitch
OS_IrqHandler_ThreadSwitch: ; 0x01FF8058
	ldr ip, _01FF81A4 ; =OSi_IrqThreadQueue
	mov r3, #0
	ldr ip, [ip]
	mov r2, #1
	cmp ip, #0
	beq _01FF80A8
_01FF8070:
	str r2, [ip, #0x64]
	str r3, [ip, #0x78]
	str r3, [ip, #0x7c]
	ldr r0, [ip, #0x80]
	str r3, [ip, #0x80]
	mov ip, r0
	cmp ip, #0
	bne _01FF8070
	ldr ip, _01FF81A4 ; =OSi_IrqThreadQueue
	str r3, [ip]
	str r3, [ip, #4]
	ldr ip, _01FF81A8 ; =_023463B4
	mov r1, #1
	strh r1, [ip]
_01FF80A8:
	ldr ip, _01FF81A8 ; =_023463B4
	ldrh r1, [ip]
	cmp r1, #0
	ldreq pc, [sp], #4
	mov r1, #0
	strh r1, [ip]
	mov r3, #0xd2
	msr cpsr_c, r3
	add r2, ip, #8
	ldr r1, [r2]
_01FF80D0:
	cmp r1, #0
	ldrneh r0, [r1, #0x64]
	cmpne r0, #1
	ldrne r1, [r1, #0x68]
	bne _01FF80D0
	cmp r1, #0
	bne _01FF80F8
_01FF80EC:
	mov r3, #0x92
	msr cpsr_c, r3
	ldr pc, [sp], #4
_01FF80F8:
	ldr r0, [ip, #4]
	cmp r1, r0
	beq _01FF80EC
	ldr r3, [ip, #0xc]
	cmp r3, #0
	beq _01FF8120
	stmdb sp!, {r0, r1, ip}
	mov lr, pc
	bx r3
	ldmia sp!, {r0, r1, ip}
_01FF8120:
	str r1, [ip, #4]
	mrs r2, spsr
	str r2, [r0, #0]!
	stmdb sp!, {r0, r1}
	add r0, r0, #0
	add r0, r0, #0x48
	ldr r1, _01FF81AC ; =CP_SaveContext
	blx r1
	ldmia sp!, {r0, r1}
	ldmib sp!, {r2, r3}
	stmib r0!, {r2, r3}
	ldmib sp!, {r2, r3, ip, lr}
	stmib r0!, {r2, r3, r4, r5, r6, r7, r8, sb, sl, fp, ip, sp, lr} ^
	stmib r0!, {lr}
	mov r3, #0xd3
	msr cpsr_c, r3
	stmib r0!, {sp}
	stmdb sp!, {r1}
	add r0, r1, #0
	add r0, r0, #0x48
	ldr r1, _01FF81B0 ; =CPi_RestoreContext
	blx r1
	ldmia sp!, {r1}
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
_01FF81A4: .word OSi_IrqThreadQueue
_01FF81A8: .word _023463B4
_01FF81AC: .word CP_SaveContext
_01FF81B0: .word CPi_RestoreContext
	arm_func_end OS_IrqHandler_ThreadSwitch

	arm_func_start MIi_DmaSetParams_wait_noInt
MIi_DmaSetParams_wait_noInt: ; 0x01FF81B4
	stmdb sp!, {r4, lr}
	mov ip, #0xc
	mul r4, r0, ip
	add ip, r4, #0x4000000
	ldr lr, _01FF820C ; =0x040000B0
	str r1, [ip, #0xb0]
	add r4, r4, lr
	str r2, [r4, #4]
	str r3, [r4, #8]
	ldr r1, [lr]
	cmp r0, #0
	ldr r0, [lr]
	moveq r1, #0
	streq r1, [r4]
	streq r1, [r4, #4]
	ldreq r0, _01FF8210 ; =0x81400001
	ldr r1, _01FF820C ; =0x040000B0
	streq r0, [r4, #8]
	ldr r0, [r1]
	ldr r0, [r1]
	ldmia sp!, {r4, lr}
	bx lr
	.align 2, 0
_01FF820C: .word 0x040000B0
_01FF8210: .word 0x81400001
	arm_func_end MIi_DmaSetParams_wait_noInt

	arm_func_start MIi_DmaSetParams_wait
MIi_DmaSetParams_wait: ; 0x01FF8214
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #4
	mov r7, r0
	mov r6, r1
	mov r5, r2
	mov r4, r3
	bl OS_DisableInterrupts
	mov r1, #0xc
	mul r3, r7, r1
	add r1, r3, #0x4000000
	ldr r2, _01FF8280 ; =0x040000B0
	str r6, [r1, #0xb0]
	add r3, r3, r2
	str r5, [r3, #4]
	str r4, [r3, #8]
	ldr r1, [r2]
	cmp r7, #0
	ldr r1, [r2]
	moveq r2, #0
	streq r2, [r3]
	ldreq r1, _01FF8284 ; =0x81400001
	streq r2, [r3, #4]
	streq r1, [r3, #8]
	bl OS_RestoreInterrupts
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, lr}
	bx lr
	.align 2, 0
_01FF8280: .word 0x040000B0
_01FF8284: .word 0x81400001
	arm_func_end MIi_DmaSetParams_wait

	arm_func_start MIi_DmaSetParams
MIi_DmaSetParams: ; 0x01FF8288
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #4
	mov r7, r0
	mov r6, r1
	mov r5, r2
	mov r4, r3
	bl OS_DisableInterrupts
	mov r1, #0xc
	mul r3, r7, r1
	ldr r1, _01FF82D4 ; =0x040000B0
	add r2, r3, #0x4000000
	str r6, [r2, #0xb0]
	add r1, r3, r1
	str r5, [r1, #4]
	str r4, [r1, #8]
	bl OS_RestoreInterrupts
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, lr}
	bx lr
	.align 2, 0
_01FF82D4: .word 0x040000B0
	arm_func_end MIi_DmaSetParams
