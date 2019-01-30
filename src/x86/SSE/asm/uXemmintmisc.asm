
	include uXx86asm.inc
	
ifndef __MIC__

	.xmm
	option arch:sse
	option evex:0
	
	include uXsseintrin.inc
	
	.data?

	.data

	.const
	
		alignsize_t
		_m128iextepi16jmptable isize_t offset _m128iextepi16_0, offset _m128iextepi16_1, offset _m128iextepi16_2, offset _m128iextepi16_3, offset _m128iextepi16_4, offset _m128iextepi16_5, offset _m128iextepi16_6, offset _m128iextepi16_7
		
		alignsize_t
		_m128iinsepi16jmptable isize_t offset _m128iinsepi16_0, offset _m128iinsepi16_1, offset _m128iinsepi16_2, offset _m128iinsepi16_3, offset _m128iinsepi16_4, offset _m128iinsepi16_5, offset _m128iinsepi16_6, offset _m128iinsepi16_7
		
		alignsize_t
		_m128icvtelts128epi64jmptable isize_t offset _m128icvtelts128epi64_0, offset _m128icvtelts128epi64_1
		
		alignsize_t
		_m128icvtelts128epi64xjmptable isize_t offset _m128icvtelts128epi64x_0, offset _m128icvtelts128epi64x_1
		
		alignsize_t
		_m128icvtelts128epi32jmptable isize_t offset _m128icvtelts128epi32_0, offset _m128icvtelts128epi32_1, offset _m128icvtelts128epi32_2, offset _m128icvtelts128epi32_3
		
		alignsize_t
		_m128icvtelts128epi16jmptable isize_t offset _m128icvtelts128epi16_0, offset _m128icvtelts128epi16_1, offset _m128icvtelts128epi16_2, offset _m128icvtelts128epi16_3, offset _m128icvtelts128epi16_4, offset _m128icvtelts128epi16_5, offset _m128icvtelts128epi16_6, offset _m128icvtelts128epi16_7
		
		alignsize_t
		_m128icvtelts128epi8jmptable isize_t offset _m128icvtelts128epi8_0, offset _m128icvtelts128epi8_1, offset _m128icvtelts128epi8_2, offset _m128icvtelts128epi8_3, offset _m128icvtelts128epi8_4, offset _m128icvtelts128epi8_5, \
											offset _m128icvtelts128epi8_6, offset _m128icvtelts128epi8_7, offset _m128icvtelts128epi8_8, offset _m128icvtelts128epi8_9, offset _m128icvtelts128epi8_10, offset _m128icvtelts128epi8_11, offset _m128icvtelts128epi8_12, offset _m128icvtelts128epi8_13, offset _m128icvtelts128epi8_14, offset _m128icvtelts128epi8_15
		
	alignxmmfieldproc
	callconvopt

	.code

funcstart _uX_mm_extract_epi16_0, callconv, dword, < >, Inxmm_A:xmmword

			pextrw			dreturn,			xmm0,			0

			ret
funcend

funcstart _uX_mm_extract_epi16_1, callconv, dword, < >, Inxmm_A:xmmword

			pextrw			dreturn,			xmm0,			1

			ret
funcend

funcstart _uX_mm_extract_epi16_2, callconv, dword, < >, Inxmm_A:xmmword

			pextrw			dreturn,			xmm0,			2

			ret
funcend

funcstart _uX_mm_extract_epi16_3, callconv, dword, < >, Inxmm_A:xmmword

			pextrw			dreturn,			xmm0,			3

			ret
funcend

funcstart _uX_mm_extract_epi16_4, callconv, dword, < >, Inxmm_A:xmmword

			pextrw			dreturn,			xmm0,			4

			ret
funcend

funcstart _uX_mm_extract_epi16_5, callconv, dword, < >, Inxmm_A:xmmword

			pextrw			dreturn,			xmm0,			5

			ret
funcend

funcstart _uX_mm_extract_epi16_6, callconv, dword, < >, Inxmm_A:xmmword

			pextrw			dreturn,			xmm0,			6

			ret
funcend

funcstart _uX_mm_extract_epi16_7, callconv, dword, < >, Inxmm_A:xmmword

			pextrw			dreturn,			xmm0,			7

			ret
