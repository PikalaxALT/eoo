#include "nitro/types.h"
#include "mw/init.h"

void _start(void);
void INITi_CpuClear32(u32 value, u32 * dest, u32 size);
void MIi_UncompressBackward(u32 * ptr);
void do_autoload(void);
void _start_AutoloadDoneCallback(void * argv[]);
void init_cp15(void);
void OSi_ReferSymbol(void * symb);
void NitroStartUp(void);

extern u32 SDK_AUTOLOAD_LIST[];
extern u32 SDK_AUTOLOAD_LIST_END[];
extern u32 SDK_AUTOLOAD_START[];
extern u32 SDK_STATIC_BSS_START[];
extern u32 SDK_STATIC_BSS_END[];

extern u32 SDK_AUTOLOAD_DTCM_START[];
extern u32 SDK_IRQ_STACKSIZE[];

extern void OS_IrqHandler(void);
extern void NitroMain(void);

#define SDK_VERSION_MAJOR                 3
#define SDK_VERSION_MINOR                 2
#define SDK_VERSION_RELSTEP           30001
#define         SDK_VERSION_ID   ((u32)SDK_VERSION_MAJOR<<24|\
                                  (u32)SDK_VERSION_MINOR<<16|\
                                  (u32)SDK_VERSION_RELSTEP)

#define     SDK_NITROCODE_LE    0x2106c0de
#define     SDK_NITROCODE_BE    0xdec00621

#define INITi_HW_DTCM   SDK_AUTOLOAD_DTCM_START

#define HW_SVC_STACK_SIZE  0x40

#define HW_PSR_CPU_MODE_MASK       0x1f // CPU mode

#define HW_PSR_USER_MODE           0x10 // USER
#define HW_PSR_FIQ_MODE            0x11 // FIQ
#define HW_PSR_IRQ_MODE            0x12 // IRQ
#define HW_PSR_SVC_MODE            0x13 // Supervisor
#define HW_PSR_ABORT_MODE          0x17 // Abort (prefetch/data)
#define HW_PSR_UNDEF_MODE          0x1b // Undefined instruction
#define HW_PSR_SYS_MODE            0x1f // System

#define HW_PSR_ARM_STATE           0x0 // ARM state
#define HW_PSR_THUMB_STATE         0x20 // THUMB state

#define HW_PSR_FIQ_DISABLE         0x40 // Disable FIQ
#define HW_PSR_IRQ_DISABLE         0x80 // Disable IRQ
#define HW_PSR_IRQ_FIQ_DISABLE     0xc0 // Disable FIQ and IRQ

#define HW_PSR_Q_FLAG              0x08000000   // Sticky overflow
#define HW_PSR_V_FLAG              0x10000000   // Overflow
#define HW_PSR_C_FLAG              0x20000000   // Carry / borrow / extend
#define HW_PSR_Z_FLAG              0x40000000   // Zero
#define HW_PSR_N_FLAG              0x80000000   // Minus / less than

#define HW_IOREG                0x04000000
#define HW_IOREG_END            0x05000000
#define HW_REG_BASE             HW_IOREG        // alias

#define HW_BG_PLTT              0x05000000
#define HW_BG_PLTT_END          0x05000200
#define HW_BG_PLTT_SIZE         (HW_BG_PLTT_END-HW_BG_PLTT)

#define HW_OBJ_PLTT             0x05000200
#define HW_OBJ_PLTT_END         0x05000400
#define HW_OBJ_PLTT_SIZE        (HW_OBJ_PLTT_END-HW_OBJ_PLTT)

#define HW_PLTT                 HW_BG_PLTT
#define HW_PLTT_END             HW_OBJ_PLTT_END
#define HW_PLTT_SIZE            (HW_PLTT_END-HW_PLTT)

#define HW_OAM                  0x07000000
#define HW_OAM_END              0x07000400
#define HW_OAM_SIZE             (HW_OAM_END-HW_OAM)

#define HW_MAIN_MEM 0x02000000

#define HW_COMPONENT_PARAM (HW_MAIN_MEM + 0x007FFF9C)

#define HW_CACHE_LINE_SIZE 0x20

#define HW_DTCM_SYSRV_OFS_INTR_VECTOR 0x3c

#define HW_RESET_VECTOR 0xFFFF0000

#define REG_VCOUNT_OFFSET 0x006
#define REG_IME_OFFSET 0x208

const u32 _start_ModuleParams[] = {
    (u32)SDK_AUTOLOAD_LIST,
    (u32)SDK_AUTOLOAD_LIST_END,
    (u32)SDK_AUTOLOAD_START,
    (u32)SDK_STATIC_BSS_START,
    (u32)SDK_STATIC_BSS_END,
    (u32)0,  // compressed end
    (u32)SDK_VERSION_ID,
    (u32)SDK_NITROCODE_BE,
    (u32)SDK_NITROCODE_LE
};

