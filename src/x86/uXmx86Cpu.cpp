#include "uXmx86Cpu.h"

uXm_EXTERNC_BEGIN

uXm_PACK_PUSH_SIZET

uXmCPUFeatures::uXmCPUFeatures(int infolevel)
{
	_uXmCPUFeatures_Init(infolevel);
}

uXmCPUFeatures::~uXmCPUFeatures(void)
{
	_uXmCPUFeatures_Destroy();
}

uXm_PACK_POP

uXm_PACK_PUSH4

const int uXm_callconv uXmCPUFeatures::intrinset(void)
{
	return _uXmCPUFeatures_intrinset();
}

uXm_PACK_POP

uXm_PACK_PUSH1

/* %eax=00H, %ecx */
const unsigned __int8 uXm_callconv uXmCPUFeatures::is_Intel(void)
{	
	return _uXmCPUFeatures_is_Intel();
}

const unsigned __int8 uXm_callconv uXmCPUFeatures::is_AMD(void)
{
	return _uXmCPUFeatures_is_AMD();
}

/* %eax=01H, %ecx */
const unsigned __int8 uXm_callconv uXmCPUFeatures::has_SSE3(void)
{
	return _uXmCPUFeatures_has_SSE3();
}

const unsigned __int8 uXm_callconv uXmCPUFeatures::has_PCLMULQDQ(void)
{
	return _uXmCPUFeatures_has_PCLMULQDQ();
}

const unsigned __int8 uXm_callconv uXmCPUFeatures::has_MONITOR(void)
{
	return _uXmCPUFeatures_has_MONITOR();
}

const unsigned __int8 uXm_callconv uXmCPUFeatures::has_SSSE3(void)
{
	return _uXmCPUFeatures_has_SSSE3();
}

const unsigned __int8 uXm_callconv uXmCPUFeatures::has_FMA(void)
{
	return _uXmCPUFeatures_has_FMA();
}

const unsigned __int8 uXm_callconv uXmCPUFeatures::has_CMPXCHG16B(void)
{
	return _uXmCPUFeatures_has_CMPXCHG16B();
}

const unsigned __int8 uXm_callconv uXmCPUFeatures::has_SSE41(void)
{
	return _uXmCPUFeatures_has_SSE41();
}

const unsigned __int8 uXm_callconv uXmCPUFeatures::has_SSE42(void)
{
	return _uXmCPUFeatures_has_SSE42();
}

const unsigned __int8 uXm_callconv uXmCPUFeatures::has_MOVBE(void)
{
	return _uXmCPUFeatures_has_MOVBE();
}

const unsigned __int8 uXm_callconv uXmCPUFeatures::has_POPCNT(void)
{
	return _uXmCPUFeatures_has_POPCNT();
}

const unsigned __int8 uXm_callconv uXmCPUFeatures::has_AES(void)
{
	return _uXmCPUFeatures_has_AES();
}

const unsigned __int8 uXm_callconv uXmCPUFeatures::has_XSAVE(void)
{
	return _uXmCPUFeatures_has_XSAVE();
}

const unsigned __int8 uXm_callconv uXmCPUFeatures::has_OSXSAVE(void)
{
	return _uXmCPUFeatures_has_OSXSAVE();
}

const unsigned __int8 uXm_callconv uXmCPUFeatures::has_AVX(void)
{
	return _uXmCPUFeatures_has_AVX();
}

const unsigned __int8 uXm_callconv uXmCPUFeatures::has_F16C(void)
{
	return _uXmCPUFeatures_has_F16C();
}

const unsigned __int8 uXm_callconv uXmCPUFeatures::has_RDRAND(void)
{
	return _uXmCPUFeatures_has_RDRAND();
}

/* %eax=01H, %edx */
const unsigned __int8 uXm_callconv uXmCPUFeatures::has_FPU(void)
{
	return _uXmCPUFeatures_has_FPU();
}

