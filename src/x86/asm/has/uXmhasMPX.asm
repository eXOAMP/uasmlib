
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
uXm_has_MPX proto VECCALL (byte)


			align 16
uXm_has_MPX proc VECCALL (byte)

			mov				eax,			0
			cpuid
			cmp				ecx,			bit_ntel			; 'GenuineIntel'
			jne not_supported
			mov				eax,			7
			cpuid
			and				ebx,			bit_MPX
			cmp				ebx,			bit_MPX				; MPX support by microprocessor
			jne not_supported
			mov				al,				true
			jmp done
			not_supported:
			mov				al,				false
			done:

			ret

uXm_has_MPX endp

	end ;.code