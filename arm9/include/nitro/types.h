#ifndef NITRO_TYPES_H_
#define NITRO_TYPES_H_

typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned long u32;
typedef unsigned long long u64;
typedef signed char s8;
typedef signed short s16;
typedef signed long s32;
typedef signed long long s64;

typedef float f32;
typedef double f64;

typedef u32 BOOL;
#define TRUE  1
#define FALSE 0

typedef volatile u8 vu8;
typedef volatile u16 vu16;
typedef volatile u32 vu32;
typedef volatile u64 vu64;
typedef volatile s8 vs8;
typedef volatile s16 vs16;
typedef volatile s32 vs32;
typedef volatile s64 vs64;

#define NULL ((void*)0)

#define SDK_WEAK_SYMBOL __declspec(weak)
#define SDK_FORCE_EXPORT __declspec(force_export)

#endif //NITRO_TYPES_H_