const unsigned __int8 uXm_callconv uXmCPUFeatures::has_TSC(void)
{
	return _uXmCPUFeatures_has_TSC();
}

const unsigned __int8 uXm_callconv uXmCPUFeatures::has_MSR(void)
{
	return _uXmCPUFeatures_has_MSR();
}

const unsigned __int8 uXm_callconv uXmCPUFeatures::has_CMPXCHG8B(void)
{
	return _uXmCPUFeatures_has_CMPXCHG8B();
}

const unsigned __int8 uXm_callconv uXmCPUFeatures::has_SEP(void)
{
	return _uXmCPUFeatures_has_SEP();
}

const unsigned __int8 uXm_callconv uXmCPUFeatures::has_CMOV(void)
{
	return _uXmCPUFeatures_has_CMOV();
}

const unsigned __int8 uXm_callconv uXmCPUFeatures::has_CLFSH(void)
{
	return _uXmCPUFeatures_has_CLFSH();
}

const unsigned __int8 uXm_callconv uXmCPUFeatures::has_MMX(void)
{
	return _uXmCPUFeatures_has_MMX();
}

const unsigned __int8 uXm_callconv uXmCPUFeatures::has_FXSR(void)
{
	return _uXmCPUFeatures_has_FXSR();
}

const unsigned __int8 uXm_callconv uXmCPUFeatures::has_SSE(void)
{
	return _uXmCPUFeatures_has_SSE();
}

const unsigned __int8 uXm_callconv uXmCPUFeatures::has_SSE2(void)
{
	return _uXmCPUFeatures_has_SSE2();
}

/* %eax=07H, %ebx */
const unsigned __int8 uXm_callconv uXmCPUFeatures::has_FSGSBASE(void)
{
	return _uXmCPUFeatures_has_FSGSBASE();
}

const unsigned __int8 uXm_callconv uXmCPUFeatures::has_SGX(void)
{
	return _uXmCPUFeatures_has_SGX();
}

const unsigned __int8 uXm_callconv uXmCPUFeatures::has_BMI1(void)
{
	return _uXmCPUFeatures_has_BMI1();
}

const unsigned __int8 uXm_callconv uXmCPUFeatures::has_HLE(void)
{
	return _uXmCPUFeatures_has_HLE();
}

const unsigned __int8 uXm_callconv uXmCPUFeatures::has_AVX2(void)
{
	return _uXmCPUFeatures_has_AVX2();
}

const unsigned __int8 uXm_callconv uXmCPUFeatures::has_SMEP(void)
{
	return _uXmCPUFeatures_has_SMEP();
}

const unsigned __int8 uXm_callconv uXmCPUFeatures::has_BMI2(void)
{
	return _uXmCPUFeatures_has_BMI2();
}

const unsigned __int8 uXm_callconv uXmCPUFeatures::has_ERMS(void)
{
	return _uXmCPUFeatures_has_ERMS();
}

const unsigned __int8 uXm_callconv uXmCPUFeatures::has_INVPCID(void)
{
	return _uXmCPUFeatures_has_INVPCID();
}

const unsigned __int8 uXm_callconv uXmCPUFeatures::has_RTM(void)
{
	return _uXmCPUFeatures_has_RTM();
}

const unsigned __int8 uXm_callconv uXmCPUFeatures::has_MPX(void)
{
	return _uXmCPUFeatures_has_MPX();
}

const unsigned __int8 uXm_callconv uXmCPUFeatures::has_AVX512F(void)
{
	return _uXmCPUFeatures_has_AVX512F();
}

const unsigned __int8 uXm_callconv uXmCPUFeatures::has_AVX512DQ(void)
{
	return _uXmCPUFeatures_has_AVX512DQ();
}

const unsigned __int8 uXm_callconv uXmCPUFeatures::has_RDSEED(void)
{
	return _uXmCPUFeatures_has_RDSEED();
}

