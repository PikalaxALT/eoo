#include "nitro/types.h"

extern void (*__sinit__[])(void);

void _fp_init(void)
{

}

void __call_static_initializers(void)
{
    void (**sinit_p)() = __sinit__;
    while (sinit_p != NULL && *sinit_p != NULL) {
        (*sinit_p)();
        sinit_p++;
    }
}
