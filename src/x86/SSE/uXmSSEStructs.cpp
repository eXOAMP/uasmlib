
#include "uXmSSEStructs.h"
#include "uXmxmmintrin.h"

uXm_EXTERNC_BEGIN

uXm_PACK_PUSH16

// __uXm128f START
__uXm128f::__uXm128f(const __uXm128 InXmm)
{
	_uXm_m128f_store_m128_ps(this, InXmm);
}

__uXm128f::__uXm128f(const __m128 InXmm)
{
	_uXm_m128f_store_cm128_ps(this, InXmm);
}

__uXm128f::__uXm128f(const float* Infloat)
{
	_uXm_m128f_storeu_Pfloat_ps(this, Infloat);
}

__uXm128f::operator __uXm128(void) const
{
	return _uXm_m128_move_m128f_ps(*this);
}

__uXm128f::operator __m128(void) const
{
	return _uXm_cm128_move_m128f_ps(*this);
}

__uXm128f::operator float*(void) const
{
	return _uXm_Pfloat_moveu_m128f_ps(*this);
}
// __uXm128f END

// __uXm128 START
__uXm128::__uXm128(const __uXm128f InXmm)
{
	_uXm_m128_store_m128f_ps(this, InXmm);
}

__uXm128::__uXm128(const __m128 InXmm)
{
	_uXm_m128_store_cm128_ps(this, InXmm);
}

__uXm128::__uXm128(const float* Infloat)
{
	_uXm_m128_storeu_Pfloat_ps(this, Infloat);
}

__uXm128::operator __uXm128f(void) const
{
	return _uXm_m128f_move_m128_ps(*this);
}

__uXm128::operator __m128(void) const
{
	return _uXm_cm128_move_m128_ps(*this);
}

__uXm128::operator float*(void) const
{
	return _uXm_Pfloat_moveu_m128_ps(*this);
}
// __uXm128 END

uXm_PACK_POP

uXm_EXTERNC_END