const unsigned __int8 uXm_callconv uXmCPUFeatures::has_ADX(void)
{
	return _uXmCPUFeatures_has_ADX();
}

const unsigned __int8 uXm_callconv uXmCPUFeatures::has_SMAP(void)
{
	return _uXmCPUFeatures_has_SMAP();
}

const unsigned __int8 uXm_callconv uXmCPUFeatures::has_AVX512_IFMA(void)
{
	return _uXmCPUFeatures_has_AVX512_IFMA();
}

const unsigned __int8 uXm_callconv uXmCPUFeatures::has_CLFLUSHOPT(void)
{
	return _uXmCPUFeatures_has_CLFLUSHOPT();
}

const unsigned __int8 uXm_callconv uXmCPUFeatures::has_CLWB(void)
{
	return _uXmCPUFeatures_has_CLWB();
}

const unsigned __int8 uXm_callconv uXmCPUFeatures::has_AVX512PF(void)
{
	return _uXmCPUFeatures_has_AVX512PF();
}

const unsigned __int8 uXm_callconv uXmCPUFeatures::has_AVX512ER(void)
{
	return _uXmCPUFeatures_has_AVX512ER();
}

const unsigned __int8 uXm_callconv uXmCPUFeatures::has_AVX512CD(void)
{
	return _uXmCPUFeatures_has_AVX512CD();
}

const unsigned __int8 uXm_callconv uXmCPUFeatures::has_SHA(void)
{
	return _uXmCPUFeatures_has_SHA();
}

const unsigned __int8 uXm_callconv uXmCPUFeatures::has_AVX512BW(void)
{
	return _uXmCPUFeatures_has_AVX512BW();
}

const unsigned __int8 uXm_callconv uXmCPUFeatures::has_AVX512VL(void)
{
	return _uXmCPUFeatures_has_AVX512VL();
}

/* %eax=07H, %ecx */
const unsigned __int8 uXm_callconv uXmCPUFeatures::has_PREFETCHWT1(void)
{
	return _uXmCPUFeatures_has_PREFETCHWT1();
}

const unsigned __int8 uXm_callconv uXmCPUFeatures::has_AVX512_VBMI(void)
{
	return _uXmCPUFeatures_has_AVX512_VBMI();
}

const unsigned __int8 uXm_callconv uXmCPUFeatures::has_UMIP(void)
{
	return _uXmCPUFeatures_has_UMIP();
}

const unsigned __int8 uXm_callconv uXmCPUFeatures::has_PKU(void)
{
	return _uXmCPUFeatures_has_PKU();
}

const unsigned __int8 uXm_callconv uXmCPUFeatures::has_OSPKE(void)
{
	return _uXmCPUFeatures_has_OSPKE();
}

const unsigned __int8 uXm_callconv uXmCPUFeatures::has_AVX512_VBMI2(void)
{
	return _uXmCPUFeatures_has_AVX512_VBMI2();
}

const unsigned __int8 uXm_callconv uXmCPUFeatures::has_GFNI(void)
{
	return _uXmCPUFeatures_has_GFNI();
}

const unsigned __int8 uXm_callconv uXmCPUFeatures::has_VAES(void)
{
	return _uXmCPUFeatures_has_VAES();
}

const unsigned __int8 uXm_callconv uXmCPUFeatures::has_VPCLMULQDQ(void)
{
	return _uXmCPUFeatures_has_VPCLMULQDQ();
}

const unsigned __int8 uXm_callconv uXmCPUFeatures::has_AVX512_VNNI(void)
{
	return _uXmCPUFeatures_has_AVX512_VNNI();
}

const unsigned __int8 uXm_callconv uXmCPUFeatures::has_AVX512_BITALG(void)
{
	return _uXmCPUFeatures_has_AVX512_BITALG();
}

