
/*
; / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / /
; / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / /
; / /                                                                               / /
; / /             Copyright 2020 (c) Navegos QA - UASM assembly library             / /
; / /                                                                               / /
; / /    Licensed under the Apache License, Version 2.0 (the "License");            / /
; / /    you may not use this file except in compliance with the License.           / /
; / /    You may obtain a copy of the License at                                    / /
; / /                                                                               / /
; / /        http://www.apache.org/licenses/LICENSE-2.0                             / /
; / /                                                                               / /
; / /    Unless required by applicable law or agreed to in writing, software        / /
; / /    distributed under the License is distributed on an "AS IS" BASIS,          / /
; / /    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.   / /
; / /    See the License for the specific language governing permissions and        / /
; / /    limitations under the License.                                             / /
; / /                                                                               / /
; / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / /
; / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / /
*/

#pragma once

#ifndef uX_XMM_VECQWORD1_H
#define uX_XMM_VECQWORD1_H 1

#ifndef uX_TYPES_H
#include "uXtypes.h"
#endif  /* uX_TYPES_H */

#if defined(uX_INTRINSICS_SUPPORT) && defined(uX_X86_OR_X64_CPU) && !defined(uX_NO_INTRINSICS_SUPPORT) && !defined(uX_MIC)

#ifdef uX_SSE

#ifndef __cplusplus
#error ERROR: This file is only supported in C++ compilations!
#endif /* !__cplusplus */

#ifndef _INCLUDED_MM2
#include <xmmintrin.h>
#endif  /* _INCLUDED_MM2 */

#ifdef uX_SSE2
#ifndef _INCLUDED_EMM
#include <emmintrin.h>
#endif  /* _INCLUDED_EMM */
#endif // uX_SSE2

#ifndef uX_XMM_INTRIN_H
#include "uXxmmintrin.h"
#endif  /* uX_XMM_INTRIN_H */

#ifndef uX_EMM_INTRIN_H
#include "uXemmintrin.h"
#endif  /* uX_EMM_INTRIN_H */

#ifndef uX_SMM_INTRIN_H
#include "uXsmmintrin.h"
#endif  /* uX_SMM_INTRIN_H */

namespace_uX
namespace_XMM
EXTERN_CC_BEGIN
uX_PACK_PUSH_XMM

// VECTORS'S

/*class vecfloat;*/
class vecfloat1;
class vecfloat2;
class vecfloat3;
class vecfloat4;
class vecfloat3x3;
class vecfloat4x3;
class vecfloat4x4;
#ifdef uX_SSE2
/*class vecint8;*/
/*class vecuint8;*/
/*class vecint16;*/
/*class vecuint16;*/
/*class vecint32;*/
/*class vecuint32;*/
/*class vecint64;*/
/*class vecuint64;*/
class vecchar1;
class vecuchar1;
class vecchar2;
class vecuchar2;
class vecchar3;
class vecuchar3;
class vecchar4;
class vecuchar4;
class vecword1;
class vecuword1;
class vecword2;
class vecuword2;
class vecword3;
class vecuword3;
class vecword4;
class vecuword4;
class vecdword1;
class vecudword1;
class vecdword2;
class vecudword2;
class vecdword3;
class vecudword3;
class vecdword4;
class vecudword4;
class vecqword1;
class vecuqword1;
class vecqword2;
class vecuqword2;
class vecqword3;
class vecuqword3;
class vecqword4;
class vecuqword4;
/*class vecdouble;*/
class vecdouble1;
class vecdouble2;
class vecdouble3;
class vecdouble4;
class vecdouble3x3;
class vecdouble4x3;
class vecdouble4x4;
#endif

#ifdef uX_SSE2
/** \class vecqword1
  *
  * \brief SSE SIMD class with the size of 1 int64_t element.
  *
  * The %vecqword1 class is an 1 element wide 64bit integer.
  * It provides interoperability between %vecdouble1 and steel return different integer type.
  *
  */