funcend

funcstart _uX_mm_extract_epi16, callconv, dword, < >, Inxmm_A:xmmword, _Imm8:dword

		;.if(rparam1 > 3)
		;	ret
		;.else

		ifndef __X64__
			movzx			eax,	byte ptr [rparam1]
			;mov				rbx,	dword ptr [rbx+rparam1*4]
			jmp		dword ptr [_m128iextepi16jmptable+eax*size_t_size]
		else
			;movzx			rax,	byte ptr [rparam1]
			lea				rbx,	qword ptr [_m128iextepi16jmptable]
			mov				rbx,	qword ptr [rbx+rparam1*size_t_size]
			jmp				rbx
		endif
		
		_m128iextepi16_0 label size_t
			pextrw			dreturn,			xmm0,			0
			ret
		_m128iextepi16_1 label size_t
			pextrw			dreturn,			xmm0,			1
			ret
		_m128iextepi16_2 label size_t
			pextrw			dreturn,			xmm0,			2
			ret
		_m128iextepi16_3 label size_t
			pextrw			dreturn,			xmm0,			3
			ret
		_m128iextepi16_4 label size_t
			pextrw			dreturn,			xmm0,			4
			ret
		_m128iextepi16_5 label size_t
			pextrw			dreturn,			xmm0,			5
			ret
		_m128iextepi16_6 label size_t
			pextrw			dreturn,			xmm0,			6
			ret
		_m128iextepi16_7 label size_t
			pextrw			dreturn,			xmm0,			7
			ret
		;.endif

funcend

funcstart _uX_mm_insert_epi16_0, callconv, xmmword, < >, Inxmm_A:xmmword, InInt_B:word

			pinsrw			xmm0,			dparam1,			0

			ret
funcend

funcstart _uX_mm_insert_epi16_1, callconv, xmmword, < >, Inxmm_A:xmmword, InInt_B:word

			pinsrw			xmm0,			dparam1,			1

			ret
funcend

funcstart _uX_mm_insert_epi16_2, callconv, xmmword, < >, Inxmm_A:xmmword, InInt_B:word

			pinsrw			xmm0,			dparam1,			2

			ret
funcend

funcstart _uX_mm_insert_epi16_3, callconv, xmmword, < >, Inxmm_A:xmmword, InInt_B:word

			pinsrw			xmm0,			dparam1,			3

			ret
funcend

funcstart _uX_mm_insert_epi16_4, callconv, xmmword, < >, Inxmm_A:xmmword, InInt_B:word

			pinsrw			xmm0,			dparam1,			4

			ret
funcend

funcstart _uX_mm_insert_epi16_5, callconv, xmmword, < >, Inxmm_A:xmmword, InInt_B:word

			pinsrw			xmm0,			dparam1,			5

			ret
funcend

funcstart _uX_mm_insert_epi16_6, callconv, xmmword, < >, Inxmm_A:xmmword, InInt_B:word

			pinsrw			xmm0,			dparam1,			6

			ret
funcend

funcstart _uX_mm_insert_epi16_7, callconv, xmmword, < >, Inxmm_A:xmmword, InInt_B:word

			pinsrw			xmm0,			dparam1,			7

			ret
funcend

funcstart _uX_mm_insert_epi16, callconv, xmmword, < >, Inxmm_A:xmmword, InInt_B:word, _Imm8:word

		;.if(rparam2 > 3)
		;	ret
		;.else

		ifndef __X64__
			movzx			eax,	byte ptr [rparam2]
			;mov				rbx,	dword ptr [rbx+rparam2*4]
			jmp		dword ptr [_m128iinsepi16jmptable+eax*size_t_size]
		else
			;movzx			rax,	byte ptr [rparam2]
			lea				rbx,	qword ptr [_m128iinsepi16jmptable]
			mov				rbx,	qword ptr [rbx+rparam2*size_t_size]
			jmp				rbx
		endif
		
		_m128iinsepi16_0 label size_t
			pinsrw			xmm0,			dparam1,			0
			ret
		_m128iinsepi16_1 label size_t
			pinsrw			xmm0,			dparam1,			1
			ret
		_m128iinsepi16_2 label size_t
			pinsrw			xmm0,			dparam1,			2
			ret
		_m128iinsepi16_3 label size_t
			pinsrw			xmm0,			dparam1,			3
			ret
		_m128iinsepi16_4 label size_t
			pinsrw			xmm0,			dparam1,			4
			ret
		_m128iinsepi16_5 label size_t
			pinsrw			xmm0,			dparam1,			5
			ret
		_m128iinsepi16_6 label size_t
			pinsrw			xmm0,			dparam1,			6
			ret
		_m128iinsepi16_7 label size_t
			pinsrw			xmm0,			dparam1,			7
			ret
		;.endif

