
	include uXmx86asm.inc

	.code
			align 8
uXm_xgetbv proto __veccall

			align 8
uXm_xgetbv proc __veccall

	ifndef __X64__
			;mov				ecx,			esp
			xgetbv
			;db				0FH,			01H,			0D0H         ; XGETBV
	else
			xgetbv
			shl				rdx,			32					; 00000020H
			or				rax,			rdx
	endif ;__X64__

			ret

uXm_xgetbv endp

	end