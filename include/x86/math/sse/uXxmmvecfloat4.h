
/*
; / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / /
; / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / /
; / /                                                                               / /
; / /             Copyright 2020 (c) Navegos QA - optimized library                 / /
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

#ifndef uX_XMM_VECFLOAT4_H
#define uX_XMM_VECFLOAT4_H 1

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

/** \class vecfloat4
  *
  * \brief SSE SIMD class with the size of 4 float elements.
  *
  * The %vecfloat4 class is an 4 elements wide 32bit float.
  * It provides interoperability between %vecdouble2, %vecdword4 and %vecudword4.
  *
  */
typedef class uX_API vecfloat4
{
public:
    vecfloat4()uX_default;
    ~vecfloat4()uX_default;

    vecfloat4(const vecfloat4&)uX_default;
    vecfloat4& uX_ABI operator=(const vecfloat4&)uX_default;

    vecfloat4(vecfloat4&&)uX_default;
    vecfloat4& uX_ABI operator=(vecfloat4&&)uX_default;

    /**
     * \brief Constructor initialization from type __m128.
     *
     * \param Inxmm value to copy from.
     */
    uX_constexpr vecfloat4(const __m128 Inxmm) uX_noexcept : m128_xmm(Inxmm) {}

    /**
     * \brief Constructor initialization from type vecfloat3.
     *
     * \param Inxmm_a value to copy from.
     */
    uX_constexpr vecfloat4(const vecfloat3 Inxmm_a) uX_noexcept : m128_xmm(_uX_MM_SHUFFLER_IM_PS(Inxmm_a, _uX_MM_SHUFFLER_IM_PS(Inxmm_a, m128_xmm, 2, 2, 3, 3), 0, 1, 0, 3)) {}

    /**
     * \brief Constructor initialization from type vecfloat2.
     *
     * \param Inxmm_a value to copy from.
     */
    uX_constexpr vecfloat4(const vecfloat2 Inxmm_a) uX_noexcept : m128_xmm(_uX_MM_SHUFFLER_IM_PS(Inxmm_a, m128_xmm, 0, 1, 2, 3)) {}

    /**
     * \brief Constructor initialization from type vecfloat1.
     *
     * \param Inxmm_a value to copy from.
     */
    uX_constexpr vecfloat4(const vecfloat1 Inxmm_a) uX_noexcept : m128_xmm(_uX_mm_move_ss(m128_xmm, Inxmm_a)) {}

    /**
     * \brief Constructor initialization from type vecdouble2.
     *
     * \param Inxmmd_a value to copy from.
     */
    uX_constexpr vecfloat4(const vecdouble2 Inxmmd_a) uX_noexcept : m128_xmm(_uX_mm_castpd_ps(Inxmmd_a)) {}

    /**
     * \brief Constructor initialization from type vecdword4.
     *
     * @param Inxmmi_a value to copy from.
     */
    uX_constexpr vecfloat4(const vecdword4 Inxmmi_a) uX_noexcept : m128_xmm(_uX_mm_castsi128_ps(Inxmmi_a)) {}

    /**
     * \brief Constructor initialization from type vecudword4.
     *
     * @param Inxmmi_a value to copy from.
     */
    uX_constexpr vecfloat4(const vecudword4 Inxmmi_a) uX_noexcept : m128_xmm(_uX_mm_castsi128_ps(Inxmmi_a)) {}

    /**
     * \brief Constructor initialization from type vecqword2.
     *
     * @param Inxmmi_a value to copy from.
     */
    uX_constexpr vecfloat4(const vecqword2 Inxmmi_a) uX_noexcept : m128_xmm(_uX_mm_castsi128_ps(Inxmmi_a)) {}

    /**
     * \brief Constructor initialization from type vecuqword2.
     *
     * @param Inxmmi_a value to copy from.
     */
    uX_constexpr vecfloat4(const vecuqword2 Inxmmi_a) uX_noexcept : m128_xmm(_uX_mm_castsi128_ps(Inxmmi_a)) {}

    /**
     * \brief Constructor to broadcast the same float value into all elements.
     *
     * \param Infloat_a float value to copy from.
     */
    uX_explicit uX_constexpr vecfloat4(float Infloat_a) uX_noexcept : m128_xmm(_uX_mm_set1_ps(Infloat_a)) {}

    /**
     * \brief Constructor initialization from 4 type float.
     *
     * \param Infloat_X value to copy from.
     * \param Infloat_Y value to copy from.
     * \param Infloat_Z value to copy from.
     * \param Infloat_W value to copy from.
     */
    uX_constexpr vecfloat4(float Infloat_X, float Infloat_Y, float Infloat_Z, float Infloat_W) uX_noexcept : m128_xmm(_uX_mm_set_ps(Infloat_W, Infloat_Z, Infloat_Y, Infloat_X)) {}

    /**
     * \brief Constructor to broadcast the same bool value into all elements.
     *
     * \param Inbool_a value to copy from.
     */
    uX_explicit uX_constexpr vecfloat4(const bool_t Inbool_a) uX_noexcept : m128_xmm(vecfloat4(vecdword4(Inbool_a))) {}

    /**
     * \brief Constructor initialization from 4 type bool.
     *
     * \param Inbool_X value to copy from.
     * \param Inbool_Y value to copy from.
     * \param Inbool_Z value to copy from.
     * \param Inbool_W value to copy from.
     */
    uX_constexpr vecfloat4(const bool_t Inbool_X, const bool_t Inbool_Y, const bool_t Inbool_Z, const bool_t Inbool_W) uX_noexcept 
                          : m128_xmm(vecfloat4(vecdword4(Inbool_X, Inbool_Y, Inbool_Z, Inbool_W))) {}

    /**
     * \brief Constructor to broadcast the same bool value into all elements.
     *
     * \param Inbool_a value to copy from.
     */
    uX_explicit uX_constexpr vecfloat4(const bool Inbool_a) uX_noexcept : m128_xmm(vecfloat4(vecdword4(Inbool_a))) {}

    /**
     * \brief Constructor initialization from 4 type bool.
     *
     * \param Inbool_X value to copy from.
     * \param Inbool_Y value to copy from.
     * \param Inbool_Z value to copy from.
     * \param Inbool_W value to copy from.
     */
    uX_constexpr vecfloat4(const bool Inbool_X, const bool Inbool_Y, const bool Inbool_Z, const bool Inbool_W) uX_noexcept
                          : m128_xmm(vecfloat4(vecdword4(Inbool_X, Inbool_Y, Inbool_Z, Inbool_W))) {}

    /**
     * \brief Constructor initialization from type float*.
     *
     * \param Inpfloat pointer value to copy from.
     */
    uX_explicit uX_constexpr vecfloat4(uX_InReads(4) const float* Inpfloat) uX_noexcept : m128_xmm(_uX_mm_loadu_ps(Inpfloat)) {}

    /** \brief __m128 type cast operator.
     *
     * To convert to __m128.
     */
    uX_constexpr operator __m128() const uX_noexcept { return m128_xmm; }

    /** Type cast operator to convert to float*. */
    /*operator float*() const uX_noexcept;*/ //security undesired

    /**
     * \brief __m128 assignment operator.
     *
     * To convert from type __m128.
     *
     * \param Inxmm value to copy from.
     */
    vecfloat4& uX_ABI operator=(const __m128 Inxmm) uX_noexcept;

    /**
     * \brief vecfloat3 assignment operator.
     *
     * To convert from type vecfloat3.
     *
     * \param Inxmm_a value to copy from.
     */
    vecfloat4& uX_ABI operator=(const vecfloat3 Inxmm_a) uX_noexcept;

    /**
     * \brief vecfloat2 assignment operator.
     *
     * To convert from type vecfloat2.
     *
     * \param Inxmm_a value to copy from.
     */
    vecfloat4& uX_ABI operator=(const vecfloat2 Inxmm_a) uX_noexcept;

    /**
     * \brief vecfloat1 assignment operator.
     *
     * To convert from type vecfloat1.
     *
     * \param Inxmm_a value to copy from.
     */
    vecfloat4& uX_ABI operator=(const vecfloat1 Inxmm_a) uX_noexcept;

    /**
     * \brief vecdouble2 assignment operator.
     *
     * To convert from type vecdouble2.
     *
     * \param Inxmmd_a value to copy from.
     */
    vecfloat4& uX_ABI operator=(const vecdouble2 Inxmmd_a) uX_noexcept;

    /**
     * \brief vecdword4 assignment operator.
     *
     * To convert from type vecdword4.
     *
     * \param Inxmmi_a value to copy from.
     */
    vecfloat4& uX_ABI operator=(const vecdword4 Inxmmi_a) uX_noexcept;

    /**
     * \brief vecudword4 assignment operator.
     *
     * To convert from type vecudword4.
     *
     * \param Inxmmi_a value to copy from.
     */
    vecfloat4& uX_ABI operator=(const vecudword4 Inxmmi_a) uX_noexcept;

    /**
     * \brief vecqword2 assignment operator.
     *
     * To convert from type vecqword2.
     *
     * \param Inxmmi_a value to copy from.
     */
    vecfloat4& uX_ABI operator=(const vecqword2 Inxmmi_a) uX_noexcept;

    /**
     * \brief vecuqword2 assignment operator.
     *
     * To convert from type vecuqword2.
     *
     * \param Inxmmi_a value to copy from.
     */
    vecfloat4& uX_ABI operator=(const vecuqword2 Inxmmi_a) uX_noexcept;

    /**
     * \brief float assignment operator
     *
     * To broadcast the same float value into all elements.
     *
     * \param Infloat_a float value to copy from.
     */
    vecfloat4& uX_ABI operator=(float Infloat_a) uX_noexcept;

    /**
     * \brief bool_t assignment operator.
     *
     * To broadcast the same bool value into all elements.
     *
     * \param Inbool_a value to copy from.
     */
    vecfloat4& uX_ABI operator=(const bool_t Inbool_a) uX_noexcept;

    /**
     * \brief bool assignment operator.
     *
     * To broadcast the same bool value into all elements.
     *
     * \param Inbool_a value to copy from.
     */
    vecfloat4& uX_ABI operator=(const bool Inbool_a) uX_noexcept;

    /**
     * \brief Assignment operator to convert from type float*.
     *
     * \param Inpfloat value to copy from.
     */
    /*vecfloat4& uX_ABI operator=(uX_InReads(4) const float* Inpfloat) uX_noexcept;*/ //security undesired

    /**
     * \brief Get vector.
     *
     * Gets vector.
     * \return vector.
     */
    __m128 uX_ABI get() const uX_noexcept;

    /**
     * \brief Get _x.
     *
     * Gets _x element from vector.
     * \return float.
     */
    float uX_ABI get_x() const uX_noexcept;

    /**
     * \brief Get _x _y.
     *
     * Gets _x _y elements from vector.
     * \return vector.
     */
    vecfloat2 uX_ABI get_xy() const uX_noexcept;

    /**
     * \brief Get _x _y _z.
     *
     * Gets _x _y _z elements from vector.
     * \return vector.
     */
    vecfloat3 uX_ABI get_xyz() const uX_noexcept;

    /**
     * \brief Get _x _y _z _w.
     *
     * Gets _x _y _z _w elements from vector.
     * \return vector.
     */
    vecfloat4 uX_ABI get_xyzw() const uX_noexcept;

    /**
     * \brief Get _x _y _w.
     *
     * Gets _x _y _w elements from vector.
     * \return vector.
     */
    vecfloat3 uX_ABI get_xyw() const uX_noexcept;

    /**
     * \brief Get _x _y _w _z.
     *
     * Gets _x _y _w _z elements from vector.
     * \return vector.
     */
    vecfloat4 uX_ABI get_xywz() const uX_noexcept;

    /**
     * \brief Get _x _z.
     *
     * Gets _x _z elements from vector.
     * \return vector.
     */
    vecfloat2 uX_ABI get_xz() const uX_noexcept;

    /**
     * \brief Get _x _z _y.
     *
     * Gets _x _z _y elements from vector.
     * \return vector.
     */
    vecfloat3 uX_ABI get_xzy() const uX_noexcept;

    /**
     * \brief Get _x _z _y _w.
     *
     * Gets _x _z _y _w elements from vector.
     * \return vector.
     */
    vecfloat4 uX_ABI get_xzyw() const uX_noexcept;

    /**
     * \brief Get _x _z _w.
     *
     * Gets _x _z _w elements from vector.
     * \return vector.
     */
    vecfloat3 uX_ABI get_xzw() const uX_noexcept;

    /**
     * \brief Get _x _z _w _y.
     *
     * Gets _x _z _w _y elements from vector.
     * \return vector.
     */
    vecfloat4 uX_ABI get_xzwy() const uX_noexcept;

    /**
     * \brief Get _x _w.
     *
     * Gets _x _w elements from vector.
     * \return vector.
     */
    vecfloat2 uX_ABI get_xw() const uX_noexcept;

    /**
     * \brief Get _x _w _y.
     *
     * Gets _x _w _y elements from vector.
     * \return vector.
     */
    vecfloat3 uX_ABI get_xwy() const uX_noexcept;

    /**
     * \brief Get _x _w _y _z.
     *
     * Gets _x _w _y _z elements from vector.
     * \return vector.
     */
    vecfloat4 uX_ABI get_xwyz() const uX_noexcept;

    /**
     * \brief Get _x _w _z.
     *
     * Gets _x _w _z elements from vector.
     * \return vector.
     */
    vecfloat3 uX_ABI get_xwz() const uX_noexcept;

    /**
     * \brief Get _x _w _z _y.
     *
     * Gets _x _w _z _y elements from vector.
     * \return vector.
     */
    vecfloat4 uX_ABI get_xwzy() const uX_noexcept;

    /**
     * \brief Get _y.
     *
     * Gets _y element from vector.
     * \return float.
     */
    float uX_ABI get_y() const uX_noexcept;

    /**
     * \brief Get _y _x.
     *
     * Gets _y _x elements from vector.
     * \return vector.
     */
    vecfloat2 uX_ABI get_yx() const uX_noexcept;

    /**
     * \brief Get _y _x _z.
     *
     * Gets _y _x _z elements from vector.
     * \return vector.
     */
    vecfloat3 uX_ABI get_yxz() const uX_noexcept;

    /**
     * \brief Get _y _x _z _w.
     *
     * Gets _y _x _z _w elements from vector.
     * \return vector.
     */
    vecfloat4 uX_ABI get_yxzw() const uX_noexcept;

    /**
     * \brief Get _y _x _w.
     *
     * Gets _y _x _w elements from vector.
     * \return vector.
     */
    vecfloat3 uX_ABI get_yxw() const uX_noexcept;

    /**
     * \brief Get _y _x _w _z.
     *
     * Gets _y _x _w _z elements from vector.
     * \return vector.
     */
    vecfloat4 uX_ABI get_yxwz() const uX_noexcept;

    /**
     * \brief Get _y _z.
     *
     * Gets _y _z elements from vector.
     * \return vector.
     */
    vecfloat2 uX_ABI get_yz() const uX_noexcept;

    /**
     * \brief Get _y _z _x.
     *
     * Gets _y _z _x elements from vector.
     * \return vector.
     */
    vecfloat3 uX_ABI get_yzx() const uX_noexcept;

    /**
     * \brief Get _y _z _x _w.
     *
     * Gets _y _z _x _w elements from vector.
     * \return vector.
     */
    vecfloat4 uX_ABI get_yzxw() const uX_noexcept;

    /**
     * \brief Get _y _z _w.
     *
     * Gets _y _z _w elements from vector.
     * \return vector.
     */
    vecfloat3 uX_ABI get_yzw() const uX_noexcept;

    /**
     * \brief Get _y _z _w _x.
     *
     * Gets _y _z _w _x elements from vector.
     * \return vector.
     */
    vecfloat4 uX_ABI get_yzwx() const uX_noexcept;

    /**
     * \brief Get _y _w.
     *
     * Gets _y _w elements from vector.
     * \return vector.
     */
    vecfloat2 uX_ABI get_yw() const uX_noexcept;

    /**
     * \brief Get _y _w _x.
     *
     * Gets _y _w _x elements from vector.
     * \return vector.
     */
    vecfloat3 uX_ABI get_ywx() const uX_noexcept;

    /**
     * \brief Get _y _w _y _z.
     *
     * Gets _y _w _y _z elements from vector.
     * \return vector.
     */
    vecfloat4 uX_ABI get_ywxz() const uX_noexcept;

    /**
     * \brief Get _y _w _z.
     *
     * Gets _y _w _z elements from vector.
     * \return vector.
     */
    vecfloat3 uX_ABI get_ywz() const uX_noexcept;

    /**
     * \brief Get _y _w _z _y.
     *
     * Gets _y _w _z _y elements from vector.
     * \return vector.
     */
    vecfloat4 uX_ABI get_ywzx() const uX_noexcept;

    /**
     * \brief Get _z.
     *
     * Gets _z element from vector.
     * \return float.
     */
    float uX_ABI get_z() const uX_noexcept;

    /**
     * \brief Get _z _x.
     *
     * Gets _z _x elements from vector.
     * \return vector.
     */
    vecfloat2 uX_ABI get_zx() const uX_noexcept;

    /**
     * \brief Get _z _x _y.
     *
     * Gets _z _x _y elements from vector.
     * \return vector.
     */
    vecfloat3 uX_ABI get_zxy() const uX_noexcept;

    /**
     * \brief Get _z _x _y _w.
     *
     * Gets _z _x _y _w elements from vector.
     * \return vector.
     */
    vecfloat4 uX_ABI get_zxyw() const uX_noexcept;

    /**
     * \brief Get _z _x _w.
     *
     * Gets _z _x _w elements from vector.
     * \return vector.
     */
    vecfloat3 uX_ABI get_zxw() const uX_noexcept;

    /**
     * \brief Get _z _x _w _y.
     *
     * Gets _z _x _w _y elements from vector.
     * \return vector.
     */
    vecfloat4 uX_ABI get_zxwy() const uX_noexcept;

    /**
     * \brief Get _z _y.
     *
     * Gets _z _y elements from vector.
     * \return vector.
     */
    vecfloat2 uX_ABI get_zy() const uX_noexcept;

    /**
     * \brief Get _z _y _x.
     *
     * Gets _z _y _x elements from vector.
     * \return vector.
     */
    vecfloat3 uX_ABI get_zyx() const uX_noexcept;

    /**
     * \brief Get _z _y _x _w.
     *
     * Gets _z _y _x _w elements from vector.
     * \return vector.
     */
    vecfloat4 uX_ABI get_zyxw() const uX_noexcept;

    /**
     * \brief Get _z _y _w.
     *
     * Gets _z _y _w elements from vector.
     * \return vector.
     */
    vecfloat3 uX_ABI get_zyw() const uX_noexcept;

    /**
     * \brief Get _z _y _w _x.
     *
     * Gets _z _y _w _x elements from vector.
     * \return vector.
     */
    vecfloat4 uX_ABI get_zywx() const uX_noexcept;

    /**
     * \brief Get _z _w.
     *
     * Gets _z _w elements from vector.
     * \return vector.
     */
    vecfloat2 uX_ABI get_zw() const uX_noexcept;

    /**
     * \brief Get _z _w _x.
     *
     * Gets _z _w _x elements from vector.
     * \return vector.
     */
    vecfloat3 uX_ABI get_zwx() const uX_noexcept;

    /**
     * \brief Get _z _w _x _y.
     *
     * Gets _z _w _x _y elements from vector.
     * \return vector.
     */
    vecfloat4 uX_ABI get_zwxy() const uX_noexcept;

    /**
     * \brief Get _z _w _y.
     *
     * Gets _z _w _y elements from vector.
     * \return vector.
     */
    vecfloat3 uX_ABI get_zwy() const uX_noexcept;

    /**
     * \brief Get _z _w _y _x.
     *
     * Gets _z _w _y _x elements from vector.
     * \return vector.
     */
    vecfloat4 uX_ABI get_zwyx() const uX_noexcept;

    /**
     * \brief Get _w.
     *
     * Gets _w element from vector.
     * \return float.
     */
    float uX_ABI get_w() const uX_noexcept;

    /**
     * \brief Get _w _x.
     *
     * Gets _w _x elements from vector.
     * \return vector.
     */
    vecfloat2 uX_ABI get_wx() const uX_noexcept;

    /**
     * \brief Get _w _x _y.
     *
     * Gets _w _x _y elements from vector.
     * \return vector.
     */
    vecfloat3 uX_ABI get_wxy() const uX_noexcept;

    /**
     * \brief Get _w _x _y _z.
     *
     * Gets _w _x _y _z elements from vector.
     * \return vector.
     */
    vecfloat4 uX_ABI get_wxyz() const uX_noexcept;

    /**
     * \brief Get _w _x _z.
     *
     * Gets _w _x _z elements from vector.
     * \return vector.
     */
    vecfloat3 uX_ABI get_wxz() const uX_noexcept;

    /**
     * \brief Get _w _x _z _y.
     *
     * Gets _w _x _z _y elements from vector.
     * \return vector.
     */
    vecfloat4 uX_ABI get_wxzy() const uX_noexcept;

    /**
     * \brief Get _w _y.
     *
     * Gets _w _y elements from vector.
     * \return vector.
     */
    vecfloat2 uX_ABI get_wy() const uX_noexcept;

    /**
     * \brief Get _w _y _x.
     *
     * Gets _w _y _x elements from vector.
     * \return vector.
     */
    vecfloat3 uX_ABI get_wyx() const uX_noexcept;

    /**
     * \brief Get _w _y _x _z.
     *
     * Gets _w _y _x _z elements from vector.
     * \return vector.
     */
    vecfloat4 uX_ABI get_wyxz() const uX_noexcept;

    /**
     * \brief Get _w _y _z.
     *
     * Gets _w _y _z elements from vector.
     * \return vector.
     */
    vecfloat3 uX_ABI get_wyz() const uX_noexcept;

    /**
     * \brief Get _w _y _z _x.
     *
     * Gets _w _y _z _x elements from vector.
     * \return vector.
     */
    vecfloat4 uX_ABI get_wyzx() const uX_noexcept;

    /**
     * \brief Get _w _z.
     *
     * Gets _w _z elements from vector.
     * \return vector.
     */
    vecfloat2 uX_ABI get_wz() const uX_noexcept;

    /**
     * \brief Get _w _z _x.
     *
     * Gets _w _z _x elements from vector.
     * \return vector.
     */
    vecfloat3 uX_ABI get_wzx() const uX_noexcept;

    /**
     * \brief Get _w _z _x _y.
     *
     * Gets _w _z _x _y elements from vector.
     * \return vector.
     */
    vecfloat4 uX_ABI get_wzxy() const uX_noexcept;

    /**
     * \brief Get _w _z _y.
     *
     * Gets _w _z _y elements from vector.
     * \return vector.
     */
    vecfloat3 uX_ABI get_wzy() const uX_noexcept;

    /**
     * \brief Get _w _z _y _x.
     *
     * Gets _w _z _y _x elements from vector.
     * \return vector.
     */
    vecfloat4 uX_ABI get_wzyx() const uX_noexcept;

    /**
     * \brief Get reference to vector.
     *
     * Gets reference to vector.
     * \return vector.
     */
    __m128& uX_ABI ref() uX_noexcept;

    /**
     * \brief Get reference to _x.
     *
     * Gets reference to _x element from vector.
     * \return float.
     */
    float& uX_ABI ref_x() uX_noexcept;

    /**
     * \brief Get reference to _x _y.
     *
     * Gets reference to _x _y elements from vector.
     * \return vector.
     */
    vecfloat2& uX_ABI ref_xy() uX_noexcept;

    /**
     * \brief Get reference to _x _y _z.
     *
     * Gets reference to _x _y _z elements from vector.
     * \return vector.
     */
    vecfloat3& uX_ABI ref_xyz() uX_noexcept;

    /**
     * \brief Get reference to _x _y _z _w.
     *
     * Gets reference to _x _y _z _w elements from vector.
     * \return vector.
     */
    vecfloat4& uX_ABI ref_xyzw() uX_noexcept;

    /**
     * \brief Get reference to _x _y _w.
     *
     * Gets reference too _x _y _w elements from vector.
     * \return vector.
     */
    vecfloat3& uX_ABI ref_xyw() uX_noexcept;

    /**
     * \brief Get reference to _x _y _w _z.
     *
     * Gets reference to _x _y _w _z elements from vector.
     * \return vector.
     */
    vecfloat4& uX_ABI ref_xywz() uX_noexcept;

    /**
     * \brief Get reference to _x _z.
     *
     * Gets reference to _x _z elements from vector.
     * \return vector.
     */
    vecfloat2& uX_ABI ref_xz() uX_noexcept;

    /**
     * \brief Get reference to _x _z _y.
     *
     * Gets reference to _x _z _y elements from vector.
     * \return vector.
     */
    vecfloat3& uX_ABI ref_xzy() uX_noexcept;

    /**
     * \brief Get reference to _x _z _y _w.
     *
     * Gets reference to _x _z _y _w elements from vector.
     * \return vector.
     */
    vecfloat4& uX_ABI ref_xzyw() uX_noexcept;

    /**
     * \brief Get reference to _x _z _w.
     *
     * Gets reference to _x _z _w elements from vector.
     * \return vector.
     */
    vecfloat3& uX_ABI ref_xzw() uX_noexcept;

    /**
     * \brief Get reference to _x _z _w _y.
     *
     * Gets reference to _x _z _w _y elements from vector.
     * \return vector.
     */
    vecfloat4& uX_ABI ref_xzwy() uX_noexcept;

    /**
     * \brief Get reference to _x _w.
     *
     * Gets reference to _x _w elements from vector.
     * \return vector.
     */
    vecfloat2& uX_ABI ref_xw() uX_noexcept;

    /**
     * \brief Get reference to _x _w _y.
     *
     * Gets reference to _x _w _y elements from vector.
     * \return vector.
     */
    vecfloat3& uX_ABI ref_xwy() uX_noexcept;

    /**
     * \brief Get reference to _x _w _y _z.
     *
     * Gets reference to _x _w _y _z elements from vector.
     * \return vector.
     */
    vecfloat4& uX_ABI ref_xwyz() uX_noexcept;

    /**
     * \brief Get reference to _x _w _z.
     *
     * Gets reference to _x _w _z elements from vector.
     * \return vector.
     */
    vecfloat3& uX_ABI ref_xwz() uX_noexcept;

    /**
     * \brief Get reference to _x _w _z _y.
     *
     * Gets reference to _x _w _z _y elements from vector.
     * \return vector.
     */
    vecfloat4& uX_ABI ref_xwzy() uX_noexcept;

    /**
     * \brief Get reference to _y.
     *
     * Gets reference to _y elements from vector.
     * \return float.
     */
    float& uX_ABI ref_y() uX_noexcept;

    /**
     * \brief Get reference to _y _x.
     *
     * Gets reference to _y _x elements from vector.
     * \return vector.
     */
    vecfloat2& uX_ABI ref_yx() uX_noexcept;

    /**
     * \brief Get reference to _y _x _z.
     *
     * Gets reference to _y _x _z elements from vector.
     * \return vector.
     */
    vecfloat3& uX_ABI ref_yxz() uX_noexcept;

    /**
     * \brief Get reference to _y _x _z _w.
     *
     * Gets reference to _y _x _z _w elements from vector.
     * \return vector.
     */
    vecfloat4& uX_ABI ref_yxzw() uX_noexcept;

    /**
     * \brief Get reference to _y _x _w.
     *
     * Gets reference to _y _x _w elements from vector.
     * \return vector.
     */
    vecfloat3& uX_ABI ref_yxw() uX_noexcept;

    /**
     * \brief Get reference to _y _x _w _z.
     *
     * Gets reference to _y _x _w _z elements from vector.
     * \return vector.
     */
    vecfloat4& uX_ABI ref_yxwz() uX_noexcept;

    /**
     * \brief Get reference to _y _z.
     *
     * Gets reference to _y _z elements from vector.
     * \return vector.
     */
    vecfloat2& uX_ABI ref_yz() uX_noexcept;

    /**
     * \brief Get reference to _y _z _x.
     *
     * Gets reference to _y _z _x elements from vector.
     * \return vector.
     */
    vecfloat3& uX_ABI ref_yzx() uX_noexcept;

    /**
     * \brief Get reference to _y _z _x _w.
     *
     * Gets reference to _y _z _x _w elements from vector.
     * \return vector.
     */
    vecfloat4& uX_ABI ref_yzxw() uX_noexcept;

    /**
     * \brief Get reference to _y _z _w.
     *
     * Gets reference to _y _z _w elements from vector.
     * \return vector.
     */
    vecfloat3& uX_ABI ref_yzw() uX_noexcept;

    /**
     * \brief Get reference to _y _z _w _x.
     *
     * Gets reference to _y _z _w _x elements from vector.
     * \return vector.
     */
    vecfloat4& uX_ABI ref_yzwx() uX_noexcept;

    /**
     * \brief Get reference to _y _w.
     *
     * Gets reference to _y _w elements from vector.
     * \return vector.
     */
    vecfloat2& uX_ABI ref_yw() uX_noexcept;

    /**
     * \brief Get reference to _y _w _x.
     *
     * Gets reference to _y _w _x elements from vector.
     * \return vector.
     */
    vecfloat3& uX_ABI ref_ywx() uX_noexcept;

    /**
     * \brief Get reference to _y _w _y _z.
     *
     * Gets reference to _y _w _y _z elements from vector.
     * \return vector.
     */
    vecfloat4& uX_ABI ref_ywxz() uX_noexcept;

    /**
     * \brief Get reference to _y _w _z.
     *
     * Gets reference to _y _w _z elements from vector.
     * \return vector.
     */
    vecfloat3& uX_ABI ref_ywz() uX_noexcept;

    /**
     * \brief Get reference to _y _w _z _y.
     *
     * Gets reference to _y _w _z _y elements from vector.
     * \return vector.
     */
    vecfloat4& uX_ABI ref_ywzx() uX_noexcept;

    /**
     * \brief Get reference to _z.
     *
     * Gets reference to _z element from vector.
     * \return float.
     */
    float& uX_ABI ref_z() uX_noexcept;

    /**
     * \brief Get reference to _z _x.
     *
     * Gets reference to _z _x elements from vector.
     * \return vector.
     */
    vecfloat2& uX_ABI ref_zx() uX_noexcept;

    /**
     * \brief Get reference to _z _x _y.
     *
     * Gets reference to _z _x _y elements from vector.
     * \return vector.
     */
    vecfloat3& uX_ABI ref_zxy() uX_noexcept;

    /**
     * \brief Get reference to _z _x _y _w.
     *
     * Gets reference to _z _x _y _w elements from vector.
     * \return vector.
     */
    vecfloat4& uX_ABI ref_zxyw() uX_noexcept;

    /**
     * \brief Get reference to _z _x _w.
     *
     * Gets reference to _z _x _w elements from vector.
     * \return vector.
     */
    vecfloat3& uX_ABI ref_zxw() uX_noexcept;

    /**
     * \brief Get reference to _z _x _w _y.
     *
     * Gets reference to _z _x _w _y elements from vector.
     * \return vector.
     */
    vecfloat4& uX_ABI ref_zxwy() uX_noexcept;

    /**
     * \brief Get reference to _z _y.
     *
     * Gets reference to _z _y elements from vector.
     * \return vector.
     */
    vecfloat2& uX_ABI ref_zy() uX_noexcept;

    /**
     * \brief Get reference to _z _y _x.
     *
     * Gets reference to _z _y _x elements from vector.
     * \return vector.
     */
    vecfloat3& uX_ABI ref_zyx() uX_noexcept;

    /**
     * \brief Get reference to _z _y _x _w.
     *
     * Gets reference to _z _y _x _w elements from vector.
     * \return vector.
     */
    vecfloat4& uX_ABI ref_zyxw() uX_noexcept;

    /**
     * \brief Get reference to _z _y _w.
     *
     * Gets reference to _z _y _w elements from vector.
     * \return vector.
     */
    vecfloat3& uX_ABI ref_zyw() uX_noexcept;

    /**
     * \brief Get reference to _z _y _w _x.
     *
     * Gets reference to _z _y _w _xelements from vector.
     * \return vector.
     */
    vecfloat4& uX_ABI ref_zywx() uX_noexcept;

    /**
     * \brief Get reference to _z _w.
     *
     * Gets reference to _z _w elements from vector.
     * \return vector.
     */
    vecfloat2& uX_ABI ref_zw() uX_noexcept;

    /**
     * \brief Get reference to _z _w _x.
     *
     * Gets reference to _z _w _x elements from vector.
     * \return vector.
     */
    vecfloat3& uX_ABI ref_zwx() uX_noexcept;

    /**
     * \brief Get reference to _z _w _x _y.
     *
     * Gets reference to _z _w _x _y elements from vector.
     * \return vector.
     */
    vecfloat4& uX_ABI ref_zwxy() uX_noexcept;

    /**
     * \brief Get reference to _z _w _y.
     *
     * Gets reference to _z _w _y elements from vector.
     * \return vector.
     */
    vecfloat3& uX_ABI ref_zwy() uX_noexcept;

    /**
     * \brief Get reference to _z _w _y _x.
     *
     * Gets reference to _z _w _y _x elements from vector.
     * \return vector.
     */
    vecfloat4& uX_ABI ref_zwyx() uX_noexcept;

    /**
     * \brief Get reference to _w.
     *
     * Gets reference to _w element from vector.
     * \return float.
     */
    float& uX_ABI ref_w() uX_noexcept;

    /**
     * \brief Get reference to _w _x.
     *
     * Gets reference to _w _x elements from vector.
     * \return vector.
     */
    vecfloat2& uX_ABI ref_wx() uX_noexcept;

    /**
     * \brief Get reference to _w _x _y.
     *
     * Gets reference to _w _x _y elements from vector.
     * \return vector.
     */
    vecfloat3& uX_ABI ref_wxy() uX_noexcept;

    /**
     * \brief Get reference to _w _x _y _z.
     *
     * Gets reference to _w _x _y _z elements from vector.
     * \return vector.
     */
    vecfloat4& uX_ABI ref_wxyz() uX_noexcept;

    /**
     * \brief Get reference to _w _x _z.
     *
     * Gets reference to _w _x _z elements from vector.
     * \return vector.
     */
    vecfloat3& uX_ABI ref_wxz() uX_noexcept;

    /**
     * \brief Get reference to _w _x _z _y.
     *
     * Gets reference to _w _x _z _y elements from vector.
     * \return vector.
     */
    vecfloat4& uX_ABI ref_wxzy() uX_noexcept;

    /**
     * \brief Get reference to _w _y.
     *
     * Gets reference to _w _y elements from vector.
     * \return vector.
     */
    vecfloat2& uX_ABI ref_wy() uX_noexcept;

    /**
     * \brief Get reference to _w _y _x.
     *
     * Gets reference to _w _y _x elements from vector.
     * \return vector.
     */
    vecfloat3& uX_ABI ref_wyx() uX_noexcept;

    /**
     * \brief Get reference to _w _y _x _z.
     *
     * Gets reference to _w _y _x _z elements from vector.
     * \return vector.
     */
    vecfloat4& uX_ABI ref_wyxz() uX_noexcept;

    /**
     * \brief Get reference to _w _y _z.
     *
     * Gets reference to _w _y _z elements from vector.
     * \return vector.
     */
    vecfloat3& uX_ABI ref_wyz() uX_noexcept;

    /**
     * \brief Get reference to _w _y _z _x.
     *
     * Gets reference to _w _y _z _x elements from vector.
     * \return vector.
     */
    vecfloat4& uX_ABI ref_wyzx() uX_noexcept;

    /**
     * \brief Get reference to _w _z.
     *
     * Gets reference to _w _z elements from vector.
     * \return vector.
     */
    vecfloat2& uX_ABI ref_wz() uX_noexcept;

    /**
     * \brief Get reference to _w _z _x.
     *
     * Gets reference to _w _z _x elements from vector.
     * \return vector.
     */
    vecfloat3& uX_ABI ref_wzx() uX_noexcept;

    /**
     * \brief Get reference to _w _z _x _y.
     *
     * Gets reference to _w _z _x _y elements from vector.
     * \return vector.
     */
    vecfloat4& uX_ABI ref_wzxy() uX_noexcept;

    /**
     * \brief Get reference to _w _z _y.
     *
     * Gets reference to _w _z _y elements from vector.
     * \return vector.
     */
    vecfloat3& uX_ABI ref_wzy() uX_noexcept;

    /**
     * \brief Get reference to _w _z _y _x
     *
     * Gets reference to _w _z _y _x elements from vector.
     * \return vector.
     */
    vecfloat4& uX_ABI ref_wzyx() uX_noexcept;

    /**
     * \brief Set the vector.
     *
     * Sets all vector elements.
     *
     * \param Inxmm.
     */
    void uX_ABI set(const __m128 Inxmm) uX_noexcept;

    /**
     * \brief Set the vector _x.
     *
     * Sets the vector _x element.
     *
     * \param Infloat_a.
     */
    void uX_ABI set_x(float Infloat_a) uX_noexcept;

    /**
     * \brief Set the vector _x _y.
     *
     * Sets the vector _x _y elements with vecfloat2(_x,_y).
     *
     * \param Inxmm_a.
     */
    void uX_ABI set_xy(const vecfloat2 Inxmm_a) uX_noexcept;

    /**
     * \brief Set the vector _x _y _z.
     *
     * Sets the vector _x _y _z elements with vecfloat3(_x,_y,_z).
     *
     * \param Inxmm_a.
     */
    void uX_ABI set_xyz(const vecfloat3 Inxmm_a) uX_noexcept;

    /**
     * \brief Set the vector _x _y _z _w.
     *
     * Sets the vector _x _y _z _w elements with vecfloat4(_x,_y,_z,_w).
     *
     * \param Inxmm_a.
     */
    void uX_ABI set_xyzw(const vecfloat4 Inxmm_a) uX_noexcept;

    /**
     * \brief Set the vector _x _y _w.
     *
     * Sets the vector _x _y _w elements with vecfloat3(_x,_y,_z).
     *
     * \param Inxmm_a.
     */
    void uX_ABI set_xyw(const vecfloat3 Inxmm_a) uX_noexcept;

    /**
     * \brief Set the vector _x _y _w _z.
     *
     * Sets the vector _x _y _w _z elements with vecfloat4(_x,_y,_z,_w).
     *
     * \param Inxmm_a.
     */
    void uX_ABI set_xywz(const vecfloat4 Inxmm_a) uX_noexcept;

    /**
     * \brief Set the vector _x _z.
     *
     * Sets the vector _x _z elements with vecfloat2(_x,_y).
     *
     * \param Inxmm_a.
     */
    void uX_ABI set_xz(const vecfloat2 Inxmm_a) uX_noexcept;

    /**
     * \brief Set the vector _x _z _y.
     *
     * Sets the vector _x _z _y elements with vecfloat3(_x,_y,_z).
     *
     * \param Inxmm_a.
     */
    void uX_ABI set_xzy(const vecfloat3 Inxmm_a) uX_noexcept;

    /**
     * \brief Set the vector _x _z _y _w.
     *
     * Sets the vector _x _z _y _w elements with vecfloat4(_x,_y,_z,_w).
     *
     * \param Inxmm_a.
     */
    void uX_ABI set_xzyw(const vecfloat4 Inxmm_a) uX_noexcept;

    /**
     * \brief Set the vector _x _z _w.
     *
     * Sets the vector _x _z _w elements with vecfloat3(_x,_y,_z).
     *
     * \param Inxmm_a.
     */
    void uX_ABI set_xzw(const vecfloat3 Inxmm_a) uX_noexcept;

    /**
     * \brief Set the vector _x _z _w _y.
     *
     * Sets the vector _x _z _w _y elements with vecfloat4(_x,_y,_z,_w).
     *
     * \param Inxmm_a.
     */
    void uX_ABI set_xzwy(const vecfloat4 Inxmm_a) uX_noexcept;

    /**
     * \brief Set the vector _x _w.
     *
     * Sets the vector _x _w elements with vecfloat2(_x,_y).
     *
     * \param Inxmm_a.
     */
    void uX_ABI set_xw(const vecfloat2 Inxmm_a) uX_noexcept;

    /**
     * \brief Set the vector _x _w _y.
     *
     * Sets the vector _x _w _y elements with vecfloat3(_x,_y,_z).
     *
     * \param Inxmm_a.
     */
    void uX_ABI set_xwy(const vecfloat3 Inxmm_a) uX_noexcept;

    /**
     * \brief Set the vector _x _w _y _z.
     *
     * Sets the vector _x _w _y _z elements with vecfloat4(_x,_y,_z,_w).
     *
     * \param Inxmm_a.
     */
    void uX_ABI set_xwyz(const vecfloat4 Inxmm_a) uX_noexcept;

    /**
     * \brief Set the vector _x _w _z.
     *
     * Sets the vector _x _w _z elements with vecfloat3(_x,_y,_z).
     *
     * \param Inxmm_a.
     */
    void uX_ABI set_xwz(const vecfloat3 Inxmm_a) uX_noexcept;

    /**
     * \brief Set the vector _x _w _z _y.
     *
     * Sets the vector _x _w _z _y elements with vecfloat4(_x,_y,_z,_w).
     *
     * \param Inxmm_a.
     */
    void uX_ABI set_xwzy(const vecfloat4 Inxmm_a) uX_noexcept;

    /**
     * \brief Set the vector _y.
     *
     * Sets the vector _y element.
     *
     * \param Infloat_a.
     */
    void uX_ABI set_y(float Infloat_a) uX_noexcept;

    /**
     * \brief Set the vector _y _x.
     *
     * Sets the vector _y _x elements with vecfloat2(_x,_y).
     *
     * \param Inxmm_a.
     */
    void uX_ABI set_yx(const vecfloat2 Inxmm_a) uX_noexcept;

    /**
     * \brief Set the vector _y _x _z.
     *
     * Sets the vector _y _x _z elements with vecfloat3(_x,_y,_z).
     *
     * \param Inxmm_a.
     */
    void uX_ABI set_yxz(const vecfloat3 Inxmm_a) uX_noexcept;

    /**
     * \brief Set the vector _y _x _z _w.
     *
     * Sets the vector _y _x _z _w elements with vecfloat4(_x,_y,_z,_w).
     *
     * \param Inxmm_a.
     */
    void uX_ABI set_yxzw(const vecfloat4 Inxmm_a) uX_noexcept;

    /**
     * \brief Set the vector _y _x _w.
     *
     * Sets the vector _y _x _w elements with vecfloat3(_x,_y,_z).
     *
     * \param Inxmm_a.
     */
    void uX_ABI set_yxw(const vecfloat3 Inxmm_a) uX_noexcept;

    /**
     * \brief Set the vector _y _x _w _z.
     *
     * Sets the vector _y _x _w _z elements with vecfloat4(_x,_y,_z,_w).
     *
     * \param Inxmm_a.
     */
    void uX_ABI set_yxwz(const vecfloat4 Inxmm_a) uX_noexcept;

    /**
     * \brief Set the vector _y _z.
     *
     * Sets the vector _y _z elements with vecfloat2(_x,_y).
     *
     * \param Inxmm_a.
     */
    void uX_ABI set_yz(const vecfloat2 Inxmm_a) uX_noexcept;

    /**
     * \brief Set the vector _y _z _x.
     *
     * Sets the vector _y _z _x elements with vecfloat3(_x,_y,_z).
     *
     * \param Inxmm_a.
     */
    void uX_ABI set_yzx(const vecfloat3 Inxmm_a) uX_noexcept;

    /**
     * \brief Set the vector _y _z _x _w.
     *
     * Sets the vector _y _z _x _w elements with vecfloat4(_x,_y,_z,_w).
     *
     * \param Inxmm_a.
     */
    void uX_ABI set_yzxw(const vecfloat4 Inxmm_a) uX_noexcept;

    /**
     * \brief Set the vector _y _z _w.
     *
     * Sets the vector _y _z _w elements with vecfloat3(_x,_y,_z).
     *
     * \param Inxmm_a.
     */
    void uX_ABI set_yzw(const vecfloat3 Inxmm_a) uX_noexcept;

    /**
     * \brief Set the vector _y _z _w _x.
     *
     * Sets the vector _y _z _w _x elements with vecfloat4(_x,_y,_z,_w).
     *
     * \param Inxmm_a.
     */
    void uX_ABI set_yzwx(const vecfloat4 Inxmm_a) uX_noexcept;

    /**
     * \brief Set the vector _y _w.
     *
     * Sets the vector _y _w elements with vecfloat2(_x,_y).
     *
     * \param Inxmm_a.
     */
    void uX_ABI set_yw(const vecfloat2 Inxmm_a) uX_noexcept;

    /**
     * \brief Set the vector _y _w _x.
     *
     * Sets the vector _y _w _x elements with vecfloat3(_x,_y,_z).
     *
     * \param Inxmm_a.
     */
    void uX_ABI set_ywx(const vecfloat3 Inxmm_a) uX_noexcept;

    /**
     * \brief Set the vector _y _w _y _z.
     *
     * Sets the vector _y _w _y _z elements with vecfloat4(_x,_y,_z,_w).
     *
     * \param Inxmm_a.
     */
    void uX_ABI set_ywxz(const vecfloat4 Inxmm_a) uX_noexcept;

    /**
     * \brief Set the vector _y _w _z.
     *
     * Sets the vector _y _w _z elements with vecfloat3(_x,_y,_z).
     *
     * \param Inxmm_a.
     */
    void uX_ABI set_ywz(const vecfloat3 Inxmm_a) uX_noexcept;

    /**
     * \brief Set the vector _y _w _z _y.
     *
     * Sets the vector _y _w _z _y elements with vecfloat4(_x,_y,_z,_w).
     *
     * \param Inxmm_a.
     */
    void uX_ABI set_ywzx(const vecfloat4 Inxmm_a) uX_noexcept;

    /**
     * \brief Set the vector _z.
     *
     * Sets the vector _z element.
     *
     * \param Infloat_a.
     */
    void uX_ABI set_z(float Infloat_a) uX_noexcept;

    /**
     * \brief Set the vector _z _x.
     *
     * Sets the vector _z _x elements with vecfloat2(_x,_y).
     *
     * \param Inxmm_a.
     */
    void uX_ABI set_zx(const vecfloat2 Inxmm_a) uX_noexcept;

    /**
     * \brief Set the vector _z _x _y.
     *
     * Sets the vector _z _x _y elements with vecfloat3(_x,_y,_z).
     *
     * \param Inxmm_a.
     */
    void uX_ABI set_zxy(const vecfloat3 Inxmm_a) uX_noexcept;

    /**
     * \brief Set the vector _z _x _y _w.
     *
     * Sets the vector _z _x _y _w elements with vecfloat4(_x,_y,_z,_w).
     *
     * \param Inxmm_a.
     */
    void uX_ABI set_zxyw(const vecfloat4 Inxmm_a) uX_noexcept;

    /**
     * \brief Set the vector _z _x _w.
     *
     * Sets the vector _z _x _w elements with vecfloat3(_x,_y,_z).
     *
     * \param Inxmm_a.
     */
    void uX_ABI set_zxw(const vecfloat3 Inxmm_a) uX_noexcept;

    /**
     * \brief Set the vector _z _x _w _y.
     *
     * Sets the vector _z _x _w _y elements with vecfloat4(_x,_y,_z,_w).
     *
     * \param Inxmm_a.
     */
    void uX_ABI set_zxwy(const vecfloat4 Inxmm_a) uX_noexcept;

    /**
     * \brief Set the vector _z _y.
     *
     * Sets the vector _z _y elements with vecfloat2(_x,_y).
     *
     * \param Inxmm_a.
     */
    void uX_ABI set_zy(const vecfloat2 Inxmm_a) uX_noexcept;

    /**
     * \brief Set the vector _z _y _x.
     *
     * Sets the vector _z _y _x elements with vecfloat3(_x,_y,_z).
     *
     * \param Inxmm_a.
     */
    void uX_ABI set_zyx(const vecfloat3 Inxmm_a) uX_noexcept;

    /**
     * \brief Set the vector _z _y _x _w.
     *
     * Sets the vector _z _y _x _w elements with vecfloat4(_x,_y,_z,_w).
     *
     * \param Inxmm_a.
     */
    void uX_ABI set_zyxw(const vecfloat4 Inxmm_a) uX_noexcept;

    /**
     * \brief Set the vector _z _y _w.
     *
     * Sets the vector _z _y _w elements with vecfloat3(_x,_y,_z).
     *
     * \param Inxmm_a.
     */
    void uX_ABI set_zyw(const vecfloat3 Inxmm_a) uX_noexcept;

    /**
     * \brief Set the vector _z _y _w.
     *
     * Sets the vector _z _y _w _x elements with vecfloat4(_x,_y,_z,_w).
     *
     * \param Inxmm_a.
     */
    void uX_ABI set_zywx(const vecfloat4 Inxmm_a) uX_noexcept;

    /**
     * \brief Set the vector _z _w.
     *
     * Sets the vector _z _w elements with vecfloat2(_x,_y).
     *
     * \param Inxmm_a.
     */
    void uX_ABI set_zw(const vecfloat2 Inxmm_a) uX_noexcept;

    /**
     * \brief Set the vector _z _w _x.
     *
     * Sets the vector _z _w _x elements with vecfloat3(_x,_y,_z).
     *
     * \param Inxmm_a.
     */
    void uX_ABI set_zwx(const vecfloat3 Inxmm_a) uX_noexcept;

    /**
     * \brief Set the vector _z _w _x _y.
     *
     * Sets the vector _z _w _x _y elements with vecfloat4(_x,_y,_z,_w).
     *
     * \param Inxmm_a.
     */
    void uX_ABI set_zwxy(const vecfloat4 Inxmm_a) uX_noexcept;

    /**
     * \brief Set the vector _z _w _y.
     *
     * Sets the vector _z _w _y elements with vecfloat3(_x,_y,_z).
     *
     * \param Inxmm_a.
     */
    void uX_ABI set_zwy(const vecfloat3 Inxmm_a) uX_noexcept;

    /**
     * \brief Set the vector _z _w _y _x.
     *
     * Sets the vector _z _w _y _x elements with vecfloat4(_x,_y,_z,_w).
     *
     * \param Inxmm_a.
     */
    void uX_ABI set_zwyx(const vecfloat4 Inxmm_a) uX_noexcept;

    /**
     * \brief Set the vector _w.
     *
     * Sets the vector _w element.
     *
     * \param Infloat_a.
     */
    void uX_ABI set_w(float Infloat_a) uX_noexcept;

    /**
     * \brief Set the vector _w _x.
     *
     * Sets the vector _w _x elements with vecfloat2(_x,_y).
     *
     * \param Inxmm_a.
     */
    void uX_ABI set_wx(const vecfloat2 Inxmm_a) uX_noexcept;

    /**
     * \brief Set the vector _w _x _y.
     *
     * Sets the vector _w _x _y elements with vecfloat3(_x,_y,_z).
     *
     * \param Inxmm_a.
     */
    void uX_ABI set_wxy(const vecfloat3 Inxmm_a) uX_noexcept;

    /**
     * \brief Set the vector _w _x _y _z.
     *
     * Sets the vector _w _x _y _z elements with vecfloat4(_x,_y,_z,_w).
     *
     * \param Inxmm_a.
     */
    void uX_ABI set_wxyz(const vecfloat4 Inxmm_a) uX_noexcept;

    /**
     * \brief Set the vector _w _x _z.
     *
     * Sets the vector _w _x _z elements with vecfloat3(_x,_y,_z).
     *
     * \param Inxmm_a.
     */
    void uX_ABI set_wxz(const vecfloat3 Inxmm_a) uX_noexcept;

    /**
     * \brief Set the vector _w _x _z _y.
     *
     * Sets the vector _w _x _z _y elements with vecfloat4(_x,_y,_z,_w).
     *
     * \param Inxmm_a.
     */
    void uX_ABI set_wxzy(const vecfloat4 Inxmm_a) uX_noexcept;

    /**
     * \brief Set the vector _w _y.
     *
     * Sets the vector _w _y elements with vecfloat2(_x,_y).
     *
     * \param Inxmm_a.
     */
    void uX_ABI set_wy(const vecfloat2 Inxmm_a) uX_noexcept;

    /**
     * \brief Set the vector _w _y _x.
     *
     * Sets the vector _w _y _x elements with vecfloat3(_x,_y,_z).
     *
     * \param Inxmm_a.
     */
    void uX_ABI set_wyx(const vecfloat3 Inxmm_a) uX_noexcept;

    /**
     * \brief Set the vector _w _y _x _z.
     *
     * Sets the vector _w _y _x _z elements with vecfloat4(_x,_y,_z,_w).
     *
     * \param Inxmm_a.
     */
    void uX_ABI set_wyxz(const vecfloat4 Inxmm_a) uX_noexcept;

    /**
     * \brief Set the vector _w _y _z.
     *
     * Sets the vector _w _y _z elements with vecfloat3(_x,_y,_z).
     *
     * \param Inxmm_a.
     */
    void uX_ABI set_wyz(const vecfloat3 Inxmm_a) uX_noexcept;

    /**
     * \brief Set the vector _w _y _z _x.
     *
     * Sets the vector _w _y _z _x elements with vecfloat4(_x,_y,_z,_w).
     *
     * \param Inxmm_a.
     */
    void uX_ABI set_wyzx(const vecfloat4 Inxmm_a) uX_noexcept;

    /**
     * \brief Set the vector _w _z.
     *
     * Sets the vector _w _z elements with vecfloat2(_x,_y).
     *
     * \param Inxmm_a.
     */
    void uX_ABI set_wz(const vecfloat2 Inxmm_a) uX_noexcept;

    /**
     * \brief Set the vector _w _z _x.
     *
     * Sets the vector _w _z _x elements with vecfloat3(_x,_y,_z).
     *
     * \param Inxmm_a.
     */
    void uX_ABI set_wzx(const vecfloat3 Inxmm_a) uX_noexcept;

    /**
     * \brief Set the vector _w _z _x _y.
     *
     * Sets the vector _w _z _x _y elements with vecfloat4(_x,_y,_z,_w).
     *
     * \param Inxmm_a.
     */
    void uX_ABI set_wzxy(const vecfloat4 Inxmm_a) uX_noexcept;

    /**
     * \brief Set the vector _w _z _y.
     *
     * Sets the vector _w _z _y elements with vecfloat3(_x,_y,_z).
     *
     * \param Inxmm_a.
     */
    void uX_ABI set_wzy(const vecfloat3 Inxmm_a) uX_noexcept;

    /**
     * \brief Set the vector _w _z _y _x.
     *
     * Sets the vector _w _z _y _x elements with vecfloat4(_x,_y,_z,_w).
     *
     * \param Inxmm_a.
     */
    void uX_ABI set_wzyx(const vecfloat4 Inxmm_a) uX_noexcept;

    /* Bitwise Operators */

    /**
     * \brief Bitwise function ANDNOT.
     *
     * Performs the compute and not from the 2 parameters.
     *
     * \param Inxmm_a.
     * \param Inxmm_b.
     */
    friend uX_API vecfloat4 uX_ABI andnot(const vecfloat4 Inxmm_a, const vecfloat4 Inxmm_b) uX_noexcept;

    /**
     * \brief Bitwise operator AND.
     *
     * Performs the compute and from the 2 parameters.
     *
     * \param Inxmm_a.
     * \param Inxmm_b.
     */
    friend uX_API vecfloat4 uX_ABI operator&(const vecfloat4 Inxmm_a, const vecfloat4 Inxmm_b) uX_noexcept;

    /**
     * \brief Bitwise operator OR.
     *
     * Performs the compute or from the 2 parameters.
     *
     * \param Inxmm_a.
     * \param Inxmm_b.
     */
    friend uX_API vecfloat4 uX_ABI operator|(const vecfloat4 Inxmm_a, const vecfloat4 Inxmm_b) uX_noexcept;

    /**
     * \brief Bitwise operator XOR.
     *
     * Performs the compute xor from the 2 parameters.
     *
     * \param Inxmm_a.
     * \param Inxmm_b.
     */
    friend uX_API vecfloat4 uX_ABI operator^(const vecfloat4 Inxmm_a, const vecfloat4 Inxmm_b) uX_noexcept;

    /**
     * \brief Bitwise operator NOT.
     *
     * Performs the compute not from the 2 parameters.
     *
     * \param Inxmm_a.
     * \param Inxmm_b.
     */
    friend uX_API vecfloat4 uX_ABI operator~(const vecfloat4 Inxmm_a) uX_noexcept;

    /* Logical Operators */

    /**
     * \brief Logical function ANDNOT.
     *
     * Performs the compute and not from the 2 parameters.
     *
     * \param Inxmm_a.
     * \param Inxmm_b.
     * \return boolean integer.
     */
    friend uX_API bool_t uX_ABI bandnot(const vecfloat4 Inxmm_a, const vecfloat4 Inxmm_b) uX_noexcept;

    /**
     * \brief Logical operator AND.
     *
     * Performs the compute and from the 2 parameters.
     *
     * \param Inxmm_a.
     * \param Inxmm_b.
     * \return boolean integer.
     */
    friend uX_API bool_t uX_ABI operator&&(const vecfloat4 Inxmm_a, const vecfloat4 Inxmm_b) uX_noexcept;

    /**
     * \brief Logical operator OR.
     *
     * Performs the compute OR from the 2 parameters.
     *
     * \param Inxmm_a.
     * \param Inxmm_b.
     * \return boolean integer.
     */
    friend uX_API bool_t uX_ABI operator||(const vecfloat4 Inxmm_a, const vecfloat4 Inxmm_b) uX_noexcept;

    /**
     * \brief Logical operator NOT.
     *
     * Performs the compute not from the 1 parameter.
     *
     * \param Inxmm_a.
     * \return boolean integer.
     */
    friend uX_API bool_t uX_ABI operator!(const vecfloat4 Inxmm_a) uX_noexcept;

    /**
     * \brief Logical function HORIZONTAL AND.
     *
     * Performs the compute horizontal and in all bits from the parameter. Returns true if all bits are 1.
     *
     * \param Inxmm_a.
     * \return boolean integer.
     */
    friend uX_API bool_t uX_ABI horizontal_and(const vecfloat4 Inxmm_a) uX_noexcept;

    /**
     * \brief Logical function HORIZONTAL OR.
     *
     * Performs the compute horizontal or in all bits from the parameter. Returns true if at least one bit is 1.
     *
     * \param Inxmm_a.
     * \return boolean integer.
     */
    friend uX_API bool_t uX_ABI horizontal_or(const vecfloat4 Inxmm_a) uX_noexcept;

    /**
     * \brief Logical operator assignment AND.
     *
     * Performs the compute and from the 2 parameters, and assigns to first parameter.
     *
     * \param Inxmm_a.
     * \param Inxmm_b.
     */
    friend uX_API vecfloat4& uX_ABI operator&=(vecfloat4& Inxmm_a, const vecfloat4 Inxmm_b) uX_noexcept;

    /**
     * \brief Logical operator assignment OR.
     *
     * Performs the compute or from the 2 parameters, and assigns to first parameter.
     *
     * \param Inxmm_a.
     * \param Inxmm_b.
     */
    friend uX_API vecfloat4& uX_ABI operator|=(vecfloat4& Inxmm_a, const vecfloat4 Inxmm_b) uX_noexcept;

    /**
     * \brief Logical operator assignment XOR.
     *
     * Performs the compute xor from the 2 parameters, and assigns to first parameter.
     *
     * \param Inxmm_a.
     * \param Inxmm_b.
     */
    friend uX_API vecfloat4& uX_ABI operator^=(vecfloat4& Inxmm_a, const vecfloat4 Inxmm_b) uX_noexcept;

    /* Arithmetic Operators */

    /**
     * \brief Arithmetic operator addition.
     *
     * Performs the compute addition from the 2 parameters.
     *
     * \param Inxmm_a.
     * \param Inxmm_b.
     */
    friend uX_API vecfloat4 uX_ABI operator+(const vecfloat4 Inxmm_a, const vecfloat4 Inxmm_b) uX_noexcept;

    /**
     * \brief Arithmetic operator subtraction.
     *
     * Performs the compute subtraction from the 2 parameters.
     *
     * \param Inxmm_a.
     * \param Inxmm_b.
     */
    friend uX_API vecfloat4 uX_ABI operator-(const vecfloat4 Inxmm_a, const vecfloat4 Inxmm_b) uX_noexcept;

    /**
     * \brief Arithmetic operator multiplication.
     *
     * Performs the compute multiplication from the 2 parameters.
     *
     * \param Inxmm_a.
     * \param Inxmm_b.
     */
    friend uX_API vecfloat4 uX_ABI operator*(const vecfloat4 Inxmm_a, const vecfloat4 Inxmm_b) uX_noexcept;

    /**
     * \brief Arithmetic operator division.
     *
     * Performs the compute division from the 2 parameters.
     *
     * \param Inxmm_a.
     * \param Inxmm_b.
     */
    friend uX_API vecfloat4 uX_ABI operator/(const vecfloat4 Inxmm_a, const vecfloat4 Inxmm_b) uX_noexcept;

    /**
     * \brief Arithmetic operator addition.
     *
     * Performs the compute addition from the 2 parameters, and assigns to first parameter.
     *
     * \param Inxmm_a.
     * \param Inxmm_b.
     */
    friend uX_API vecfloat4& uX_ABI operator+=(vecfloat4& Inxmm_a, const vecfloat4 Inxmm_b) uX_noexcept;

    /**
     * \brief Arithmetic operator subtraction.
     *
     * Performs the compute subtraction from the 2 parameters, and assigns to first parameter.
     *
     * \param Inxmm_a.
     * \param Inxmm_b.
     */
    friend uX_API vecfloat4& uX_ABI operator-=(vecfloat4& Inxmm_a, const vecfloat4 Inxmm_b) uX_noexcept;

    /**
     * \brief Arithmetic operator multiplication.
     *
     * Performs the compute multiplication from the 2 parameters, and assigns to first parameter.
     *
     * \param Inxmm_a.
     * \param Inxmm_b.
     */
    friend uX_API vecfloat4& uX_ABI operator*=(vecfloat4& Inxmm_a, const vecfloat4 Inxmm_b) uX_noexcept;

    /**
     * \brief Arithmetic operator division.
     *
     * Performs the compute division from the 2 parameters, and assigns to first parameter.
     *
     * \param Inxmm_a.
     * \param Inxmm_b.
     */
    friend uX_API vecfloat4& uX_ABI operator/=(vecfloat4& Inxmm_a, const vecfloat4 Inxmm_b) uX_noexcept;

    /* Unary Operators */

    /**
     * \brief Unary prefix increment operator.
     *
     * Performs the compute prefix increment.
     *
     * \param Inxmm_a.
     */
    friend uX_API vecfloat4& uX_ABI operator++(vecfloat4& Inxmm_a) uX_noexcept;

    /**
     * \brief Unary prefix decrement operator.
     *
     * Performs the compute prefix increment.
     *
     * \param Inxmm_a.
     */
    friend uX_API vecfloat4& uX_ABI operator--(vecfloat4& Inxmm_a) uX_noexcept;

    /**
     * \brief Unary postfix increment operator.
     *
     * Performs the compute postfix increment.
     *
     * \param Inxmm_a.
     */
    friend uX_API vecfloat4 uX_ABI operator++(vecfloat4& Inxmm_a, int) uX_noexcept;

    /**
     * \brief Unary postfix decrement operator.
     *
     * Performs the compute postfix increment.
     *
     * \param Inxmm_a.
     */
    friend uX_API vecfloat4 uX_ABI operator--(vecfloat4& Inxmm_a, int) uX_noexcept;

    /**
     * \brief Unary minus operator.
     *
     * Performs the compute minus. Change sign bit, even for 0, INF and NAN.
     *
     * \param Inxmm_a.
     */
    friend uX_API vecfloat4 uX_ABI operator-(const vecfloat4 Inxmm_a) uX_noexcept;

    /* Comparison Operators */

    /**
     * \brief Comparison operator equal.
     *
     * Performs the compute equality from the 2 parameters.
     *
     * \param Inxmm_a.
     * \param Inxmm_b.
     */
    friend uX_API vecfloat4 uX_ABI operator==(const vecfloat4 Inxmm_a, const vecfloat4 Inxmm_b) uX_noexcept;

    /**
     * \brief Comparison operator less than.
     *
     * Performs the compute less than from the 2 parameters.
     *
     * \param Inxmm_a.
     * \param Inxmm_b.
     */
    friend uX_API vecfloat4 uX_ABI operator<(const vecfloat4 Inxmm_a, const vecfloat4 Inxmm_b) uX_noexcept;

    /**
     * \brief Comparison operator less than or equal.
     *
     * Performs the compute less than or equal from the 2 parameters.
     *
     * \param Inxmm_a.
     * \param Inxmm_b.
     */
    friend uX_API vecfloat4 uX_ABI operator<=(const vecfloat4 Inxmm_a, const vecfloat4 Inxmm_b) uX_noexcept;

    /**
     * \brief Comparison operator greater than.
     *
     * Performs the compute greater than from the 2 parameters.
     *
     * \param Inxmm_a.
     * \param Inxmm_b.
     */
    friend uX_API vecfloat4 uX_ABI operator>(const vecfloat4 Inxmm_a, const vecfloat4 Inxmm_b) uX_noexcept;

    /**
     * \brief Comparison operator greater than or equal.
     *
     * Performs the compute greater than or equal from the 2 parameters.
     *
     * \param Inxmm_a.
     * \param Inxmm_b.
     */
    friend uX_API vecfloat4 uX_ABI operator>=(const vecfloat4 Inxmm_a, const vecfloat4 Inxmm_b) uX_noexcept;

    /**
     * \brief Comparison operator not equal.
     *
     * Performs the compute not equal from the 2 parameters.
     *
     * \param Inxmm_a.
     * \param Inxmm_b.
     */
    friend uX_API vecfloat4 uX_ABI operator!=(const vecfloat4 Inxmm_a, const vecfloat4 Inxmm_b) uX_noexcept;

    /**
     * \brief Load unaligned.
     *
     * Performs load from type float* unaligned.
     *
     * \param Inpfloat pointer value to copy from.
     */
    vecfloat4& uX_ABI load(uX_InReads(4) const float* Inpfloat) uX_noexcept;

    /**
     * \brief Load aligned.
     *
     * Performs load from type float* aligned.
     *
     * \warning It must be aligned by 16.
     *
     * \param Inpfloat pointer value to copy from.
     */
    vecfloat4& uX_ABI load_a(uX_InReads(4) const float* Inpfloat) uX_noexcept;

    /**
     * \brief Store function unaligned.
     *
     * Performs store to type float* unaligned.
     *
     * \param Outpfloat pointer value to store to.
     */
    void uX_ABI store(uX_OutWrites(4) float* Outpfloat) const uX_noexcept;

    /**
     * \brief Store function aligned.
     *
     * Performs store to type float* aligned.
     *
     * \warning It must be aligned by 16.
     *
     * \param Outpfloat pointer value to store to.
     */
    void uX_ABI store_a(uX_OutWrites(4) float* Outpfloat) const uX_noexcept;

    /**
     * \brief Insert function.
     *
     * Performs insert from type float on the mask index.
     *
     * \param value float to copy from.
     * \param index element to set.
     * \return vector
     */
    const vecfloat4 uX_ABI insert(float value, uint32_t index) uX_noexcept;

    /**
     * \brief Extract function.
     *
     * Performs extract element from mask index.
     *
     * \param index element to get.
     * \return float
     */
    float uX_ABI extract(uint32_t index) const uX_noexcept;

    /**
     * \brief Set all elements to zero.
     */
    vecfloat4& uX_ABI zero() uX_noexcept;

    /**
     * \brief Cut off vector to n elements.
     *
     * Performs the cut off vector to n elements.
     * The last 4-n elements are set to zero.
     *
     * \param indexN element's to cut.
     */
    vecfloat4& uX_ABI cutoff(uint32_t indexN) uX_noexcept;

    /**
     * \brief Flip Sign function.
     *
     * Performs the flip sign off vector on all elements.
     *
     * \param Inxmm_a the vector to flip sign.
     * \return vector.
     */
    friend uX_API vecfloat4 uX_ABI flip_sign(const vecfloat4 Inxmm_a) uX_noexcept;

    /**
     * \brief Test if all elements if is zero.
     *
     * Performs the test if all elements are zero.
     *
     * \param Inxmm_a the vector to test.
     * \return boolean integer.
     */
    friend uX_API bool_t uX_ABI is_zero(const vecfloat4 Inxmm_a) uX_noexcept;

    /**
     * \brief Select between two operands.
     *
     * Performs the selection between two operands.
     * The first vector is boolean vector mask that chooses between the elements of the second and the third vector.
     * Corresponds to this pseudo code:
     *  for (int i () const uX_noexcept { return 0; i < 4; i++) result[i] () const uX_noexcept { return s[i] ? a[i] : b[i];
     *
     * \param Inxmm_f the boolean vector mask.
     * \param Inxmm_a the a vector to select.
     * \param Inxmm_b the b vector to select.
     * \return the selected vector elements.
     */
    friend uX_API vecfloat4 uX_ABI select(const vecfloat4 Inxmm_f, const vecfloat4 Inxmm_a, const vecfloat4 Inxmm_b) uX_noexcept;

    /**
     * \brief Conditional add.
     *
     * Performs the conditional add in all elements selected by the first boolean vector mask on the second and third vector elements.
     * Corresponds to this pseudo code:
     *  result[i] () const uX_noexcept { return f[i] ? (a[i] + b[i]) : a[i]
     *
     * \param Inxmm_f the boolean vector mask.
     * \param Inxmm_a the a vector to add.
     * \param Inxmm_b the b vector to add.
     * \return the selected vector addition.
     */
    friend uX_API vecfloat4 uX_ABI if_add(const vecfloat4 Inxmm_f, const vecfloat4 Inxmm_a, const vecfloat4 Inxmm_b) uX_noexcept;

    /**
     * \brief Conditional subtract.
     *
     * Performs the conditional subtract in all elements selected by the first boolean vector mask on the second and third vector elements.
     * Corresponds to this pseudo code:
     *  result[i] () const uX_noexcept { return f[i] ? (a[i] - b[i]) : a[i]
     *
     * \param Inxmm_f the boolean vector mask.
     * \param Inxmm_a the a vector to subtract.
     * \param Inxmm_b the b vector to subtract.
     * \return the selected vector subtraction.
     */
    friend uX_API vecfloat4 uX_ABI if_sub(const vecfloat4 Inxmm_f, const vecfloat4 Inxmm_a, const vecfloat4 Inxmm_b) uX_noexcept;

    /**
     * \brief Conditional multiply.
     *
     * Performs the conditional multiply in all elements selected by the first boolean vector mask on the second and third vector elements.
     * Corresponds to this pseudo code:
     *  result[i] () const uX_noexcept { return f[i] ? (a[i] * b[i]) : a[i]
     *
     * \param Inxmm_f the boolean vector mask.
     * \param Inxmm_a the a vector to multiply.
     * \param Inxmm_b the b vector to multiply.
     * \return the selected vector multiplication.
     */
    friend uX_API vecfloat4 uX_ABI if_mul(const vecfloat4 Inxmm_f, const vecfloat4 Inxmm_a, const vecfloat4 Inxmm_b) uX_noexcept;

    /**
     * \brief Conditional multiply.
     *
     * Performs the conditional divide in all elements selected by the first boolean vector mask on the second and third vector elements.
     * Corresponds to this pseudo code:
     *  result[i] () const uX_noexcept { return f[i] ? (a[i] / b[i]) : a[i]
     *
     * \param Inxmm_f the boolean vector mask.
     * \param Inxmm_a the a vector to divide.
     * \param Inxmm_b the b vector to divide.
     * \return the selected vector division.
     */
    friend uX_API vecfloat4 uX_ABI if_div(const vecfloat4 Inxmm_f, const vecfloat4 Inxmm_a, const vecfloat4 Inxmm_b) uX_noexcept;

    /**
     * \brief Sign bit.
     *
     * Gives true for elements that have the sign bit set.
     * Note that sign_bit(vecfloat4(-0.0f)) gives true, while vecfloat4(-0.0f) < vecfloat4(0.0f) gives false.
     *
     * \param Inxmm_a the a vector.
     * \return vector.
     */
    friend uX_API vecfloat4 uX_ABI sign_bit(const vecfloat4 Inxmm_a) uX_noexcept;

    /**
     * \brief Sign combine.
     *
     * Changes the sign of a when b has the sign bit set.
     * Same as select(sign_bit(b), -a, a)
     *
     * \param Inxmm_a the a vector.
     * \param Inxmm_b the b vector.
     * \return vector.
     */
    friend uX_API vecfloat4 uX_ABI sign_combine(const vecfloat4 Inxmm_a, const vecfloat4 Inxmm_b) uX_noexcept;

    /**
     * \brief Is finite.
     *
     * Gives true for elements that are normal, denormal or zero, false for INF and NAN.
     *
     * \param Inxmm_a the a vector.
     * \return vector.
     */
    friend uX_API vecfloat4 uX_ABI is_finite(const vecfloat4 Inxmm_a) uX_noexcept;

    /**
     * \brief Is inf.
     *
     * Gives true for elements that are +INF or -INF, false for finite numbers and NAN.
     *
     * \param Inxmm_a the a vector.
     * \return vector.
     */
    friend uX_API vecfloat4 uX_ABI is_inf(const vecfloat4 Inxmm_a) uX_noexcept;

    /**
     * \brief Is nan.
     *
     * Gives true for elements that are +NAN or -NAN, false for finite numbers and +/-INF.
     *
     * \param Inxmm_a the a vector.
     * \return vector.
     */
    friend uX_API vecfloat4 uX_ABI is_nan(const vecfloat4 Inxmm_a) uX_noexcept;

    /**
     * \brief Is subnormal.
     *
     * Gives true for elements that are denormal (subnormal), false for finite numbers, zero, NAN and INF.
     *
     * \param Inxmm_a the a vector.
     * \return vector.
     */
    friend uX_API vecfloat4 uX_ABI is_subnormal(const vecfloat4 Inxmm_a) uX_noexcept;

    /**
     * \brief Is zero or subnormal.
     *
     * Gives true for elements that are zero or subnormal (denormal), false for finite numbers, NAN and INF.
     *
     * \param Inxmm_a the a vector.
     * \return vector.
     */
    friend uX_API vecfloat4 uX_ABI is_zero_or_subnormal(const vecfloat4 Inxmm_a) uX_noexcept;

    /**
     * \brief Infinite.
     *
     * \return a vector where all elements are +INF.
     */
    vecfloat4& uX_ABI infinite() uX_noexcept;

    /**
     * \brief Nan.
     *
     * \return a vector where all elements are NAN (quiet).
     */
    vecfloat4& uX_ABI nan() uX_noexcept;

    /**
     * \brief Is Horizontal add.
     *
     * Calculates the sum of all vector elements.
     *
     * \param Inxmm_a the a vector.
     * \return float.
     */
    friend uX_API float uX_ABI horizontal_add(const vecfloat4 Inxmm_a) uX_noexcept;

    /**
     * \brief Horizontal mull.
     *
     * Calculates the multiplication of all vector elements.
     *
     * \param Inxmm_a the a vector.
     * \return float.
     */
    friend uX_API float uX_ABI horizontal_mul(const vecfloat4 Inxmm_a) uX_noexcept;

    /**
     * \brief Max.
     *
     * Computes the max a > b ? a : b.
     *
     * \param Inxmm_a the a vector.
     * \param Inxmm_b the b vector.
     * \return vector.
     */
    friend uX_API vecfloat4 uX_ABI max(const vecfloat4 Inxmm_a, const vecfloat4 Inxmm_b) uX_noexcept;

    /**
     * \brief Min.
     *
     * Computes the min a < b ? a : b.
     *
     * \param Inxmm_a the a vector.
     * \param Inxmm_b the b vector.
     * \return vector.
     */
    friend uX_API vecfloat4 uX_ABI min(const vecfloat4 Inxmm_a, const vecfloat4 Inxmm_b) uX_noexcept;

    /**
     * \brief Abs.
     *
     * Computes the absolute value.
     *
     * \param Inxmm_a the a vector..
     * \return vector.
     */
    friend uX_API vecfloat4 uX_ABI abs(const vecfloat4 Inxmm_a) uX_noexcept;

    /**
     * \brief Square.
     *
     * Computes the a * a.
     *
     * \param Inxmm_a the a vector.
     * \return vector.
     */
    friend uX_API vecfloat4 uX_ABI square(const vecfloat4 Inxmm_a) uX_noexcept;

    /**
     * \brief Scale.
     *
     * Computes the a * s.
     *
     * \param Inxmm_a the a vector.
     * \param Infloat_s the float scale factor.
     * \return vector.
     */
    friend uX_API vecfloat4 uX_ABI scale(const vecfloat4 Inxmm_a, float Infloat_s) uX_noexcept;

    /**
     * \brief rcpest.
     *
     * Computes the estimates reciprocal.
     *
     * \param Inxmm_a the a vector.
     * \return vector.
     */
    friend uX_API vecfloat4 uX_ABI rcpest(const vecfloat4 Inxmm_a) uX_noexcept;

    /**
     * \brief rcp.
     *
     * Computes the reciprocal.
     *
     * \param Inxmm_a the a vector.
     * \return vector.
     */
    friend uX_API vecfloat4 uX_ABI rcp(const vecfloat4 Inxmm_a) uX_noexcept;

    /**
     * \brief sqrtest.
     *
     * Computes the estimates square root.
     *
     * \param Inxmm_a the a vector.
     * \return vector.
     */
    friend uX_API vecfloat4 uX_ABI sqrtest(const vecfloat4 Inxmm_a) uX_noexcept;

    /**
     * \brief sqrt.
     *
     * Computes the square root.
     *
     * \param Inxmm_a the a vector.
     * \return vector.
     */
    friend uX_API vecfloat4 uX_ABI sqrt(const vecfloat4 Inxmm_a) uX_noexcept;

    /**
     * \brief rsqrtest.
     *
     * Computes the estimates reciprocal square root.
     *
     * \param Inxmm_a the a vector.
     * \return vector.
     */
    friend uX_API vecfloat4 uX_ABI rsqrtest(const vecfloat4 Inxmm_a) uX_noexcept;

    /**
     * \brief rsqrt.
     *
     * Computes the reciprocal square root.
     *
     * \param Inxmm_a the a vector.
     * \return vector.
     */
    friend uX_API vecfloat4 uX_ABI rsqrt(const vecfloat4 Inxmm_a) uX_noexcept;

protected:

private:
    union
    {
        __m128          m128_xmm;
        struct
        {
            float _x, _y, _z, _w;
        };
        float          m128_f[4];
    };

public:
    uX_const uint32_t uX_ABI m128_xmm_size          () const uX_noexcept { return 16; }
    uX_const uint32_t uX_ABI m128_xmm_flt_elements  () const uX_noexcept { return 4; }
    uX_const uint32_t uX_ABI m128_flt_ptr_lenght    () const uX_noexcept { return 4; }
    uX_const uint32_t uX_ABI m128_flt_ptr_size      () const uX_noexcept { return 16; }
    uX_const uint32_t uX_ABI m128_flt_size          () const uX_noexcept { return 4; }

}vecfloat4_t;