funcend

funcstart _uX_mm_cvteltsi128_epi64, callconv, xmmword, < >, Inxmm_A:xmmword, _Imm8:dword

		;.if(rparam1 > 1)
		;	ret
		;.else

		ifndef __X64__
			movzx			eax,	byte ptr [rparam1]
			;mov				rbx,	dword ptr [rbx+rparam1*4]
			jmp		dword ptr [_m128icvtelts128epi64jmptable+eax*size_t_size]
		else
			;movzx			rax,	byte ptr [rparam1]
			lea				rbx,	qword ptr [_m128icvtelts128epi64jmptable]
			mov				rbx,	qword ptr [rbx+rparam1*size_t_size]
			jmp				rbx
		endif
		
		_m128icvtelts128epi64_0 label size_t			
			pxor			xmm1,			xmm1
			punpcklqdq		xmm0,			xmm1
			ret
		_m128icvtelts128epi64_1 label size_t
			pxor			xmm1,			xmm1
			pshufd			xmm0,			xmm0,			shuffler4(2,3,2,3)
			punpcklqdq		xmm0,			xmm1
			ret
		;.endif

funcend

funcstart _uX_mm_cvteltsi128_epi64x, callconv, qword, < >, Inxmm_A:xmmword, _Imm8:dword

		;.if(rparam1 > 1)
		;	ret
		;.else

		ifndef __X64__
			movzx			eax,	byte ptr [rparam1]
			;mov				rbx,	dword ptr [rbx+rparam1*4]
			jmp		dword ptr [_m128icvtelts128epi64xjmptable+eax*size_t_size]
		else
			;movzx			rax,	byte ptr [rparam1]
			lea				rbx,	qword ptr [_m128icvtelts128epi64xjmptable]
			mov				rbx,	qword ptr [rbx+rparam1*size_t_size]
			jmp				rbx
		endif
		
		_m128icvtelts128epi64x_0 label size_t			
			pxor			xmm1,			xmm1
			punpcklqdq		xmm0,			xmm1
			movd			dreturn,			xmm0
			ret
		_m128icvtelts128epi64x_1 label size_t
			pxor			xmm1,			xmm1
			pshufd			xmm0,			xmm0,			shuffler4(2,3,2,3)
			punpcklqdq		xmm0,			xmm1
			movd			dreturn,			xmm0
			ret
		;.endif

funcend

funcstart _uX_mm_cvteltsi128_epi32, callconv, dword, < >, Inxmm_A:xmmword, _Imm8:dword

		;.if(rparam1 > 3)
		;	ret
		;.else if(rparam1 < 0)
		;	ret
		;.else

		ifndef __X64__
			movzx			eax,	byte ptr [rparam1]
			;mov				rbx,	dword ptr [rbx+rparam1*4]
			jmp		dword ptr [_m128icvtelts128epi32jmptable+eax*size_t_size]
		else
			;movzx			rax,	byte ptr [rparam1]
			lea				rbx,	qword ptr [_m128icvtelts128epi32jmptable]
			mov				rbx,	qword ptr [rbx+rparam1*size_t_size]
			jmp				rbx
		endif
		
		_m128icvtelts128epi32_0 label size_t			
			pxor			xmm1,			xmm1
			punpckldq		xmm0,			xmm1
			punpcklqdq		xmm0,			xmm1
			movd			dreturn,			xmm0
			ret
		_m128icvtelts128epi32_1 label size_t
			pxor			xmm1,			xmm1
			pshufd			xmm0,			xmm0,			shuffler4(1,1,1,1)
			punpckldq		xmm0,			xmm1
			punpcklqdq		xmm0,			xmm1
			movd			dreturn,			xmm0
			ret
		_m128icvtelts128epi32_2 label size_t
			pxor			xmm1,			xmm1
			pshufd			xmm0,			xmm0,			shuffler4(2,2,2,2)
			punpckldq		xmm0,			xmm1
			punpcklqdq		xmm0,			xmm1
			movd			dreturn,			xmm0
			ret
		_m128icvtelts128epi32_3 label size_t
			pxor			xmm1,			xmm1
			pshufd			xmm0,			xmm0,			shuffler4(3,3,3,3)
			punpckldq		xmm0,			xmm1
			punpcklqdq		xmm0,			xmm1
			movd			dreturn,			xmm0
			ret
		;.endif

