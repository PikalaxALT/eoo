	.include "asm/macros.inc"
	.include "global.inc"

	.text

	arm_func_start _start
_start: ; 0x02380000
	mov ip, #0x4000000
	str ip, [ip, #0x208]
	ldr r1, _023800CC ; =0x023801B0
	mov r0, #0x3800000
	cmp r0, r1
	movpl r1, r0
	ldr r2, _023800D0 ; =0x0380FF00
	mov r0, #0
_02380020:
	cmp r1, r2
	stmltia r1!, {r0}
	blt _02380020
	mov r0, #0x13
	msr cpsr_c, r0
	ldr sp, _023800D4 ; =0x0380FFC0
	mov r0, #0x12
	msr cpsr_c, r0
	ldr r0, _023800D8 ; =0x0380FF80
	mov sp, r0
	ldr r1, _023800DC ; =0x00000200
	sub r1, r0, r1
	mov r0, #0x1f
	msr cpsr_fsxc, r0
	sub sp, r1, #4
	ldr r0, _023800E0 ; =0x023FE940
	ldr r1, _023800E4 ; =0x027FFA80
	add r2, r1, #0x160
_02380068:
	ldr r3, [r0], #4
	str r3, [r1], #4
	cmp r1, r2
	bmi _02380068
	ldr r0, _023800E8 ; =0x023FE904
	add r2, r1, #0x20
_02380080:
	ldr r3, [r0], #4
	str r3, [r1], #4
	cmp r1, r2
	bmi _02380080
	bl do_autoload
	ldr r0, _023800EC ; =0x02380198
	ldr r1, [r0, #0xc]
	ldr r2, [r0, #0x10]
	mov r0, #0
_023800A4:
	cmp r1, r2
	strlo r0, [r1], #4
	blo _023800A4
	bl FUN_0238015C
	ldr r1, _023800F0 ; =0x0380FFFC
	ldr r0, _023800F4 ; =0x037F83FC
	str r0, [r1]
	ldr r1, _023800F8 ; =NitroMain
	ldr lr, _023800FC ; =0xFFFF0000
	bx r1
	.align 2, 0
_023800CC: .word 0x023801B0
_023800D0: .word 0x0380FF00
_023800D4: .word 0x0380FFC0
_023800D8: .word 0x0380FF80
_023800DC: .word 0x00000200
_023800E0: .word 0x023FE940
_023800E4: .word 0x027FFA80
_023800E8: .word 0x023FE904
_023800EC: .word 0x02380198
_023800F0: .word 0x0380FFFC
_023800F4: .word 0x037F83FC
_023800F8: .word NitroMain
_023800FC: .word 0xFFFF0000
	arm_func_end _start

	arm_func_start do_autoload
do_autoload: ; 0x02380100
	ldr r0, _02380154 ; =0x02380198
	ldr r1, [r0]
	ldr r2, [r0, #4]
	ldr r3, [r0, #8]
_02380110:
	cmp r1, r2
	beq _02380150
	ldr r4, [r1], #4
	ldr r5, [r1], #4
	add r6, r4, r5
_02380124:
	cmp r4, r6
	ldrmi r7, [r3], #4
	strmi r7, [r4], #4
	bmi _02380124
	ldr r5, [r1], #4
	add r6, r4, r5
	mov r7, #0
_02380140:
	cmp r4, r6
	strlo r7, [r4], #4
	blo _02380140
	beq _02380110
_02380150:
	b _start_AutoloadDoneCallback
	.align 2, 0
_02380154: .word 0x02380198
	arm_func_end do_autoload

	arm_func_start _start_AutoloadDoneCallback
_start_AutoloadDoneCallback:
	bx lr
	arm_func_end do_autoload

	arm_func_start FUN_0238015C
FUN_0238015C: ; 0x0238015C
	mov r0, #1
	mov r1, #0
	ldr r2, _02380194 ; =0x027FFFFA
	sub r3, r2, #0x400000
_0238016C:
	strh r1, [r2]
	ldrh ip, [r3]
	cmp r1, ip
	movne r0, #2
	bne _0238018C
	add r1, r1, #1
	cmp r1, #2
	bne _0238016C
_0238018C:
	strh r0, [r2]
	bx lr
	.align 2, 0
_02380194: .word 0x027FFFFA
	arm_func_end FUN_0238015C
	; 0x02380198

_start_ModuleParams: ; 0x02380198
	.word SDK_AUTOLOAD_LIST
	.word SDK_AUTOLOAD_LIST_END
	.word SDK_AUTOLOAD_START
	.word SDK_STATIC_BSS_START
	.word SDK_STATIC_BSS_END