const unsigned __int8 uXm_callconv uXmCPUFeatures::has_AVX512_VPOPCNTDQ(void)
{
	return _uXmCPUFeatures_has_AVX512_VPOPCNTDQ();
}

const unsigned __int8 uXm_callconv uXmCPUFeatures::has_RDPID(void)
{
	return _uXmCPUFeatures_has_RDPID();
}

/* %eax=07H, %edx */
const unsigned __int8 uXm_callconv uXmCPUFeatures::has_AVX512_4VNNIW(void)
{
	return _uXmCPUFeatures_has_AVX512_4VNNIW();
}

const unsigned __int8 uXm_callconv uXmCPUFeatures::has_AVX512_4FMAPS(void)
{
	return _uXmCPUFeatures_has_AVX512_4FMAPS();
}

/* %eax=80000001H, %ecx */
const unsigned __int8 uXm_callconv uXmCPUFeatures::has_LAHF(void)
{
	return _uXmCPUFeatures_has_LAHF();
}

const unsigned __int8 uXm_callconv uXmCPUFeatures::has_LZCNT(void)
{
	return _uXmCPUFeatures_has_LZCNT();
}

const unsigned __int8 uXm_callconv uXmCPUFeatures::has_ABM(void)
{
	return _uXmCPUFeatures_has_ABM();
}

const unsigned __int8 uXm_callconv uXmCPUFeatures::has_SSE4a(void)
{
	return _uXmCPUFeatures_has_SSE4a();
}

const unsigned __int8 uXm_callconv uXmCPUFeatures::has_PREFETCHW(void)
{
	return _uXmCPUFeatures_has_PREFETCHW();
}

const unsigned __int8 uXm_callconv uXmCPUFeatures::has_XOP(void)
{
	return _uXmCPUFeatures_has_XOP();
}

const unsigned __int8 uXm_callconv uXmCPUFeatures::has_LWP(void)
{
	return _uXmCPUFeatures_has_LWP();
}

const unsigned __int8 uXm_callconv uXmCPUFeatures::has_FMA4(void)
{
	return _uXmCPUFeatures_has_FMA4();
}

const unsigned __int8 uXm_callconv uXmCPUFeatures::has_TBM(void)
{
	return _uXmCPUFeatures_has_TBM();
}

const unsigned __int8 uXm_callconv uXmCPUFeatures::has_MWAITX(void)
{
	return _uXmCPUFeatures_has_MWAITX();
}

/* %eax=80000001H, %edx */
const unsigned __int8 uXm_callconv uXmCPUFeatures::has_SYSCALL(void)
{
	return _uXmCPUFeatures_has_SYSCALL();
}

const unsigned __int8 uXm_callconv uXmCPUFeatures::has_MMXEXT(void)
{
	return _uXmCPUFeatures_has_MMXEXT();
}

const unsigned __int8 uXm_callconv uXmCPUFeatures::has_RDTSCP(void)
{
	return _uXmCPUFeatures_has_RDTSCP();
}

const unsigned __int8 uXm_callconv uXmCPUFeatures::has_3DNOWEXT(void)
{
	return _uXmCPUFeatures_has_3DNOWEXT();
}

const unsigned __int8 uXm_callconv uXmCPUFeatures::has_3DNOW(void)
{
	return _uXmCPUFeatures_has_3DNOW();
}

/* %eax=07H, %ebx, %ecx */
const unsigned __int8 uXm_callconv uXmCPUFeatures::has_AVX512_GFNI(void)
{
	return _uXmCPUFeatures_has_AVX512_GFNI();
}

const unsigned __int8 uXm_callconv uXmCPUFeatures::has_AVX512_GFNI_VL(void)
{
	return _uXmCPUFeatures_has_AVX512_GFNI_VL();
}

const unsigned __int8 uXm_callconv uXmCPUFeatures::has_AVX512_VAES(void)
{
	return _uXmCPUFeatures_has_AVX512_VAES();
}