typedef class uX_API vecqword1
{
public:
    vecqword1()uX_default;
    ~vecqword1()uX_default;

    vecqword1(const vecqword1&)uX_default;
    vecqword1& uX_ABI operator=(const vecqword1&)uX_default;

    vecqword1(vecqword1&&)uX_default;
    vecqword1& uX_ABI operator=(vecqword1&&)uX_default;

    /**
     * \brief Constructor initialization from type __m128i.
     *
     * @param Inxmmi value to copy from.
     */
    uX_constexpr vecqword1(const __m128i Inxmmi) uX_noexcept : m128_xmmi(_uX_mm_select_si128(__m128i_i64_select10, Inxmmi, __m128i_i64_false)) {}

    /**
     * \brief Constructor initialization from type vecqword4.
     *
     * @param InHxmmi_a value to copy from.
     */
    uX_constexpr vecqword1(const vecqword4 InHxmmi_a) uX_noexcept : m128_xmmi(_uX_mm_select_si128(__m128i_i64_select10, InHxmmi_a.get_xmmi_0(), __m128i_i64_false)) {}

    /**
     * \brief Constructor initialization from type vecqword3.
     *
     * @param InHxmmi_a value to copy from.
     */
    uX_constexpr vecqword1(const vecqword3 InHxmmi_a) uX_noexcept : m128_xmmi(_uX_mm_select_si128(__m128i_i64_select10, InHxmmi_a.get_xmmi_0(), __m128i_i64_false)) {}

    /**
     * \brief Constructor initialization from type vecqword2.
     *
     * @param Inxmmi_a value to copy from.
     */
    uX_constexpr vecqword1(const vecqword2 Inxmmi_a) uX_noexcept : m128_xmmi(_uX_mm_select_si128(__m128i_i64_select10, Inxmmi_a, __m128i_i64_false)) {}

    /**
     * \brief Constructor initialization from type vecuqword1.
     *
     * @param Inxmmi_a value to copy from.
     */
    uX_constexpr vecqword1(const vecuqword1 Inxmmi_a) uX_noexcept : m128_xmmi(Inxmmi_a) {}

    /**
     * \brief Constructor initialization from type vecdouble1.
     *
     * @param Inxmmd_a value to copy from.
     */
    uX_constexpr vecqword1(const vecdouble1 Inxmmd_a) uX_noexcept : m128_xmmi(_uX_mm_castpd_si128(Inxmmd_a)) {}

    /**
     * \brief Constructor initialization from type vecfloat2.
     *
     * @param Inxmm_a value to copy from.
     */
    uX_constexpr vecqword1(const vecfloat2 Inxmm_a) uX_noexcept : m128_xmmi(_uX_mm_castps_si128(Inxmm_a)) {}

    /**
     * \brief Constructor initialization from type vecdword2.
     *
     * @param Inxmmi_a value to copy from.
     */
    uX_constexpr vecqword1(const vecdword2 Inxmmi_a) uX_noexcept : m128_xmmi(Inxmmi_a) {}

    /**
     * \brief Constructor to broadcast the same int64_t value into all elements.
     *
     * \param Inint_a int64_t value to copy from.
     */
    /*uX_explicit uX_constexpr vecqword1(const int64_t Inint_a) uX_noexcept : m128_xmmi(_uX_mm_setr_epi64x(Inint_a, 0)) {}*/

    /**
     * \brief Constructor initialization from 1 type int64_t.
     *
     * \param Inint_X value to copy from.
     */
    uX_constexpr vecqword1(const int64_t Inint_X) uX_noexcept : m128_xmmi(_uX_mm_setr_epi64x(Inint_X, 0)) {}

    /**
     * \brief Constructor to broadcast the same bool_t value into all elements.
     *
     * \param Inbool_a value to copy from.
     */
    /*uX_explicit uX_constexpr vecqword1(const bool_t Inbool_a) uX_noexcept : m128_xmmi(_uX_mm_setr_epi64x(Inbool_a.to_trueint(), 0)) {}*/

    /**
     * \brief Constructor initialization from 1 type bool_t.
     *
     * \param Inbool_X value to copy from.
     */
    uX_constexpr vecqword1(const bool_t Inbool_X) uX_noexcept : m128_xmmi(_uX_mm_setr_epi64x(Inbool_X.to_trueint(), 0)) {}

    /**
     * \brief Constructor initialization from 1 type bool.
     *
     * \param Inbool_X value to copy from.
     */
    uX_constexpr vecqword1(const bool Inbool_X) uX_noexcept : m128_xmmi(vecqword1(bool_t(Inbool_X))) {}

    /**
     * \brief Constructor initialization from type int64_t*.
     *
     * @param Inpint64 value to copy from.
     */
    /*uX_explicit uX_constexpr vecqword1(uX_InReads(1) const int64_t* Inpint64) uX_noexcept : m128_xmmi(_uX_mm_setr_epi64x(Inpint64[0], 0)) {}*/

    /** \brief __m128i type cast operator.
     *
     * To convert to __m128i.
     */
    uX_constexpr operator __m128i() const uX_noexcept { return m128_xmmi; }

    /** Type cast operator to convert to int64_t*. */
    /*operator int64_t*() const;*/ //security undesired

    /**
     * \brief Assignment operator to convert from type __m128i.
     *
     * @param Inxmmi value to copy from.
     */
    vecqword1& uX_ABI operator=(const __m128i Inxmmi) uX_noexcept;

    /**
     * \brief vecqword4 assignment operator.
     *
     * To convert from type vecqword4.
     *
     * \param Inxmmi_a value to copy from.
     */
    vecqword1& uX_ABI operator=(const vecqword4 Inxmmi_a) uX_noexcept;

    /**
     * \brief vecqword3 assignment operator.
     *
     * To convert from type vecqword3.
     *
     * \param Inxmmi_a value to copy from.
     */
    vecqword1& uX_ABI operator=(const vecqword3 Inxmmi_a) uX_noexcept;

    /**
     * \brief vecqword2 assignment operator.
     *
     * To convert from type vecqword2.
     *
     * \param Inxmmi_a value to copy from.
     */
    vecqword1& uX_ABI operator=(const vecqword2 Inxmmi_a) uX_noexcept;

    /**
     * \brief vecuqword1 assignment operator.
     *
     * To convert from type vecuqword1.
     *
     * \param Inxmmi_a value to copy from.
     */
    vecqword1& uX_ABI operator=(const vecuqword1 Inxmmi_a) uX_noexcept;

    /**
     * \brief vecdouble1 assignment operator.
     *
     * To convert from type vecdouble1.
     *
     * \param Inxmmd_a value to copy from.
     */
    vecqword1& uX_ABI operator=(const vecdouble1 Inxmmd_a) uX_noexcept;

    /**
     * \brief vecfloat2 assignment operator.
     *
     * To convert from type vecfloat2.
     *
     * \param Inxmm_a value to copy from.
     */
    vecqword1& uX_ABI operator=(const vecfloat2 Inxmm_a) uX_noexcept;

    /**
     * \brief vecdword2 assignment operator.
     *
     * To convert from type vecdword2.
     *
     * \param Inxmmi_a value to copy from.
     */
    vecqword1& uX_ABI operator=(const vecdword2 Inxmmi_a) uX_noexcept;

    /**
     * \brief int64_t assignment operator
     *
     * To broadcast the same int64_t value into all elements.
     *
     * \param Inint_a int64_t value to copy from.
     */
    vecqword1& uX_ABI operator=(const int64_t Inint_a) uX_noexcept;

    /**
     * \brief bool_t assignment operator.
     *
     * To broadcast the same bool_t value into all elements.
     *
     * \param Inbool_a value to copy from.
     */
    vecqword1& uX_ABI operator=(const bool_t Inbool_a) uX_noexcept;

    /**
     * \brief bool assignment operator.
     *
     * To broadcast the same bool value into all elements.
     *
     * \param Inbool_a value to copy from.
     */
    vecqword1& uX_ABI operator=(const bool Inbool_a) uX_noexcept;

    /**
     * Assignment operator to convert from type int64_t*.
     *
     * @param Inpint64 value to copy from.
     */
     /*vecqword1& uX_ABI operator=(uX_InReads(1) const int64_t* Inpint64);*/ //security undesired

    /**
     * \brief Get vector.
     *
     * Gets vector.
     * \return vector.
     */
    __m128i uX_ABI get() const uX_noexcept;

    /**
     * \brief Get reference to vector.
     *
     * Gets reference to vector.
     * \return vector.
     */
    __m128i& uX_ABI ref() uX_noexcept;

    /**
     * \brief Set the vector.
     *
     * Sets all vector elements.
     *
     * \param Inxmmi.
     */
    void uX_ABI set(const __m128i Inxmmi) uX_noexcept;

    /**
     * \brief Generate a constant vector of 1 integer at compile time.
     *
     * Generate a constant vector of 1 integer at compile time stored in memory.
     *
     */
    template <int64_t i0>
    friend uX_constexpr vecqword1 uX_ABI constant1i64() {
        return vecqword1(i0);
    }

protected:

private:
    union
    {
        __m128i         m128_xmmi;
        struct
        {
            int64_t     _qw_x;
        };
        struct
        {
            int32_t     _dw_0, _dw_1;
        };
        struct
        {
            int16_t     _w_0, _w_1, _w_2, _w_3;
        };
        struct
        {
            int8_t      _b_0, _b_1, _b_2, _b_3, _b_4, _b_5, _b_6, _b_7;
        };
        int32_t         m128_dw[2];
        int16_t          m128_w[4];
        int8_t           m128_b[8];
    };

public:
    uX_const uint32_t uX_ABI m128_xmm_size           () const uX_noexcept { return 16; }
    uX_const uint32_t uX_ABI m128_xmm_i64_elements   () const uX_noexcept { return 2; }
    uX_const uint32_t uX_ABI m128_xmm_i32_elements   () const uX_noexcept { return 4; }
    uX_const uint32_t uX_ABI m128_xmm_i16_elements   () const uX_noexcept { return 8; }
    uX_const uint32_t uX_ABI m128_xmm_i8_elements    () const uX_noexcept { return 16; }
    uX_const uint32_t uX_ABI m128_i32_ptr_lenght     () const uX_noexcept { return 2; }
    uX_const uint32_t uX_ABI m128_i16_ptr_lenght     () const uX_noexcept { return 4; }
    uX_const uint32_t uX_ABI m128_i8_ptr_lenght      () const uX_noexcept { return 8; }
    uX_const uint32_t uX_ABI m128_i32_ptr_size       () const uX_noexcept { return 8; }
    uX_const uint32_t uX_ABI m128_i16_ptr_size       () const uX_noexcept { return 8; }
    uX_const uint32_t uX_ABI m128_i8_ptr_size        () const uX_noexcept { return 8; }
    uX_const uint32_t uX_ABI m128_i64_size           () const uX_noexcept { return 8; }
    uX_const uint32_t uX_ABI m128_i32_size           () const uX_noexcept { return 4; }
    uX_const uint32_t uX_ABI m128_i16_size           () const uX_noexcept { return 2; }
    uX_const uint32_t uX_ABI m128_i8_size            () const uX_noexcept { return 1; }

}vecqword1_t;
#endif // uX_SSE2