funcend

funcstart _uX_mm_cvteltsi128_epi16, callconv, word, < >, Inxmm_A:xmmword, Inint_BSelect:dword

		;.if(rparam1 > 3)
		;	ret
		;.else

		ifndef __X64__
			movzx			eax,	byte ptr [rparam1]
			;mov				rbx,	dword ptr [rbx+rparam1*4]
			jmp		dword ptr [_m128icvtelts128epi16jmptable+eax*size_t_size]
		else
			;movzx			rax,	byte ptr [rparam1]
			lea				rbx,	qword ptr [_m128icvtelts128epi16jmptable]
			mov				rbx,	qword ptr [rbx+rparam1*size_t_size]
			jmp				rbx
		endif
		
		_m128icvtelts128epi16_0 label size_t			
			pxor			xmm1,			xmm1
			punpcklwd		xmm0,			xmm1
			punpckldq		xmm0,			xmm1
			punpcklqdq		xmm0,			xmm1
			movd			dreturn,			xmm0
			;pextrw			dreturn,			xmm0,			0
			ret
		_m128icvtelts128epi16_1 label size_t
			pxor			xmm1,			xmm1
			pshuflw			xmm0,			xmm0,			shuffler4(1,1,1,1)
			punpcklwd		xmm0,			xmm1
			punpckldq		xmm0,			xmm1
			punpcklqdq		xmm0,			xmm1
			movd			dreturn,			xmm0
			;pextrw			dreturn,			xmm0,			1
			ret
		_m128icvtelts128epi16_2 label size_t
			pxor			xmm1,			xmm1
			pshuflw			xmm0,			xmm0,			shuffler4(2,2,2,2)
			punpcklwd		xmm0,			xmm1
			punpckldq		xmm0,			xmm1
			punpcklqdq		xmm0,			xmm1
			movd			dreturn,			xmm0
			;pextrw			dreturn,			xmm0,			2
			ret
		_m128icvtelts128epi16_3 label size_t
			pxor			xmm1,			xmm1
			pshuflw			xmm0,			xmm0,			shuffler4(3,3,3,3)
			punpcklwd		xmm0,			xmm1
			punpckldq		xmm0,			xmm1
			punpcklqdq		xmm0,			xmm1
			movd			dreturn,			xmm0
			;pextrw			dreturn,			xmm0,			3
			ret
		_m128icvtelts128epi16_4 label size_t
			pxor			xmm1,			xmm1
			pshufhw			xmm0,			xmm0,			shuffler4(0,0,0,0)
			punpckhdq		xmm0,			xmm0
			punpcklwd		xmm0,			xmm1
			punpckldq		xmm0,			xmm1
			punpcklqdq		xmm0,			xmm1
			movd			dreturn,			xmm0
			;pextrw			dreturn,			xmm0,			4
			ret
		_m128icvtelts128epi16_5 label size_t
			pxor			xmm1,			xmm1
			pshufhw			xmm0,			xmm0,			shuffler4(1,1,1,1)
			punpckhdq		xmm0,			xmm0
			punpcklwd		xmm0,			xmm1
			punpckldq		xmm0,			xmm1
			punpcklqdq		xmm0,			xmm1
			movd			dreturn,			xmm0
			;pextrw			dreturn,			xmm0,			5
			ret
		_m128icvtelts128epi16_6 label size_t
			pxor			xmm1,			xmm1
			pshufhw			xmm0,			xmm0,			shuffler4(2,2,2,2)
			punpckhdq		xmm0,			xmm0
			punpcklwd		xmm0,			xmm1
			punpckldq		xmm0,			xmm1
			punpcklqdq		xmm0,			xmm1
			movd			dreturn,			xmm0
			;pextrw			dreturn,			xmm0,			6
			ret
		_m128icvtelts128epi16_7 label size_t
			pxor			xmm1,			xmm1
			pshufhw			xmm0,			xmm0,			shuffler4(3,3,3,3)
			punpckhdq		xmm0,			xmm0
			punpcklwd		xmm0,			xmm1
			punpckldq		xmm0,			xmm1
			punpcklqdq		xmm0,			xmm1
			movd			dreturn,			xmm0
			;pextrw			dreturn,			xmm0,			7
			ret
		;.endif