const unsigned __int8 uXm_callconv uXmCPUFeatures::has_AVX512_VAES_VL(void)
{
	return _uXmCPUFeatures_has_AVX512_VAES_VL();
}

const unsigned __int8 uXm_callconv uXmCPUFeatures::has_AVX512_VPCLMULQDQ(void)
{
	return _uXmCPUFeatures_has_AVX512_VPCLMULQDQ();
}

const unsigned __int8 uXm_callconv uXmCPUFeatures::has_AVX512_VPCLMULQDQ_VL(void)
{
	return _uXmCPUFeatures_has_AVX512_VPCLMULQDQ_VL();
}

const unsigned __int8 uXm_callconv uXmCPUFeatures::has_AVX512_IFMA_VL(void)
{
	return _uXmCPUFeatures_has_AVX512_IFMA_VL();
}

const unsigned __int8 uXm_callconv uXmCPUFeatures::has_AVX512_VBMI_VL(void)
{
	return _uXmCPUFeatures_has_AVX512_VBMI_VL();
}

const unsigned __int8 uXm_callconv uXmCPUFeatures::has_AVX512_VBMI2_VL(void)
{
	return _uXmCPUFeatures_has_AVX512_VBMI2_VL();
}

const unsigned __int8 uXm_callconv uXmCPUFeatures::has_AVX512_VNNI_VL(void)
{
	return _uXmCPUFeatures_has_AVX512_VNNI_VL();
}

const unsigned __int8 uXm_callconv uXmCPUFeatures::has_AVX512_BITALG_VL(void)
{
	return _uXmCPUFeatures_has_AVX512_BITALG_VL();
}

const unsigned __int8 uXm_callconv uXmCPUFeatures::has_AVX512_VPOPCNTDQ_VL(void)
{
	return _uXmCPUFeatures_has_AVX512_VPOPCNTDQ_VL();
}

const unsigned __int8 uXm_callconv uXmCPUFeatures::has_AVX512BW_GFNI(void)
{
	return _uXmCPUFeatures_has_AVX512BW_GFNI();
}

const unsigned __int8 uXm_callconv uXmCPUFeatures::has_AVX512BW_GFNI_VL(void)
{
	return _uXmCPUFeatures_has_AVX512BW_GFNI_VL();
}

const unsigned __int8 uXm_callconv uXmCPUFeatures::has_AVX512BW_VAES(void)
{
	return _uXmCPUFeatures_has_AVX512BW_VAES();
}

const unsigned __int8 uXm_callconv uXmCPUFeatures::has_AVX512BW_VAES_VL(void)
{
	return _uXmCPUFeatures_has_AVX512BW_VAES_VL();
}

const unsigned __int8 uXm_callconv uXmCPUFeatures::has_AVX512BW_VPCLMULQDQ(void)
{
	return _uXmCPUFeatures_has_AVX512BW_VPCLMULQDQ();
}

const unsigned __int8 uXm_callconv uXmCPUFeatures::has_AVX512BW_VPCLMULQDQ_VL(void)
{
	return _uXmCPUFeatures_has_AVX512BW_VPCLMULQDQ_VL();
}

const unsigned __int8 uXm_callconv uXmCPUFeatures::has_AVX512BW_VL(void)
{
	return _uXmCPUFeatures_has_AVX512BW_VL();
}

const unsigned __int8 uXm_callconv uXmCPUFeatures::has_AVX512DQ_GFNI(void)
{
	return _uXmCPUFeatures_has_AVX512DQ_GFNI();
}

const unsigned __int8 uXm_callconv uXmCPUFeatures::has_AVX512DQ_GFNI_VL(void)
{
	return _uXmCPUFeatures_has_AVX512DQ_GFNI_VL();
}

const unsigned __int8 uXm_callconv uXmCPUFeatures::has_AVX512DQ_VAES(void)
{
	return _uXmCPUFeatures_has_AVX512DQ_VAES();
}

