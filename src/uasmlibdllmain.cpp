// dllmain.cpp : Defines the entry point for the DLL application.

#include "uXmTypes.h"

uXm_EXTERNC_BEGIN

int DllMain( void* hModule,
                       unsigned int  ul_reason_for_call,
                       void* lpReserved
                     )
{
    switch (ul_reason_for_call)
    {
    case 1:
    case 2:
    case 3:
    case 0:
        break;
    }
    return 1;
}

uXm_EXTERNC_END
