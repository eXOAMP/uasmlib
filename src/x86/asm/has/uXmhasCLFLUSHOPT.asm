
	include uXmx86asm.inc

			option	casemap:none
	ifndef __X64__
			.686P
			.xmm
			.model	flat, c
	else
			.X64P
			.xmm
			option	win64:11
			option	stackbase:rsp
	endif
			option	frame:auto


	.code
			align 16
uXm_has_CLFLUSHOPT proto VECCALL (byte)


			align 16
uXm_has_CLFLUSHOPT proc VECCALL (byte)

			mov				eax,			7
			cpuid
			and				ebx,			bit_CLFLUSHOPT
			cmp				ebx,			bit_CLFLUSHOPT			; CLFLUSHOPT support by microprocessor
			.if EQUAL?
			mov				al,				true
			.else
			mov				al,				false
			.endif

			ret

uXm_has_CLFLUSHOPT endp

	end ;.code