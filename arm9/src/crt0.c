#include "nitro/types.h"
#include "mw/init.h"

void _start(void);
void INITi_CpuClear32(u32 value, u32 * dest, u32 size);
void MIi_UncompressBackward(u32 * ptr);
void do_autoload(void);
void _start_AutoloadDoneCallback(void);
void init_cp15(void);
void OSi_ReferSymbol(void * symb);
void NitroStartUp(void);

extern u32 SDK_AUTOLOAD_LIST[];
extern u32 SDK_AUTOLOAD_LIST_END[];
extern u32 SDK_AUTOLOAD_START[];
extern u32 SDK_STATIC_BSS_START[];
extern u32 SDK_STATIC_BSS_END[];

const u32 _start_ModuleParams[] = {
    (u32)SDK_AUTOLOAD_LIST,
    (u32)SDK_AUTOLOAD_LIST_END,
    (u32)SDK_AUTOLOAD_START,
    (u32)SDK_STATIC_BSS_START,
    (u32)SDK_STATIC_BSS_END,
    (u32)0,  // compressed end
    (u32)((3 << 24) | (2 << 16) | 30001),
    (u32)0xdec00621,
    (u32)0x2106c0de
};

asm
void _start(void)
{
    mov ip, #0x4000000
    str ip, [ip, #0x208]
_02004808:
    ldrh r0, [ip, #6]
    cmp r0, #0
    bne _02004808
    bl init_cp15
    mov r0, #0x13
    msr cpsr_c, r0
    ldr r0, =0x027E0000
    add r0, r0, #0x3fc0
    mov sp, r0
    mov r0, #0x12
    msr cpsr_c, r0
    ldr r0, =0x027E0000
    add r0, r0, #0x3fc0
    sub r0, r0, #0x40
    sub sp, r0, #4
    tst sp, #4
    subeq sp, sp, #4
    ldr r1, =0x00000800
    sub r1, r0, r1
    mov r0, #0x1f
    msr cpsr_fsxc, r0
    sub sp, r1, #4
    mov r0, #0
    ldr r1, =0x027E0000
    mov r2, #0x4000
    bl INITi_CpuClear32
    mov r0, #0
    ldr r1, =0x05000000
    mov r2, #0x400
    bl INITi_CpuClear32
    mov r0, #0x200
    ldr r1, =0x07000000
    mov r2, #0x400
    bl INITi_CpuClear32
    ldr r1, =_start_ModuleParams
    ldr r0, [r1, #0x14]
    bl MIi_UncompressBackward
    bl do_autoload
    ldr r0, =_start_ModuleParams
    ldr r1, [r0, #0xc]
    ldr r2, [r0, #0x10]
    mov r3, r1
    mov r0, #0
_020048B4:
    cmp r1, r2
    strlo r0, [r1], #4
    blo _020048B4
    bic r1, r3, #0x1f
_020048C4:
    mcr p15, 0, r0, c7, c10, 4
    mcr p15, 0, r1, c7, c5, 1
    mcr p15, 0, r1, c7, c14, 1
    add r1, r1, #0x20
    cmp r1, r2
    blt _020048C4
    ldr r1, =0x027FFF9C
    str r0, [r1]
    ldr r1, =0x027E0000
    add r1, r1, #0x3fc0
    add r1, r1, #0x3c
    ldr r0, =0x01FF8000
    str r0, [r1]
    bl _fp_init
    bl NitroStartUp
    bl __call_static_initializers
    ldr r1, =0x02300164
    ldr lr, =0xFFFF0000
    tst sp, #4
    subne sp, sp, #4
    bx r1
}

asm
void INITi_CpuClear32(u32 value, u32 * dest, u32 size)
{
    add ip, r1, r2
_02004940:
    cmp r1, ip
    stmltia r1!, {r0}
    blt _02004940
    bx lr
}

asm
void MIi_UncompressBackward(u32 * ptr)
{
    cmp r0, #0
    beq _020049F8
    stmdb sp!, {r4, r5, r6, r7}
    ldmdb r0, {r1, r2}
    add r2, r0, r2
    sub r3, r0, r1, lsr #24
    bic r1, r1, #0xff000000
    sub r1, r0, r1
    mov r4, r2
_02004974:
    cmp r3, r1
    ble _020049D4
    ldrb r5, [r3, #-1]!
    mov r6, #8
_02004984:
    subs r6, r6, #1
    blt _02004974
    tst r5, #0x80
    bne _020049A0
    ldrb r0, [r3, #-1]!
    strb r0, [r2, #-1]!
    b _020049C8
_020049A0:
    ldrb ip, [r3, #-1]!
    ldrb r7, [r3, #-1]!
    orr r7, r7, ip, lsl #8
    bic r7, r7, #0xf000
    add r7, r7, #2
    add ip, ip, #0x20
_020049B8:
    ldrb r0, [r2, r7]
    strb r0, [r2, #-1]!
    subs ip, ip, #0x10
    bge _020049B8
_020049C8:
    cmp r3, r1
    mov r5, r5, lsl #1
    bgt _02004984
_020049D4:
    mov r0, #0
    bic r3, r1, #0x1f
    _020049DC:
    mcr p15, 0, r0, c7, c10, 4
    mcr p15, 0, r3, c7, c5, 1
    mcr p15, 0, r3, c7, c14, 1
    add r3, r3, #0x20
    cmp r3, r4
    blt _020049DC
    ldmia sp!, {r4, r5, r6, r7}
_020049F8:
    bx lr
}

asm
void do_autoload(void)
{
    ldr r0, =_start_ModuleParams
    ldr r1, [r0]
    ldr r2, [r0, #4]
    ldr r3, [r0, #8]
_02004A0C:
    cmp r1, r2
    beq _02004A6C
    ldr r5, [r1], #4
    ldr r7, [r1], #4
    add r6, r5, r7
    mov r4, r5
_02004A24:
    cmp r4, r6
    ldrmi r7, [r3], #4
    strmi r7, [r4], #4
    bmi _02004A24
    ldr r7, [r1], #4
    add r6, r4, r7
    mov r7, #0
_02004A40:
    cmp r4, r6
    strlo r7, [r4], #4
    blo _02004A40
    bic r4, r5, #0x1f
_02004A50:
    mcr p15, 0, r7, c7, c10, 4
    mcr p15, 0, r4, c7, c5, 1
    mcr p15, 0, r4, c7, c14, 1
    add r4, r4, #0x20
    cmp r4, r6
    blt _02004A50
    b _02004A0C
_02004A6C:
    b _start_AutoloadDoneCallback
}

asm
void _start_AutoloadDoneCallback(void)
{
    bx lr
}

asm
void init_cp15(void)
{
    mrc p15, 0, r0, c1, c0, 0
    ldr r1, =0x000F9005
    bic r0, r0, r1
    mcr p15, 0, r0, c1, c0, 0
    mov r0, #0
    mcr p15, 0, r0, c7, c5, 0
    mcr p15, 0, r0, c7, c6, 0
    mcr p15, 0, r0, c7, c10, 4
    ldr r0, =0x04000033
    mcr p15, 0, r0, c6, c0, 0
    ldr r0, =0x0200002D
    mcr p15, 0, r0, c6, c1, 0
    ldr r0, =0x027E0021
    mcr p15, 0, r0, c6, c2, 0
    ldr r0, =0x08000035
    mcr p15, 0, r0, c6, c3, 0
    ldr r0, =0x027E0000
    orr r0, r0, #0x1a
    orr r0, r0, #1
    mcr p15, 0, r0, c6, c4, 0
    ldr r0, =0x0100002F
    mcr p15, 0, r0, c6, c5, 0
    ldr r0, =0xFFFF001D
    mcr p15, 0, r0, c6, c6, 0
    ldr r0, =0x027FF017
    mcr p15, 0, r0, c6, c7, 0
    mov r0, #0x20
    mcr p15, 0, r0, c9, c1, 1
    ldr r0, =0x027E0000
    orr r0, r0, #0xa
    mcr p15, 0, r0, c9, c1, 0
    mov r0, #0x42
    mcr p15, 0, r0, c2, c0, 1
    mov r0, #0x42
    mcr p15, 0, r0, c2, c0, 0
    mov r0, #2
    mcr p15, 0, r0, c3, c0, 0
    ldr r0, =0x05100011
    mcr p15, 0, r0, c5, c0, 3
    ldr r0, =0x15111011
    mcr p15, 0, r0, c5, c0, 2
    mrc p15, 0, r0, c1, c0, 0
    ldr r1, =0x0005707D
    orr r0, r0, r1
    mcr p15, 0, r0, c1, c0, 0
    bx lr
}

asm
void OSi_ReferSymbol(void * symb)
{
#pragma unused(symb)
    bx lr
}

asm
void NitroStartUp(void)
{
    bx lr
}