const unsigned __int8 uXm_callconv uXmCPUFeatures::has_AVX512DQ_VAES_VL(void)
{
	return _uXmCPUFeatures_has_AVX512DQ_VAES_VL();
}

const unsigned __int8 uXm_callconv uXmCPUFeatures::has_AVX512DQ_VPCLMULQDQ(void)
{
	return _uXmCPUFeatures_has_AVX512DQ_VPCLMULQDQ();
}

const unsigned __int8 uXm_callconv uXmCPUFeatures::has_AVX512DQ_VPCLMULQDQ_VL(void)
{
	return _uXmCPUFeatures_has_AVX512DQ_VPCLMULQDQ_VL();
}

const unsigned __int8 uXm_callconv uXmCPUFeatures::has_AVX512DQ_VL(void)
{
	return _uXmCPUFeatures_has_AVX512DQ_VL();
}

const unsigned __int8 uXm_callconv uXmCPUFeatures::has_AVX512CD_VL(void)
{
	return _uXmCPUFeatures_has_AVX512CD_VL();
}

/* %eax=07H, %ecx, %ebx | %eax=01H, %ecx , %edx */
const unsigned __int8 uXm_callconv uXmCPUFeatures::has_SSE_AES(void)
{
	return _uXmCPUFeatures_has_SSE_AES();
}

const unsigned __int8 uXm_callconv uXmCPUFeatures::has_SSE_GFNI(void)
{
	return _uXmCPUFeatures_has_SSE_GFNI();
}

const unsigned __int8 uXm_callconv uXmCPUFeatures::has_SSE_PCLMULQDQ(void)
{
	return _uXmCPUFeatures_has_SSE_PCLMULQDQ();
}

const unsigned __int8 uXm_callconv uXmCPUFeatures::has_SSE2_AES(void)
{
	return _uXmCPUFeatures_has_SSE2_AES();
}

const unsigned __int8 uXm_callconv uXmCPUFeatures::has_SSE2_GFNI(void)
{
	return _uXmCPUFeatures_has_SSE2_GFNI();
}

const unsigned __int8 uXm_callconv uXmCPUFeatures::has_SSE2_PCLMULQDQ(void)
{
	return _uXmCPUFeatures_has_SSE2_PCLMULQDQ();
}

const unsigned __int8 uXm_callconv uXmCPUFeatures::has_SSE3_AES(void)
{
	return _uXmCPUFeatures_has_SSE3_AES();
}

const unsigned __int8 uXm_callconv uXmCPUFeatures::has_SSE3_GFNI(void)
{
	return _uXmCPUFeatures_has_SSE3_GFNI();
}

const unsigned __int8 uXm_callconv uXmCPUFeatures::has_SSE3_PCLMULQDQ(void)
{
	return _uXmCPUFeatures_has_SSE3_PCLMULQDQ();
}

const unsigned __int8 uXm_callconv uXmCPUFeatures::has_SSSE3_AES(void)
{
	return _uXmCPUFeatures_has_SSSE3_AES();
}

const unsigned __int8 uXm_callconv uXmCPUFeatures::has_SSSE3_GFNI(void)
{
	return _uXmCPUFeatures_has_SSSE3_GFNI();
}

const unsigned __int8 uXm_callconv uXmCPUFeatures::has_SSSE3_PCLMULQDQ(void)
{
	return _uXmCPUFeatures_has_SSSE3_PCLMULQDQ();
}

const unsigned __int8 uXm_callconv uXmCPUFeatures::has_SSE41_AES(void)
{
	return _uXmCPUFeatures_has_SSE41_AES();
}

const unsigned __int8 uXm_callconv uXmCPUFeatures::has_SSE41_GFNI(void)
{
	return _uXmCPUFeatures_has_SSE41_GFNI();
}