uX_PACK_POP
EXTERN_CC_END
namespace_XMM_end
namespace_uX_end

#ifndef uX_XMM_VECDOUBLE1_H
#include "uXxmmvecdouble1.h"
#endif  /* uX_XMM_VECDOUBLE1_H */

#ifndef uX_XMM_VECFLOAT2_H
#include "uXxmmvecfloat2.h"
#endif  /* uX_XMM_VECFLOAT2_H */

#ifndef uX_XMM_VECQWORD4_H
#include "uXxmmvecqword4.h"
#endif  /* uX_XMM_VECQWORD4_H */

#ifndef uX_XMM_VECQWORD3_H
#include "uXxmmvecqword3.h"
#endif  /* uX_XMM_VECQWORD3_H */

#ifndef uX_XMM_VECQWORD2_H
#include "uXxmmvecqword2.h"
#endif  /* uX_XMM_VECQWORD2_H */

#ifndef uX_XMM_VECUQWORD1_H
#include "uXxmmvecuqword1.h"
#endif  /* uX_XMM_VECUQWORD1_H */

#ifndef uX_XMM_VECDWORD2_H
#include "uXxmmvecdword2.h"
#endif  /* uX_XMM_VECDWORD2_H */

#endif // uX_SSE

#endif /*defined(uX_INTRINSICS_SUPPORT) && defined(uX_X86_OR_X64_CPU) && !defined(uX_NO_INTRINSICS_SUPPORT)*/

#endif // uX_XMM_VECQWORD1_H