funcend

funcstart _uX_mm_cvteltsi128_epi8, callconv, byte, < >, Inxmm_A:xmmword, Inint_BSelect:dword

		;.if(rparam1 > 3)
		;	ret
		;.else

		ifndef __X64__
			movzx			eax,	byte ptr [rparam1]
			;mov				rbx,	dword ptr [rbx+rparam1*4]
			jmp		dword ptr [_m128icvtelts128epi8jmptable+eax*size_t_size]
		else
			;movzx			rax,	byte ptr [rparam1]
			lea				rbx,	qword ptr [_m128icvtelts128epi8jmptable]
			mov				rbx,	qword ptr [rbx+rparam1*size_t_size]
			jmp				rbx
		endif
		
		_m128icvtelts128epi8_0 label size_t
			pxor			xmm1,			xmm1
			punpcklbw		xmm0,			xmm1
			punpcklwd		xmm0,			xmm1
			punpckldq		xmm0,			xmm1
			punpcklqdq		xmm0,			xmm1
			movd			dreturn,			xmm0
			;pextrb			dreturn,			xmm0,			0
			ret
		_m128icvtelts128epi8_1 label size_t
			pxor			xmm1,			xmm1
			psrldq			xmm0,			1
			punpcklbw		xmm0,			xmm1
			punpcklwd		xmm0,			xmm1
			punpckldq		xmm0,			xmm1
			punpcklqdq		xmm0,			xmm1
			movd			dreturn,			xmm0
			;pextrb			dreturn,			xmm0,			1
			ret
		_m128icvtelts128epi8_2 label size_t
			pxor			xmm1,			xmm1
			psrldq			xmm0,			2
			punpcklbw		xmm0,			xmm1
			punpcklwd		xmm0,			xmm1
			punpckldq		xmm0,			xmm1
			punpcklqdq		xmm0,			xmm1
			movd			dreturn,			xmm0
			;pextrb			dreturn,			xmm0,			2
			ret
		_m128icvtelts128epi8_3 label size_t
			pxor			xmm1,			xmm1
			psrldq			xmm0,			3
			punpcklbw		xmm0,			xmm1
			punpcklwd		xmm0,			xmm1
			punpckldq		xmm0,			xmm1
			punpcklqdq		xmm0,			xmm1
			movd			dreturn,			xmm0
			;pextrb			dreturn,			xmm0,			3
			ret
		_m128icvtelts128epi8_4 label size_t
			pxor			xmm1,			xmm1
			psrldq			xmm0,			4
			punpcklbw		xmm0,			xmm1
			punpcklwd		xmm0,			xmm1
			punpckldq		xmm0,			xmm1
			punpcklqdq		xmm0,			xmm1
			movd			dreturn,			xmm0
			;pextrb			dreturn,			xmm0,			4
			ret
		_m128icvtelts128epi8_5 label size_t
			pxor			xmm1,			xmm1
			psrldq			xmm0,			5
			punpcklbw		xmm0,			xmm1
			punpcklwd		xmm0,			xmm1
			punpckldq		xmm0,			xmm1
			punpcklqdq		xmm0,			xmm1
			movd			dreturn,			xmm0
			;pextrb			dreturn,			xmm0,			5
			ret
		_m128icvtelts128epi8_6 label size_t
			pxor			xmm1,			xmm1
			psrldq			xmm0,			6
			punpcklbw		xmm0,			xmm1
			punpcklwd		xmm0,			xmm1
			punpckldq		xmm0,			xmm1
			punpcklqdq		xmm0,			xmm1
			movd			dreturn,			xmm0
			;pextrb			dreturn,			xmm0,			6
			ret
		_m128icvtelts128epi8_7 label size_t
			pxor			xmm1,			xmm1
			psrldq			xmm0,			7
			punpcklbw		xmm0,			xmm1
			punpcklwd		xmm0,			xmm1
			punpckldq		xmm0,			xmm1
			punpcklqdq		xmm0,			xmm1
			movd			dreturn,			xmm0
			;pextrb			dreturn,			xmm0,			7
			ret
		_m128icvtelts128epi8_8 label size_t
			pxor			xmm1,			xmm1
			psrldq			xmm0,			8
			punpcklbw		xmm0,			xmm1
			punpcklwd		xmm0,			xmm1
			punpckldq		xmm0,			xmm1
			punpcklqdq		xmm0,			xmm1
			movd			dreturn,			xmm0
			;pextrb			dreturn,			xmm0,			8
			ret
		_m128icvtelts128epi8_9 label size_t
			pxor			xmm1,			xmm1
			psrldq			xmm0,			9
			punpcklbw		xmm0,			xmm1
			punpcklwd		xmm0,			xmm1
			punpckldq		xmm0,			xmm1
			punpcklqdq		xmm0,			xmm1
			movd			dreturn,			xmm0
			;pextrb			dreturn,			xmm0,			9
			ret
		_m128icvtelts128epi8_10 label size_t
			pxor			xmm1,			xmm1
			psrldq			xmm0,			10
			punpcklbw		xmm0,			xmm1
			punpcklwd		xmm0,			xmm1
			punpckldq		xmm0,			xmm1
			punpcklqdq		xmm0,			xmm1
			movd			dreturn,			xmm0
			;pextrb			dreturn,			xmm0,			10
			ret
		_m128icvtelts128epi8_11 label size_t
			pxor			xmm1,			xmm1
			psrldq			xmm0,			11
			punpcklbw		xmm0,			xmm1
			punpcklwd		xmm0,			xmm1
			punpckldq		xmm0,			xmm1
			punpcklqdq		xmm0,			xmm1
			movd			dreturn,			xmm0
			;pextrb			dreturn,			xmm0,			11
			ret
		_m128icvtelts128epi8_12 label size_t
			pxor			xmm1,			xmm1
			psrldq			xmm0,			12
			punpcklbw		xmm0,			xmm1
			punpcklwd		xmm0,			xmm1
			punpckldq		xmm0,			xmm1
			punpcklqdq		xmm0,			xmm1
			movd			dreturn,			xmm0
			;pextrb			dreturn,			xmm0,			12
			ret
		_m128icvtelts128epi8_13 label size_t
			pxor			xmm1,			xmm1
			psrldq			xmm0,			13
			punpcklbw		xmm0,			xmm1
			punpcklwd		xmm0,			xmm1
			punpckldq		xmm0,			xmm1
			punpcklqdq		xmm0,			xmm1
			movd			dreturn,			xmm0
			;pextrb			dreturn,			xmm0,			13
			ret
		_m128icvtelts128epi8_14 label size_t
			pxor			xmm1,			xmm1
			psrldq			xmm0,			14
			punpcklbw		xmm0,			xmm1
			punpcklwd		xmm0,			xmm1
			punpckldq		xmm0,			xmm1
			punpcklqdq		xmm0,			xmm1
			movd			dreturn,			xmm0
			;pextrb			dreturn,			xmm0,			14
			ret
		_m128icvtelts128epi8_15 label size_t
			pxor			xmm1,			xmm1
			psrldq			xmm0,			15
			punpcklbw		xmm0,			xmm1
			punpcklwd		xmm0,			xmm1
			punpckldq		xmm0,			xmm1
			punpcklqdq		xmm0,			xmm1
			movd			dreturn,			xmm0
			;pextrb			dreturn,			xmm0,			15
			ret
		;.endif

funcend

endif ;__MIC__

	end