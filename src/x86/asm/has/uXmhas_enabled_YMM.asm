
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
uXm_has_enabled_YMM proto VECCALL (byte)


			align 16
uXm_has_enabled_YMM proc VECCALL (byte)

			mov				eax,			1
			cpuid
			and				ecx,			bit_OSXSAVE
			cmp				ecx,			bit_OSXSAVE                 ; OSXSAVE support by microprocessor
			jne not_supported
			; processor supports XGETBV is enabled by OS
			mov				ecx,			0							; specify 0 for XCR0 register
			xgetbv														; result in edx:eax
			and				eax,			06h
			cmp				eax,			06h							; check OS has enabled both XMM and YMM state support
			jne not_supported
			mov				al,				true
			jmp done
			not_supported:
			mov				al,				false
			done:

			ret

uXm_has_enabled_YMM endp

	end ;.code