const unsigned __int8 uXm_callconv uXmCPUFeatures::has_SSE41_PCLMULQDQ(void)
{
	return _uXmCPUFeatures_has_SSE41_PCLMULQDQ();
}

const unsigned __int8 uXm_callconv uXmCPUFeatures::has_SSE42_AES(void)
{
	return _uXmCPUFeatures_has_SSE42_AES();
}

const unsigned __int8 uXm_callconv uXmCPUFeatures::has_SSE42_GFNI(void)
{
	return _uXmCPUFeatures_has_SSE42_GFNI();
}

const unsigned __int8 uXm_callconv uXmCPUFeatures::has_SSE42_PCLMULQDQ(void)
{
	return _uXmCPUFeatures_has_SSE42_PCLMULQDQ();
}

const unsigned __int8 uXm_callconv uXmCPUFeatures::has_AVX_AES(void)
{
	return _uXmCPUFeatures_has_AVX_AES();
}

const unsigned __int8 uXm_callconv uXmCPUFeatures::has_AVX_GFNI(void)
{
	return _uXmCPUFeatures_has_AVX_GFNI();
}

const unsigned __int8 uXm_callconv uXmCPUFeatures::has_AVX_PCLMULQDQ(void)
{
	return _uXmCPUFeatures_has_AVX_PCLMULQDQ();
}

const unsigned __int8 uXm_callconv uXmCPUFeatures::has_AVX_VAES(void)
{
	return _uXmCPUFeatures_has_AVX_VAES();
}

const unsigned __int8 uXm_callconv uXmCPUFeatures::has_AVX_VPCLMULQDQ(void)
{
	return _uXmCPUFeatures_has_AVX_VPCLMULQDQ();
}

const unsigned __int8 uXm_callconv uXmCPUFeatures::has_AVX2_AES(void)
{
	return _uXmCPUFeatures_has_AVX2_AES();
}

const unsigned __int8 uXm_callconv uXmCPUFeatures::has_AVX2_GFNI(void)
{
	return _uXmCPUFeatures_has_AVX2_GFNI();
}

const unsigned __int8 uXm_callconv uXmCPUFeatures::has_AVX2_PCLMULQDQ(void)
{
	return _uXmCPUFeatures_has_AVX2_PCLMULQDQ();
}

const unsigned __int8 uXm_callconv uXmCPUFeatures::has_AVX2_VAES(void)
{
	return _uXmCPUFeatures_has_AVX2_VAES();
}

const unsigned __int8 uXm_callconv uXmCPUFeatures::has_AVX2_VPCLMULQDQ(void)
{
	return _uXmCPUFeatures_has_AVX2_VPCLMULQDQ();
}

const unsigned __int8 uXm_callconv uXmCPUFeatures::has_enabled_XMM(void)
{
	return _uXmCPUFeatures_has_enabled_XMM();
}

const unsigned __int8 uXm_callconv uXmCPUFeatures::has_enabled_YMM(void)
{
	return _uXmCPUFeatures_has_enabled_YMM();
}

const unsigned __int8 uXm_callconv uXmCPUFeatures::has_enabled_ZMM(void)
{
	return _uXmCPUFeatures_has_enabled_ZMM();
}

const unsigned __int8 uXm_callconv uXmCPUFeatures::Is_Inited(void)
{
	return _uXmCPUFeatures_Is_Inited();
}

uXm_PACK_POP

uXm_PACK_PUSH_POINTER

void uXm_callconv uXmCPUFeatures::CpuType(int* vendor, int* family, int* model)
{
	_uXmCPUFeatures_CpuType(vendor, family, model);
}

char* uXm_callconv uXmCPUFeatures::ProcessorName(void)
{
	return _uXmCPUFeatures_ProcessorName();
}

size_t uXm_callconv uXmCPUFeatures::DataCacheSize(int level)
{
	return _uXmCPUFeatures_DataCacheSize(level);
}

uXm_PACK_POP

uXm_EXTERNC_END
