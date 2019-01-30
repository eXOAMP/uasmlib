
#pragma once

#ifndef uX_PMM_INTRIN_H
#define uX_PMM_INTRIN_H

#ifndef uX_TYPES_H
#include "uXTypes.h"
#endif  /* uX_TYPES_H */

#if defined(uX_INTRINSICS_SUPPORT) && defined(uX_X86_OR_X64_CPU) && !defined(uX_NO_INTRINSICS_SUPPORT) && !defined(uX_MIC)

#ifdef uX_SSE3

#ifndef uX_EMM_INTRIN_H
#include "uXemmintrin.h"
#endif  /* uX_MM_INTRIN_H */

#ifndef _INCLUDED_PMM
#include <pmmintrin.h>
#endif  /* _INCLUDED_PMM */

/*
 * MACRO functions for setting and reading the DAZ bit in the MXCSR
 */
#define _uX_MM_DENORMALS_ZERO_MASK   0x0040
#define _uX_MM_DENORMALS_ZERO_ON     0x0040
#define _uX_MM_DENORMALS_ZERO_OFF    0x0000

#define _uX_MM_SET_DENORMALS_ZERO_MODE(mode)                                   \
            _uX_mm_setcsr((_uX_mm_getcsr() & ~_MM_DENORMALS_ZERO_MASK) | (mode))
#define _uX_MM_GET_DENORMALS_ZERO_MODE()                                       \
            (_uX_mm_getcsr() & _MM_DENORMALS_ZERO_MASK)

uX_EXTERNC_BEGIN

uX_PACK_PUSH16

/*
 * New Single precision vector instructions.
 */

	extern __m128 uX_callconv _uX_mm_addsub_ps(__m128 Inxmm_A, __m128 Inxmm_B);
	extern __m128 uX_callconv _uX_mm_hadd_ps(__m128 Inxmm_A, __m128 Inxmm_B);
	extern __m128 uX_callconv _uX_mm_hsub_ps(__m128 Inxmm_A, __m128 Inxmm_B);
	extern __m128 uX_callconv _uX_mm_movehdup_ps(__m128 Inxmm_A);
	extern __m128 uX_callconv _uX_mm_moveldup_ps(__m128 Inxmm_A);

/*
 * New double precision vector instructions.
 */

	extern __m128d uX_callconv _uX_mm_addsub_pd(__m128d Inxmm_A, __m128d Inxmm_B);
	extern __m128d uX_callconv _uX_mm_hadd_pd(__m128d Inxmm_A, __m128d Inxmm_B);
	extern __m128d uX_callconv _uX_mm_hsub_pd(__m128d Inxmm_A, __m128d Inxmm_B);
	extern __m128d uX_callconv _uX_mm_loaddup_pd(const double* InPdouble_B);
	extern __m128d uX_callconv _uX_mm_movedup_pd(__m128d Inxmm_A);

/*
 * New unaligned integer vector load instruction.
 */
	extern __m128i uX_callconv _uX_mm_lddqu_si128(const __m128i* InPxmm_A);

/*
 * Miscellaneous new instructions.
 */
/*
 * For _uX_mm_monitor p goes in eax, extensions goes in ecx, hints goes in edx.
 */
	extern void uX_callconv _uX_mm_monitor(const void* InPvoid_A, unsigned Ext_B, unsigned Hints_C);

/*
 * For _uX_mm_mwait, extensions goes in ecx, hints goes in eax.
 */
	extern void uX_callconv _uX_mm_mwait(unsigned Ext_A, unsigned Hints_C);

uX_PACK_POP

uX_EXTERNC_END

#endif // uX_SSE3

#endif /*defined(uX_INTRINSICS_SUPPORT) && defined(uX_X86_OR_X64_CPU) && !defined(uX_NO_INTRINSICS_SUPPORT)*/

#endif // uX_PMM_INTRIN_H