SDK_WEAK_SYMBOL
asm
void _start(void)
{
    // ime off
    mov ip, #HW_REG_BASE
    str ip, [ip, #REG_IME_OFFSET]

    // wait vcount
@wait_vcount:
    ldrh r0, [ip, #REG_VCOUNT_OFFSET]
    cmp r0, #0
    bne @wait_vcount

    // cp15
    bl init_cp15

    // svc stack
    mov r0, #HW_PSR_SVC_MODE
    msr cpsr_c, r0
    ldr r0, =INITi_HW_DTCM
    add r0, r0, #0x3fc0
    mov sp, r0

    // irq stack
    mov r0, #HW_PSR_IRQ_MODE
    msr cpsr_c, r0
    ldr r0, =INITi_HW_DTCM
    add r0, r0, #0x3fc0
    sub r0, r0, #HW_SVC_STACK_SIZE
    sub sp, r0, #4
    tst sp, #4
    subeq sp, sp, #4

    // sys stack
    ldr r1, =SDK_IRQ_STACKSIZE
    sub r1, r0, r1
    mov r0, #HW_PSR_SYS_MODE
    msr cpsr_fsxc, r0
    sub sp, r1, #4

    // clear dtcm
    mov r0, #0
    ldr r1, =INITi_HW_DTCM
    mov r2, #0x4000
    bl INITi_CpuClear32

    // clear pltt
    mov r0, #0
    ldr r1, =HW_PLTT
    mov r2, #HW_PLTT_SIZE
    bl INITi_CpuClear32

    // clear oam
    mov r0, #0x200
    ldr r1, =HW_OAM
    mov r2, #HW_OAM_SIZE
    bl INITi_CpuClear32

    // load compressed data
    ldr r1, =_start_ModuleParams
    ldr r0, [r1, #0x14]
    bl MIi_UncompressBackward

    // load autoload modules
    bl do_autoload

    // clear static bss
    ldr r0, =_start_ModuleParams
    ldr r1, [r0, #0xc]
    ldr r2, [r0, #0x10]
    mov r3, r1
    mov r0, #0
@clear_bss_loop:
    cmp r1, r2
    strlo r0, [r1], #4
    blo @clear_bss_loop

    // flush static bss
    bic r1, r3, #HW_CACHE_LINE_SIZE - 1
@cp15_loop:
    mcr p15, 0, r0, c7, c10, 4
    mcr p15, 0, r1, c7, c5, 1
    mcr p15, 0, r1, c7, c14, 1
    add r1, r1, #HW_CACHE_LINE_SIZE
    cmp r1, r2
    blt @cp15_loop

    // arm7 print buffer
    ldr r1, =HW_COMPONENT_PARAM
    str r0, [r1]

    // set intr vector
    ldr r1, =INITi_HW_DTCM
    add r1, r1, #0x3fc0
    add r1, r1, #HW_DTCM_SYSRV_OFS_INTR_VECTOR
    ldr r0, =OS_IrqHandler
    str r0, [r1]

    // c++ init
    bl _fp_init
    bl NitroStartUp
    bl __call_static_initializers

    // start program
    ldr r1, =NitroMain
    ldr lr, =HW_RESET_VECTOR
    tst sp, #4
    subne sp, sp, #4
    bx r1
}

asm
void INITi_CpuClear32(u32 value, u32 * dest, u32 size)
{
    add ip, r1, r2
@loop:
    cmp r1, ip
    stmltia r1!, {r0}
    blt @loop
    bx lr
}

asm
void MIi_UncompressBackward(u32 * ptr)
{
    cmp r0, #0
    beq @exit
    stmdb sp!, {r4, r5, r6, r7}
    ldmdb r0, {r1, r2}
    add r2, r0, r2
    sub r3, r0, r1, lsr #24
    bic r1, r1, #0xff000000
    sub r1, r0, r1
    mov r4, r2
@loop:
    cmp r3, r1
    ble @end_loop
    ldrb r5, [r3, #-1]!
    mov r6, #8
@loop8:
    subs r6, r6, #1
    blt @loop
    tst r5, #0x80
    bne @blockcopy
    ldrb r0, [r3, #-1]!
    strb r0, [r2, #-1]!
    b @joinhere
@blockcopy:
    ldrb ip, [r3, #-1]!
    ldrb r7, [r3, #-1]!
    orr r7, r7, ip, lsl #8
    bic r7, r7, #0xf000
    add r7, r7, #2
    add ip, ip, #0x20
@patterncopy:
    ldrb r0, [r2, r7]
    strb r0, [r2, #-1]!
    subs ip, ip, #0x10
    bge @patterncopy
@joinhere:
    cmp r3, r1
    mov r5, r5, lsl #1
    bgt @loop8
@end_loop:
    mov r0, #0
    bic r3, r1, #HW_CACHE_LINE_SIZE - 1
@cacheflush:
    mcr p15, 0, r0, c7, c10, 4
    mcr p15, 0, r3, c7, c5, 1
    mcr p15, 0, r3, c7, c14, 1
    add r3, r3, #HW_CACHE_LINE_SIZE
    cmp r3, r4
    blt @cacheflush
    ldmia sp!, {r4, r5, r6, r7}
@exit:
    bx lr
}

asm
void do_autoload(void)
{
    ldr r0, =_start_ModuleParams
    ldr r1, [r0]
    ldr r2, [r0, #4]
    ldr r3, [r0, #8]
@loop:
    cmp r1, r2
    beq @exit
    ldr r5, [r1], #4
    ldr r7, [r1], #4
    add r6, r5, r7
    mov r4, r5
@copyloop:
    cmp r4, r6
    ldrmi r7, [r3], #4
    strmi r7, [r4], #4
    bmi @copyloop
    ldr r7, [r1], #4
    add r6, r4, r7
    mov r7, #0
@clearbssloop:
    cmp r4, r6
    strlo r7, [r4], #4
    blo @clearbssloop
    bic r4, r5, #HW_CACHE_LINE_SIZE - 1
@cacheflush:
    mcr p15, 0, r7, c7, c10, 4
    mcr p15, 0, r4, c7, c5, 1
    mcr p15, 0, r4, c7, c14, 1
    add r4, r4, #HW_CACHE_LINE_SIZE
    cmp r4, r6
    blt @cacheflush
    b @loop
@exit:
    b _start_AutoloadDoneCallback
}

SDK_WEAK_SYMBOL
asm
void _start_AutoloadDoneCallback(void * argv[])
{
    bx lr
}

asm
void init_cp15(void)
{
    // Disable protection unit
    mrc p15, 0, r0, c1, c0, 0
    ldr r1, =0x000F9005
    bic r0, r0, r1
    mcr p15, 0, r0, c1, c0, 0

    // Disable cache
    mov r0, #0
    mcr p15, 0, r0, c7, c5, 0
    mcr p15, 0, r0, c7, c6, 0

    // Wait write buffer
    mcr p15, 0, r0, c7, c10, 4

    // Init memory regions
    // I/O registers, VRAM, PLTT, OAM, EXT
    ldr r0, =0x04000033 // size: 0x04000000  64 mb
    mcr p15, 0, r0, c6, c0, 0

    // Main memory
    ldr r0, =0x0200002D // size: 0x00800000   8 mb
    mcr p15, 0, r0, c6, c1, 0

    // Sub memory
    ldr r0, =0x027E0021 // size: 0x00020000 128 kb
    mcr p15, 0, r0, c6, c2, 0

    // Cartridge
    ldr r0, =0x08000035 // size: 0x08000000 128 mb
    mcr p15, 0, r0, c6, c3, 0

    // Init protection unit
    // DTCM
    ldr r0, =INITi_HW_DTCM
    orr r0, r0, #0x1a   // size: 0x00004000  16 kb
    orr r0, r0, #1
    mcr p15, 0, r0, c6, c4, 0

    // ITCM image
    ldr r0, =0x0100002F // size: 0x01000000  16 mb
    mcr p15, 0, r0, c6, c5, 0

    // BIOS
    ldr r0, =0xFFFF001D // size: 0x00008000  32 kb
    mcr p15, 0, r0, c6, c6, 0

    // Shared memory
    ldr r0, =0x027FF017 // size: 0x00001000   4 kb
    mcr p15, 0, r0, c6, c7, 0

    // ITCM settings
    mov r0, #0x20
    mcr p15, 0, r0, c9, c1, 1

    // DTCM settings
    ldr r0, =INITi_HW_DTCM
    orr r0, r0, #0xa
    mcr p15, 0, r0, c9, c1, 0

    // Instruction cache enable
    mov r0, #0x42
    mcr p15, 0, r0, c2, c0, 1

    // Data cache enable
    mov r0, #0x42
    mcr p15, 0, r0, c2, c0, 0

    // Write buffer enable
    mov r0, #2
    mcr p15, 0, r0, c3, c0, 0

    // Instruction access enable
    ldr r0, =0x05100011
    mcr p15, 0, r0, c5, c0, 3

    // Data access enable
    ldr r0, =0x15111011
    mcr p15, 0, r0, c5, c0, 2

    // Protection unit and master control enable
    mrc p15, 0, r0, c1, c0, 0
    ldr r1, =0x0005707D
    orr r0, r0, r1
    mcr p15, 0, r0, c1, c0, 0
    bx lr
}

SDK_WEAK_SYMBOL
void NitroStartUp(void)
{
}

void OSi_ReferSymbol(void * symb)
{
#pragma unused(symb)
}