uX_PACK_POP
EXTERN_CC_END
namespace_XMM_end
namespace_uX_end

#ifndef uX_XMM_VECFLOAT3_H
#include "uXxmmvecfloat3.h"
#endif  /* uX_XMM_VECFLOAT3_H */

#ifndef uX_XMM_VECFLOAT2_H
#include "uXxmmvecfloat2.h"
#endif  /* uX_XMM_VECFLOAT2_H */

#ifndef uX_XMM_VECFLOAT1_H
#include "uXxmmvecfloat1.h"
#endif  /* uX_XMM_VECFLOAT1_H */

#ifndef uX_XMM_VECDOUBLE2_H
#include "uXxmmvecdouble2.h"
#endif  /* uX_XMM_VECDOUBLE2_H */

#ifndef uX_XMM_VECDWORD4_H
#include "uXxmmvecdword4.h"
#endif  /* uX_XMM_VECDWORD4_H */

#ifndef uX_XMM_VECUDWORD4_H
#include "uXxmmvecudword4.h"
#endif  /* uX_XMM_VECUDWORD4_H */

#ifndef uX_XMM_VECQWORD2_H
#include "uXxmmvecqword2.h"
#endif  /* uX_XMM_VECQWORD2_H */

#ifndef uX_XMM_VECUQWORD2_H
#include "uXxmmvecuqword2.h"
#endif  /* uX_XMM_VECUQWORD2_H */

#endif // uX_SSE

#endif /*defined(uX_INTRINSICS_SUPPORT) && defined(uX_X86_OR_X64_CPU) && !defined(uX_NO_INTRINSICS_SUPPORT)*/

#endif // uX_XMM_VECFLOAT4_H
