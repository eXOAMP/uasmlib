
	include uXmx86asm.inc
	
	.xmm
	option arch:sse
	option evex:0

	.data
	
		m128fdshufpsjmptable isize_t	offset m128fdshufps_0, offset m128fdshufps_1, offset m128fdshufps_2, offset m128fdshufps_3, offset m128fdshufps_4, offset m128fdshufps_5, \
									offset m128fdshufps_6, offset m128fdshufps_7, offset m128fdshufps_8, offset m128fdshufps_9, offset m128fdshufps_10, offset m128fdshufps_11, \
									offset m128fdshufps_12, offset m128fdshufps_13, offset m128fdshufps_14, offset m128fdshufps_15, offset m128fdshufps_16, offset m128fdshufps_17, \
									offset m128fdshufps_18, offset m128fdshufps_19, offset m128fdshufps_20, offset m128fdshufps_21, offset m128fdshufps_22, offset m128fdshufps_23, \
									offset m128fdshufps_24, offset m128fdshufps_25, offset m128fdshufps_26, offset m128fdshufps_27, offset m128fdshufps_28, offset m128fdshufps_29, \
									offset m128fdshufps_30, offset m128fdshufps_31, offset m128fdshufps_32, offset m128fdshufps_33, offset m128fdshufps_34, offset m128fdshufps_35, \
									offset m128fdshufps_36, offset m128fdshufps_37, offset m128fdshufps_38, offset m128fdshufps_39, offset m128fdshufps_40, offset m128fdshufps_41, \
									offset m128fdshufps_42, offset m128fdshufps_43, offset m128fdshufps_44, offset m128fdshufps_45, offset m128fdshufps_46, offset m128fdshufps_47, \
									offset m128fdshufps_48, offset m128fdshufps_49, offset m128fdshufps_50, offset m128fdshufps_51, offset m128fdshufps_52, offset m128fdshufps_53, \
									offset m128fdshufps_54, offset m128fdshufps_55, offset m128fdshufps_56, offset m128fdshufps_57, offset m128fdshufps_58, offset m128fdshufps_59, \
									offset m128fdshufps_60, offset m128fdshufps_61, offset m128fdshufps_62, offset m128fdshufps_63, offset m128fdshufps_64, offset m128fdshufps_65, \
									offset m128fdshufps_66, offset m128fdshufps_67, offset m128fdshufps_68, offset m128fdshufps_69, offset m128fdshufps_70, offset m128fdshufps_71, \
									offset m128fdshufps_72, offset m128fdshufps_73, offset m128fdshufps_74, offset m128fdshufps_75, offset m128fdshufps_76, offset m128fdshufps_77, \
									offset m128fdshufps_78, offset m128fdshufps_79, offset m128fdshufps_80, offset m128fdshufps_81, offset m128fdshufps_82, offset m128fdshufps_83, \
									offset m128fdshufps_84, offset m128fdshufps_85, offset m128fdshufps_86, offset m128fdshufps_87, offset m128fdshufps_88, offset m128fdshufps_89, \
									offset m128fdshufps_90, offset m128fdshufps_91, offset m128fdshufps_92, offset m128fdshufps_93, offset m128fdshufps_94, offset m128fdshufps_95, \
									offset m128fdshufps_96, offset m128fdshufps_97, offset m128fdshufps_98, offset m128fdshufps_99, offset m128fdshufps_100, offset m128fdshufps_101, \
									offset m128fdshufps_102, offset m128fdshufps_103, offset m128fdshufps_104, offset m128fdshufps_105, offset m128fdshufps_106, offset m128fdshufps_107, \
									offset m128fdshufps_108, offset m128fdshufps_109, offset m128fdshufps_110, offset m128fdshufps_111, offset m128fdshufps_112, offset m128fdshufps_113, \
									offset m128fdshufps_114, offset m128fdshufps_115, offset m128fdshufps_116, offset m128fdshufps_117, offset m128fdshufps_118, offset m128fdshufps_119, \
									offset m128fdshufps_120, offset m128fdshufps_121, offset m128fdshufps_122, offset m128fdshufps_123, offset m128fdshufps_124, offset m128fdshufps_125, \
									offset m128fdshufps_126, offset m128fdshufps_127, offset m128fdshufps_128, offset m128fdshufps_129, offset m128fdshufps_130, offset m128fdshufps_131, \
									offset m128fdshufps_132, offset m128fdshufps_133, offset m128fdshufps_134, offset m128fdshufps_135, offset m128fdshufps_136, offset m128fdshufps_137, \
									offset m128fdshufps_138, offset m128fdshufps_139, offset m128fdshufps_140, offset m128fdshufps_141, offset m128fdshufps_142, offset m128fdshufps_143, \
									offset m128fdshufps_144, offset m128fdshufps_145, offset m128fdshufps_146, offset m128fdshufps_147, offset m128fdshufps_148, offset m128fdshufps_149, \
									offset m128fdshufps_150, offset m128fdshufps_151, offset m128fdshufps_152, offset m128fdshufps_153, offset m128fdshufps_154, offset m128fdshufps_155, \
									offset m128fdshufps_156, offset m128fdshufps_157, offset m128fdshufps_158, offset m128fdshufps_159, offset m128fdshufps_160, offset m128fdshufps_161, \
									offset m128fdshufps_162, offset m128fdshufps_163, offset m128fdshufps_164, offset m128fdshufps_165, offset m128fdshufps_166, offset m128fdshufps_167, \
									offset m128fdshufps_168, offset m128fdshufps_169, offset m128fdshufps_170, offset m128fdshufps_171, offset m128fdshufps_172, offset m128fdshufps_173, \
									offset m128fdshufps_174, offset m128fdshufps_175, offset m128fdshufps_176, offset m128fdshufps_177, offset m128fdshufps_178, offset m128fdshufps_179, \
									offset m128fdshufps_180, offset m128fdshufps_181, offset m128fdshufps_182, offset m128fdshufps_183, offset m128fdshufps_184, offset m128fdshufps_185, \
									offset m128fdshufps_186, offset m128fdshufps_187, offset m128fdshufps_188, offset m128fdshufps_189, offset m128fdshufps_190, offset m128fdshufps_191, \
									offset m128fdshufps_192, offset m128fdshufps_193, offset m128fdshufps_194, offset m128fdshufps_195, offset m128fdshufps_196, offset m128fdshufps_197, \
									offset m128fdshufps_198, offset m128fdshufps_199, offset m128fdshufps_200, offset m128fdshufps_201, offset m128fdshufps_202, offset m128fdshufps_203, \
									offset m128fdshufps_204, offset m128fdshufps_205, offset m128fdshufps_206, offset m128fdshufps_207, offset m128fdshufps_208, offset m128fdshufps_209, \
									offset m128fdshufps_210, offset m128fdshufps_211, offset m128fdshufps_212, offset m128fdshufps_213, offset m128fdshufps_214, offset m128fdshufps_215, \
									offset m128fdshufps_216, offset m128fdshufps_217, offset m128fdshufps_218, offset m128fdshufps_219, offset m128fdshufps_220, offset m128fdshufps_221, \
									offset m128fdshufps_222, offset m128fdshufps_223, offset m128fdshufps_224, offset m128fdshufps_225, offset m128fdshufps_226, offset m128fdshufps_227, \
									offset m128fdshufps_228, offset m128fdshufps_229, offset m128fdshufps_230, offset m128fdshufps_231, offset m128fdshufps_232, offset m128fdshufps_233, \
									offset m128fdshufps_234, offset m128fdshufps_235, offset m128fdshufps_236, offset m128fdshufps_237, offset m128fdshufps_238, offset m128fdshufps_239, \
									offset m128fdshufps_240, offset m128fdshufps_241, offset m128fdshufps_242, offset m128fdshufps_243, offset m128fdshufps_244, offset m128fdshufps_245, \
									offset m128fdshufps_246, offset m128fdshufps_247, offset m128fdshufps_248, offset m128fdshufps_249, offset m128fdshufps_250, offset m128fdshufps_251, \
									offset m128fdshufps_252, offset m128fdshufps_253, offset m128fdshufps_254, offset m128fdshufps_255				
				
	.code

;******************
; Proto
;******************

_uXm_m128fd_shuffle_0000_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_shuffle_0001_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_shuffle_0002_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_shuffle_0003_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_shuffle_0010_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_shuffle_0011_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_shuffle_0012_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_shuffle_0013_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_shuffle_0020_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_shuffle_0021_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_shuffle_0022_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_shuffle_0023_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_shuffle_0030_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_shuffle_0031_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_shuffle_0032_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_shuffle_0033_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_shuffle_0100_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_shuffle_0101_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_shuffle_0102_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_shuffle_0103_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_shuffle_0110_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_shuffle_0111_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_shuffle_0112_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_shuffle_0113_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_shuffle_0120_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_shuffle_0121_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_shuffle_0122_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_shuffle_0123_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_shuffle_0130_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_shuffle_0131_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_shuffle_0132_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_shuffle_0133_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_shuffle_0200_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_shuffle_0201_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_shuffle_0202_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_shuffle_0203_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_shuffle_0210_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_shuffle_0211_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_shuffle_0212_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_shuffle_0213_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_shuffle_0220_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_shuffle_0221_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_shuffle_0222_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_shuffle_0223_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_shuffle_0230_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_shuffle_0231_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_shuffle_0232_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_shuffle_0233_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_shuffle_0300_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_shuffle_0301_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_shuffle_0302_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_shuffle_0303_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_shuffle_0310_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_shuffle_0311_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_shuffle_0312_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_shuffle_0313_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_shuffle_0320_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_shuffle_0321_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_shuffle_0322_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_shuffle_0323_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_shuffle_0330_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_shuffle_0331_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_shuffle_0332_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_shuffle_0333_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_shuffle_1000_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_shuffle_1001_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_shuffle_1002_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_shuffle_1003_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_shuffle_1010_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_shuffle_1011_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_shuffle_1012_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_shuffle_1013_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_shuffle_1020_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_shuffle_1021_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_shuffle_1022_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_shuffle_1023_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_shuffle_1030_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_shuffle_1031_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_shuffle_1032_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_shuffle_1033_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_shuffle_1100_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_shuffle_1101_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_shuffle_1102_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_shuffle_1103_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_shuffle_1110_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_shuffle_1111_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_shuffle_1112_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_shuffle_1113_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_shuffle_1120_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_shuffle_1121_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_shuffle_1122_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_shuffle_1123_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_shuffle_1130_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_shuffle_1131_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_shuffle_1132_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_shuffle_1133_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_shuffle_1200_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_shuffle_1201_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_shuffle_1202_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_shuffle_1203_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_shuffle_1210_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_shuffle_1211_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_shuffle_1212_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_shuffle_1213_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_shuffle_1220_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_shuffle_1221_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_shuffle_1222_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_shuffle_1223_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_shuffle_1230_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_shuffle_1231_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_shuffle_1232_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_shuffle_1233_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_shuffle_1300_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_shuffle_1301_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_shuffle_1302_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_shuffle_1303_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_shuffle_1310_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_shuffle_1311_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_shuffle_1312_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_shuffle_1313_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_shuffle_1320_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_shuffle_1321_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_shuffle_1322_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_shuffle_1323_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_shuffle_1330_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_shuffle_1331_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_shuffle_1332_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_shuffle_1333_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_shuffle_2000_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_shuffle_2001_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_shuffle_2002_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_shuffle_2003_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_shuffle_2010_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_shuffle_2011_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_shuffle_2012_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_shuffle_2013_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_shuffle_2020_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_shuffle_2021_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_shuffle_2022_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_shuffle_2023_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_shuffle_2030_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_shuffle_2031_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_shuffle_2032_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_shuffle_2033_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_shuffle_2100_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_shuffle_2101_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_shuffle_2102_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword 
_uXm_m128fd_shuffle_2103_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_shuffle_2110_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_shuffle_2111_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_shuffle_2112_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_shuffle_2113_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_shuffle_2120_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_shuffle_2121_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_shuffle_2122_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword 
_uXm_m128fd_shuffle_2123_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_shuffle_2130_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_shuffle_2131_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_shuffle_2132_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_shuffle_2133_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_shuffle_2200_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_shuffle_2201_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_shuffle_2202_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_shuffle_2203_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_shuffle_2210_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_shuffle_2211_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_shuffle_2212_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_shuffle_2213_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_shuffle_2220_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_shuffle_2221_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_shuffle_2222_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_shuffle_2223_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_shuffle_2230_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_shuffle_2231_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_shuffle_2232_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword 
_uXm_m128fd_shuffle_2233_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_shuffle_2300_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_shuffle_2301_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_shuffle_2302_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_shuffle_2303_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_shuffle_2310_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_shuffle_2311_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_shuffle_2312_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_shuffle_2313_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_shuffle_2320_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_shuffle_2321_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_shuffle_2322_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_shuffle_2323_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_shuffle_2330_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_shuffle_2331_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_shuffle_2332_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_shuffle_2333_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_shuffle_3000_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_shuffle_3001_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_shuffle_3002_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_shuffle_3003_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_shuffle_3010_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_shuffle_3011_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_shuffle_3012_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_shuffle_3013_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_shuffle_3020_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_shuffle_3021_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_shuffle_3022_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_shuffle_3023_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_shuffle_3030_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_shuffle_3031_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_shuffle_3032_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_shuffle_3033_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_shuffle_3100_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_shuffle_3101_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_shuffle_3102_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_shuffle_3103_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_shuffle_3110_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_shuffle_3111_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_shuffle_3112_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_shuffle_3113_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_shuffle_3120_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_shuffle_3121_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_shuffle_3122_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_shuffle_3123_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_shuffle_3130_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_shuffle_3131_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_shuffle_3132_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_shuffle_3133_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_shuffle_3200_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_shuffle_3201_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_shuffle_3202_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_shuffle_3203_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_shuffle_3210_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_shuffle_3211_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_shuffle_3212_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_shuffle_3213_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_shuffle_3220_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_shuffle_3221_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_shuffle_3222_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_shuffle_3223_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_shuffle_3230_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_shuffle_3231_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_shuffle_3232_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_shuffle_3233_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_shuffle_3300_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_shuffle_3301_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_shuffle_3302_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_shuffle_3303_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_shuffle_3310_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_shuffle_3311_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_shuffle_3312_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_shuffle_3313_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_shuffle_3320_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_shuffle_3321_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_shuffle_3322_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_shuffle_3323_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_shuffle_3330_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_shuffle_3331_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_shuffle_3332_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_shuffle_3333_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_shuffle_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword, _Imm8:dword

;******************
; Proc
;******************
	
_uXm_m128fd_shuffle_0000_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			shufps				xmm0,			xmm1,			0
			ret
_uXm_m128fd_shuffle_0000_ps endp

_uXm_m128fd_shuffle_0001_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			shufps				xmm0,			xmm1,			1
			ret
_uXm_m128fd_shuffle_0001_ps endp

_uXm_m128fd_shuffle_0002_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			shufps				xmm0,			xmm1,			2
			ret
_uXm_m128fd_shuffle_0002_ps endp

_uXm_m128fd_shuffle_0003_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			shufps				xmm0,			xmm1,			3
			ret
_uXm_m128fd_shuffle_0003_ps endp

_uXm_m128fd_shuffle_0010_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			shufps				xmm0,			xmm1,			4
			ret
_uXm_m128fd_shuffle_0010_ps endp

_uXm_m128fd_shuffle_0011_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			shufps				xmm0,			xmm1,			5
			ret
_uXm_m128fd_shuffle_0011_ps endp

_uXm_m128fd_shuffle_0012_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			shufps				xmm0,			xmm1,			6
			ret
_uXm_m128fd_shuffle_0012_ps endp

_uXm_m128fd_shuffle_0013_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			shufps				xmm0,			xmm1,			7
			ret
_uXm_m128fd_shuffle_0013_ps endp

_uXm_m128fd_shuffle_0020_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			shufps				xmm0,			xmm1,			8
			ret
_uXm_m128fd_shuffle_0020_ps endp

_uXm_m128fd_shuffle_0021_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			shufps				xmm0,			xmm1,			9
			ret
_uXm_m128fd_shuffle_0021_ps endp

_uXm_m128fd_shuffle_0022_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			shufps				xmm0,			xmm1,			10
			ret
_uXm_m128fd_shuffle_0022_ps endp

_uXm_m128fd_shuffle_0023_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			shufps				xmm0,			xmm1,			11
			ret
_uXm_m128fd_shuffle_0023_ps endp

_uXm_m128fd_shuffle_0030_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			shufps				xmm0,			xmm1,			12
			ret
_uXm_m128fd_shuffle_0030_ps endp

_uXm_m128fd_shuffle_0031_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			shufps				xmm0,			xmm1,			13
			ret
_uXm_m128fd_shuffle_0031_ps endp

_uXm_m128fd_shuffle_0032_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			shufps				xmm0,			xmm1,			14
			ret
_uXm_m128fd_shuffle_0032_ps endp

_uXm_m128fd_shuffle_0033_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			shufps				xmm0,			xmm1,			15
			ret
_uXm_m128fd_shuffle_0033_ps endp

_uXm_m128fd_shuffle_0100_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			shufps				xmm0,			xmm1,			16
			ret
_uXm_m128fd_shuffle_0100_ps endp

_uXm_m128fd_shuffle_0101_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			shufps				xmm0,			xmm1,			17
			ret
_uXm_m128fd_shuffle_0101_ps endp

_uXm_m128fd_shuffle_0102_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			shufps				xmm0,			xmm1,			18
			ret
_uXm_m128fd_shuffle_0102_ps endp

_uXm_m128fd_shuffle_0103_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			shufps				xmm0,			xmm1,			19
			ret
_uXm_m128fd_shuffle_0103_ps endp

_uXm_m128fd_shuffle_0110_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			shufps				xmm0,			xmm1,			20
			ret
_uXm_m128fd_shuffle_0110_ps endp

_uXm_m128fd_shuffle_0111_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			shufps				xmm0,			xmm1,			21
			ret
_uXm_m128fd_shuffle_0111_ps endp

_uXm_m128fd_shuffle_0112_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			shufps				xmm0,			xmm1,			22
			ret
_uXm_m128fd_shuffle_0112_ps endp

_uXm_m128fd_shuffle_0113_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			shufps				xmm0,			xmm1,			23
			ret
_uXm_m128fd_shuffle_0113_ps endp

_uXm_m128fd_shuffle_0120_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			shufps				xmm0,			xmm1,			24
			ret
_uXm_m128fd_shuffle_0120_ps endp

_uXm_m128fd_shuffle_0121_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			shufps				xmm0,			xmm1,			25
			ret
_uXm_m128fd_shuffle_0121_ps endp

_uXm_m128fd_shuffle_0122_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			shufps				xmm0,			xmm1,			26
			ret
_uXm_m128fd_shuffle_0122_ps endp

_uXm_m128fd_shuffle_0123_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			shufps				xmm0,			xmm1,			27
			ret
_uXm_m128fd_shuffle_0123_ps endp

_uXm_m128fd_shuffle_0130_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			shufps				xmm0,			xmm1,			28
			ret
_uXm_m128fd_shuffle_0130_ps endp

_uXm_m128fd_shuffle_0131_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			shufps				xmm0,			xmm1,			29
			ret
_uXm_m128fd_shuffle_0131_ps endp

_uXm_m128fd_shuffle_0132_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			shufps				xmm0,			xmm1,			30
			ret
_uXm_m128fd_shuffle_0132_ps endp

_uXm_m128fd_shuffle_0133_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			shufps				xmm0,			xmm1,			31
			ret
_uXm_m128fd_shuffle_0133_ps endp

_uXm_m128fd_shuffle_0200_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			shufps				xmm0,			xmm1,			32
			ret
_uXm_m128fd_shuffle_0200_ps endp

_uXm_m128fd_shuffle_0201_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			shufps				xmm0,			xmm1,			33
			ret
_uXm_m128fd_shuffle_0201_ps endp

_uXm_m128fd_shuffle_0202_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			shufps				xmm0,			xmm1,			34
			ret
_uXm_m128fd_shuffle_0202_ps endp

_uXm_m128fd_shuffle_0203_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			shufps				xmm0,			xmm1,			35
			ret
_uXm_m128fd_shuffle_0203_ps endp

_uXm_m128fd_shuffle_0210_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			shufps				xmm0,			xmm1,			36
			ret
_uXm_m128fd_shuffle_0210_ps endp

_uXm_m128fd_shuffle_0211_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			shufps				xmm0,			xmm1,			37
			ret
_uXm_m128fd_shuffle_0211_ps endp

_uXm_m128fd_shuffle_0212_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			shufps				xmm0,			xmm1,			38
			ret
_uXm_m128fd_shuffle_0212_ps endp

_uXm_m128fd_shuffle_0213_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			shufps				xmm0,			xmm1,			39
			ret
_uXm_m128fd_shuffle_0213_ps endp

_uXm_m128fd_shuffle_0220_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			shufps				xmm0,			xmm1,			40
			ret
_uXm_m128fd_shuffle_0220_ps endp

_uXm_m128fd_shuffle_0221_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			shufps				xmm0,			xmm1,			41
			ret
_uXm_m128fd_shuffle_0221_ps endp

_uXm_m128fd_shuffle_0222_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			shufps				xmm0,			xmm1,			42
			ret
_uXm_m128fd_shuffle_0222_ps endp

_uXm_m128fd_shuffle_0223_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			shufps				xmm0,			xmm1,			43
			ret
_uXm_m128fd_shuffle_0223_ps endp

_uXm_m128fd_shuffle_0230_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			shufps				xmm0,			xmm1,			44
			ret
_uXm_m128fd_shuffle_0230_ps endp

_uXm_m128fd_shuffle_0231_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			shufps				xmm0,			xmm1,			45
			ret
_uXm_m128fd_shuffle_0231_ps endp

_uXm_m128fd_shuffle_0232_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			shufps				xmm0,			xmm1,			46
			ret
_uXm_m128fd_shuffle_0232_ps endp

_uXm_m128fd_shuffle_0233_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			shufps				xmm0,			xmm1,			47
			ret
_uXm_m128fd_shuffle_0233_ps endp

_uXm_m128fd_shuffle_0300_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			shufps				xmm0,			xmm1,			48
			ret
_uXm_m128fd_shuffle_0300_ps endp

_uXm_m128fd_shuffle_0301_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			shufps				xmm0,			xmm1,			49
			ret
_uXm_m128fd_shuffle_0301_ps endp

_uXm_m128fd_shuffle_0302_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			shufps				xmm0,			xmm1,			50
			ret
_uXm_m128fd_shuffle_0302_ps endp

_uXm_m128fd_shuffle_0303_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			shufps				xmm0,			xmm1,			51
			ret
_uXm_m128fd_shuffle_0303_ps endp

_uXm_m128fd_shuffle_0310_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			shufps				xmm0,			xmm1,			52
			ret
_uXm_m128fd_shuffle_0310_ps endp

_uXm_m128fd_shuffle_0311_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			shufps				xmm0,			xmm1,			53
			ret
_uXm_m128fd_shuffle_0311_ps endp

_uXm_m128fd_shuffle_0312_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			shufps				xmm0,			xmm1,			54
			ret
_uXm_m128fd_shuffle_0312_ps endp

_uXm_m128fd_shuffle_0313_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			shufps				xmm0,			xmm1,			55
			ret
_uXm_m128fd_shuffle_0313_ps endp

_uXm_m128fd_shuffle_0320_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			shufps				xmm0,			xmm1,			56
			ret
_uXm_m128fd_shuffle_0320_ps endp

_uXm_m128fd_shuffle_0321_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			shufps				xmm0,			xmm1,			57
			ret
_uXm_m128fd_shuffle_0321_ps endp

_uXm_m128fd_shuffle_0322_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			shufps				xmm0,			xmm1,			58
			ret
_uXm_m128fd_shuffle_0322_ps endp

_uXm_m128fd_shuffle_0323_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			shufps				xmm0,			xmm1,			59
			ret
_uXm_m128fd_shuffle_0323_ps endp

_uXm_m128fd_shuffle_0330_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			shufps				xmm0,			xmm1,			60
			ret
_uXm_m128fd_shuffle_0330_ps endp

_uXm_m128fd_shuffle_0331_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			shufps				xmm0,			xmm1,			61
			ret
_uXm_m128fd_shuffle_0331_ps endp

_uXm_m128fd_shuffle_0332_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			shufps				xmm0,			xmm1,			62
			ret
_uXm_m128fd_shuffle_0332_ps endp

_uXm_m128fd_shuffle_0333_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			shufps				xmm0,			xmm1,			63
			ret
_uXm_m128fd_shuffle_0333_ps endp

_uXm_m128fd_shuffle_1000_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			shufps				xmm0,			xmm1,			64
			ret
_uXm_m128fd_shuffle_1000_ps endp

_uXm_m128fd_shuffle_1001_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			shufps				xmm0,			xmm1,			65
			ret
_uXm_m128fd_shuffle_1001_ps endp

_uXm_m128fd_shuffle_1002_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			shufps				xmm0,			xmm1,			66
			ret
_uXm_m128fd_shuffle_1002_ps endp

_uXm_m128fd_shuffle_1003_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			shufps				xmm0,			xmm1,			67
			ret
_uXm_m128fd_shuffle_1003_ps endp

_uXm_m128fd_shuffle_1010_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			shufps				xmm0,			xmm1,			68
			ret
_uXm_m128fd_shuffle_1010_ps endp

_uXm_m128fd_shuffle_1011_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			shufps				xmm0,			xmm1,			69
			ret
_uXm_m128fd_shuffle_1011_ps endp

_uXm_m128fd_shuffle_1012_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			shufps				xmm0,			xmm1,			70
			ret
_uXm_m128fd_shuffle_1012_ps endp

_uXm_m128fd_shuffle_1013_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			shufps				xmm0,			xmm1,			71
			ret
_uXm_m128fd_shuffle_1013_ps endp

_uXm_m128fd_shuffle_1020_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			shufps				xmm0,			xmm1,			72
			ret
_uXm_m128fd_shuffle_1020_ps endp

_uXm_m128fd_shuffle_1021_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			shufps				xmm0,			xmm1,			73
			ret
_uXm_m128fd_shuffle_1021_ps endp

_uXm_m128fd_shuffle_1022_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			shufps				xmm0,			xmm1,			74
			ret
_uXm_m128fd_shuffle_1022_ps endp

_uXm_m128fd_shuffle_1023_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			shufps				xmm0,			xmm1,			75
			ret
_uXm_m128fd_shuffle_1023_ps endp

_uXm_m128fd_shuffle_1030_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			shufps				xmm0,			xmm1,			76
			ret
_uXm_m128fd_shuffle_1030_ps endp

_uXm_m128fd_shuffle_1031_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			shufps				xmm0,			xmm1,			77
			ret
_uXm_m128fd_shuffle_1031_ps endp

_uXm_m128fd_shuffle_1032_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			shufps				xmm0,			xmm1,			78
			ret
_uXm_m128fd_shuffle_1032_ps endp

_uXm_m128fd_shuffle_1033_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			shufps				xmm0,			xmm1,			79
			ret
_uXm_m128fd_shuffle_1033_ps endp

_uXm_m128fd_shuffle_1100_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			shufps				xmm0,			xmm1,			80
			ret
_uXm_m128fd_shuffle_1100_ps endp

_uXm_m128fd_shuffle_1101_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			shufps				xmm0,			xmm1,			81
			ret
_uXm_m128fd_shuffle_1101_ps endp

_uXm_m128fd_shuffle_1102_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			shufps				xmm0,			xmm1,			82
			ret
_uXm_m128fd_shuffle_1102_ps endp

_uXm_m128fd_shuffle_1103_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			shufps				xmm0,			xmm1,			83
			ret
_uXm_m128fd_shuffle_1103_ps endp

_uXm_m128fd_shuffle_1110_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			shufps				xmm0,			xmm1,			84
			ret
_uXm_m128fd_shuffle_1110_ps endp

_uXm_m128fd_shuffle_1111_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			shufps				xmm0,			xmm1,			85
			ret
_uXm_m128fd_shuffle_1111_ps endp

_uXm_m128fd_shuffle_1112_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			shufps				xmm0,			xmm1,			86
			ret
_uXm_m128fd_shuffle_1112_ps endp

_uXm_m128fd_shuffle_1113_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			shufps				xmm0,			xmm1,			87
			ret
_uXm_m128fd_shuffle_1113_ps endp

_uXm_m128fd_shuffle_1120_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			shufps				xmm0,			xmm1,			88
			ret
_uXm_m128fd_shuffle_1120_ps endp

_uXm_m128fd_shuffle_1121_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			shufps				xmm0,			xmm1,			89
			ret
_uXm_m128fd_shuffle_1121_ps endp

_uXm_m128fd_shuffle_1122_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			shufps				xmm0,			xmm1,			90
			ret
_uXm_m128fd_shuffle_1122_ps endp

_uXm_m128fd_shuffle_1123_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			shufps				xmm0,			xmm1,			91
			ret
_uXm_m128fd_shuffle_1123_ps endp

_uXm_m128fd_shuffle_1130_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			shufps				xmm0,			xmm1,			92
			ret
_uXm_m128fd_shuffle_1130_ps endp

_uXm_m128fd_shuffle_1131_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			shufps				xmm0,			xmm1,			93
			ret
_uXm_m128fd_shuffle_1131_ps endp

_uXm_m128fd_shuffle_1132_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			shufps				xmm0,			xmm1,			94
			ret
_uXm_m128fd_shuffle_1132_ps endp

_uXm_m128fd_shuffle_1133_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			shufps				xmm0,			xmm1,			95
			ret
_uXm_m128fd_shuffle_1133_ps endp

_uXm_m128fd_shuffle_1200_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			shufps				xmm0,			xmm1,			96
			ret
_uXm_m128fd_shuffle_1200_ps endp

_uXm_m128fd_shuffle_1201_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			shufps				xmm0,			xmm1,			97
			ret
_uXm_m128fd_shuffle_1201_ps endp

_uXm_m128fd_shuffle_1202_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			shufps				xmm0,			xmm1,			98
			ret
_uXm_m128fd_shuffle_1202_ps endp

_uXm_m128fd_shuffle_1203_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			shufps				xmm0,			xmm1,			99
			ret
_uXm_m128fd_shuffle_1203_ps endp

_uXm_m128fd_shuffle_1210_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			shufps				xmm0,			xmm1,			100
			ret
_uXm_m128fd_shuffle_1210_ps endp

_uXm_m128fd_shuffle_1211_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			shufps				xmm0,			xmm1,			101
			ret
_uXm_m128fd_shuffle_1211_ps endp

_uXm_m128fd_shuffle_1212_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			shufps				xmm0,			xmm1,			102
			ret
_uXm_m128fd_shuffle_1212_ps endp

_uXm_m128fd_shuffle_1213_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			shufps				xmm0,			xmm1,			103
			ret
_uXm_m128fd_shuffle_1213_ps endp

_uXm_m128fd_shuffle_1220_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			shufps				xmm0,			xmm1,			104
			ret
_uXm_m128fd_shuffle_1220_ps endp

_uXm_m128fd_shuffle_1221_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			shufps				xmm0,			xmm1,			105
			ret
_uXm_m128fd_shuffle_1221_ps endp

_uXm_m128fd_shuffle_1222_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			shufps				xmm0,			xmm1,			106
			ret
_uXm_m128fd_shuffle_1222_ps endp

_uXm_m128fd_shuffle_1223_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			shufps				xmm0,			xmm1,			107
			ret
_uXm_m128fd_shuffle_1223_ps endp

_uXm_m128fd_shuffle_1230_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			shufps				xmm0,			xmm1,			108
			ret
_uXm_m128fd_shuffle_1230_ps endp

_uXm_m128fd_shuffle_1231_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			shufps				xmm0,			xmm1,			109
			ret
_uXm_m128fd_shuffle_1231_ps endp

_uXm_m128fd_shuffle_1232_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			shufps				xmm0,			xmm1,			110
			ret
_uXm_m128fd_shuffle_1232_ps endp

_uXm_m128fd_shuffle_1233_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			shufps				xmm0,			xmm1,			111
			ret
_uXm_m128fd_shuffle_1233_ps endp

_uXm_m128fd_shuffle_1300_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			shufps				xmm0,			xmm1,			112
			ret
_uXm_m128fd_shuffle_1300_ps endp

_uXm_m128fd_shuffle_1301_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			shufps				xmm0,			xmm1,			113
			ret
_uXm_m128fd_shuffle_1301_ps endp

_uXm_m128fd_shuffle_1302_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			shufps				xmm0,			xmm1,			114
			ret
_uXm_m128fd_shuffle_1302_ps endp

_uXm_m128fd_shuffle_1303_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			shufps				xmm0,			xmm1,			115
			ret
_uXm_m128fd_shuffle_1303_ps endp

_uXm_m128fd_shuffle_1310_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			shufps				xmm0,			xmm1,			116
			ret
_uXm_m128fd_shuffle_1310_ps endp

_uXm_m128fd_shuffle_1311_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			shufps				xmm0,			xmm1,			117
			ret
_uXm_m128fd_shuffle_1311_ps endp

_uXm_m128fd_shuffle_1312_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			shufps				xmm0,			xmm1,			118
			ret
_uXm_m128fd_shuffle_1312_ps endp

_uXm_m128fd_shuffle_1313_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			shufps				xmm0,			xmm1,			119
			ret
_uXm_m128fd_shuffle_1313_ps endp

_uXm_m128fd_shuffle_1320_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			shufps				xmm0,			xmm1,			120
			ret
_uXm_m128fd_shuffle_1320_ps endp

_uXm_m128fd_shuffle_1321_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			shufps				xmm0,			xmm1,			121
			ret
_uXm_m128fd_shuffle_1321_ps endp

_uXm_m128fd_shuffle_1322_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			shufps				xmm0,			xmm1,			122
			ret
_uXm_m128fd_shuffle_1322_ps endp

_uXm_m128fd_shuffle_1323_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			shufps				xmm0,			xmm1,			123
			ret
_uXm_m128fd_shuffle_1323_ps endp

_uXm_m128fd_shuffle_1330_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			shufps				xmm0,			xmm1,			124
			ret
_uXm_m128fd_shuffle_1330_ps endp

_uXm_m128fd_shuffle_1331_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			shufps				xmm0,			xmm1,			125
			ret
_uXm_m128fd_shuffle_1331_ps endp

_uXm_m128fd_shuffle_1332_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			shufps				xmm0,			xmm1,			126
			ret
_uXm_m128fd_shuffle_1332_ps endp

_uXm_m128fd_shuffle_1333_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			shufps				xmm0,			xmm1,			127
			ret
_uXm_m128fd_shuffle_1333_ps endp

_uXm_m128fd_shuffle_2000_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			shufps				xmm0,			xmm1,			128
			ret
_uXm_m128fd_shuffle_2000_ps endp

_uXm_m128fd_shuffle_2001_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			shufps				xmm0,			xmm1,			129
			ret
_uXm_m128fd_shuffle_2001_ps endp

_uXm_m128fd_shuffle_2002_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			shufps				xmm0,			xmm1,			130
			ret
_uXm_m128fd_shuffle_2002_ps endp

_uXm_m128fd_shuffle_2003_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			shufps				xmm0,			xmm1,			131
			ret
_uXm_m128fd_shuffle_2003_ps endp

_uXm_m128fd_shuffle_2010_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			shufps				xmm0,			xmm1,			132
			ret
_uXm_m128fd_shuffle_2010_ps endp

_uXm_m128fd_shuffle_2011_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			shufps				xmm0,			xmm1,			133
			ret
_uXm_m128fd_shuffle_2011_ps endp

_uXm_m128fd_shuffle_2012_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			shufps				xmm0,			xmm1,			134
			ret
_uXm_m128fd_shuffle_2012_ps endp

_uXm_m128fd_shuffle_2013_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			shufps				xmm0,			xmm1,			135
			ret
_uXm_m128fd_shuffle_2013_ps endp

_uXm_m128fd_shuffle_2020_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			shufps				xmm0,			xmm1,			136
			ret
_uXm_m128fd_shuffle_2020_ps endp

_uXm_m128fd_shuffle_2021_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			shufps				xmm0,			xmm1,			137
			ret
_uXm_m128fd_shuffle_2021_ps endp

_uXm_m128fd_shuffle_2022_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			shufps				xmm0,			xmm1,			138
			ret
_uXm_m128fd_shuffle_2022_ps endp

_uXm_m128fd_shuffle_2023_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			shufps				xmm0,			xmm1,			139
			ret
_uXm_m128fd_shuffle_2023_ps endp

_uXm_m128fd_shuffle_2030_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			shufps				xmm0,			xmm1,			140
			ret
_uXm_m128fd_shuffle_2030_ps endp

_uXm_m128fd_shuffle_2031_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			shufps				xmm0,			xmm1,			141
			ret
_uXm_m128fd_shuffle_2031_ps endp

_uXm_m128fd_shuffle_2032_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			shufps				xmm0,			xmm1,			142
			ret
_uXm_m128fd_shuffle_2032_ps endp

_uXm_m128fd_shuffle_2033_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			shufps				xmm0,			xmm1,			143
			ret
_uXm_m128fd_shuffle_2033_ps endp

_uXm_m128fd_shuffle_2100_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			shufps				xmm0,			xmm1,			144
			ret
_uXm_m128fd_shuffle_2100_ps endp

_uXm_m128fd_shuffle_2101_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			shufps				xmm0,			xmm1,			145
			ret
_uXm_m128fd_shuffle_2101_ps endp

_uXm_m128fd_shuffle_2102_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword 
			shufps				xmm0,			xmm1,			146
			ret
_uXm_m128fd_shuffle_2102_ps endp

_uXm_m128fd_shuffle_2103_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			shufps				xmm0,			xmm1,			147
			ret
_uXm_m128fd_shuffle_2103_ps endp

_uXm_m128fd_shuffle_2110_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			shufps				xmm0,			xmm1,			148
			ret
_uXm_m128fd_shuffle_2110_ps endp

_uXm_m128fd_shuffle_2111_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			shufps				xmm0,			xmm1,			149
			ret
_uXm_m128fd_shuffle_2111_ps endp

_uXm_m128fd_shuffle_2112_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			shufps				xmm0,			xmm1,			150
			ret
_uXm_m128fd_shuffle_2112_ps endp

_uXm_m128fd_shuffle_2113_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			shufps				xmm0,			xmm1,			151
			ret
_uXm_m128fd_shuffle_2113_ps endp

_uXm_m128fd_shuffle_2120_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			shufps				xmm0,			xmm1,			152
			ret
_uXm_m128fd_shuffle_2120_ps endp

_uXm_m128fd_shuffle_2121_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			shufps				xmm0,			xmm1,			153
			ret
_uXm_m128fd_shuffle_2121_ps endp

_uXm_m128fd_shuffle_2122_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword 
			shufps				xmm0,			xmm1,			154
			ret
_uXm_m128fd_shuffle_2122_ps endp

_uXm_m128fd_shuffle_2123_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			shufps				xmm0,			xmm1,			155
			ret
_uXm_m128fd_shuffle_2123_ps endp

_uXm_m128fd_shuffle_2130_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			shufps				xmm0,			xmm1,			156
			ret
_uXm_m128fd_shuffle_2130_ps endp

_uXm_m128fd_shuffle_2131_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			shufps				xmm0,			xmm1,			157
			ret
_uXm_m128fd_shuffle_2131_ps endp

_uXm_m128fd_shuffle_2132_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			shufps				xmm0,			xmm1,			158
			ret
_uXm_m128fd_shuffle_2132_ps endp

_uXm_m128fd_shuffle_2133_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			shufps				xmm0,			xmm1,			159
			ret
_uXm_m128fd_shuffle_2133_ps endp

_uXm_m128fd_shuffle_2200_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			shufps				xmm0,			xmm1,			160
			ret
_uXm_m128fd_shuffle_2200_ps endp

_uXm_m128fd_shuffle_2201_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			shufps				xmm0,			xmm1,			161
			ret
_uXm_m128fd_shuffle_2201_ps endp

_uXm_m128fd_shuffle_2202_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			shufps				xmm0,			xmm1,			162
			ret
_uXm_m128fd_shuffle_2202_ps endp

_uXm_m128fd_shuffle_2203_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			shufps				xmm0,			xmm1,			163
			ret
_uXm_m128fd_shuffle_2203_ps endp

_uXm_m128fd_shuffle_2210_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			shufps				xmm0,			xmm1,			164
			ret
_uXm_m128fd_shuffle_2210_ps endp

_uXm_m128fd_shuffle_2211_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			shufps				xmm0,			xmm1,			165
			ret
_uXm_m128fd_shuffle_2211_ps endp

_uXm_m128fd_shuffle_2212_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			shufps				xmm0,			xmm1,			166
			ret
_uXm_m128fd_shuffle_2212_ps endp

_uXm_m128fd_shuffle_2213_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			shufps				xmm0,			xmm1,			167
			ret
_uXm_m128fd_shuffle_2213_ps endp

_uXm_m128fd_shuffle_2220_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			shufps				xmm0,			xmm1,			168
			ret
_uXm_m128fd_shuffle_2220_ps endp

_uXm_m128fd_shuffle_2221_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			shufps				xmm0,			xmm1,			169
			ret
_uXm_m128fd_shuffle_2221_ps endp

_uXm_m128fd_shuffle_2222_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			shufps				xmm0,			xmm1,			170
			ret
_uXm_m128fd_shuffle_2222_ps endp

_uXm_m128fd_shuffle_2223_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			shufps				xmm0,			xmm1,			171
			ret
_uXm_m128fd_shuffle_2223_ps endp

_uXm_m128fd_shuffle_2230_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			shufps				xmm0,			xmm1,			172
			ret
_uXm_m128fd_shuffle_2230_ps endp

_uXm_m128fd_shuffle_2231_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			shufps				xmm0,			xmm1,			173
			ret
_uXm_m128fd_shuffle_2231_ps endp

_uXm_m128fd_shuffle_2232_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword 
			shufps				xmm0,			xmm1,			174
			ret
_uXm_m128fd_shuffle_2232_ps endp

_uXm_m128fd_shuffle_2233_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			shufps				xmm0,			xmm1,			175
			ret
_uXm_m128fd_shuffle_2233_ps endp

_uXm_m128fd_shuffle_2300_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			shufps				xmm0,			xmm1,			176
			ret
_uXm_m128fd_shuffle_2300_ps endp

_uXm_m128fd_shuffle_2301_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			shufps				xmm0,			xmm1,			177
			ret
_uXm_m128fd_shuffle_2301_ps endp

_uXm_m128fd_shuffle_2302_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			shufps				xmm0,			xmm1,			178
			ret
_uXm_m128fd_shuffle_2302_ps endp

_uXm_m128fd_shuffle_2303_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			shufps				xmm0,			xmm1,			179
			ret
_uXm_m128fd_shuffle_2303_ps endp

_uXm_m128fd_shuffle_2310_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			shufps				xmm0,			xmm1,			180
			ret
_uXm_m128fd_shuffle_2310_ps endp

_uXm_m128fd_shuffle_2311_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			shufps				xmm0,			xmm1,			181
			ret
_uXm_m128fd_shuffle_2311_ps endp

_uXm_m128fd_shuffle_2312_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			shufps				xmm0,			xmm1,			182
			ret
_uXm_m128fd_shuffle_2312_ps endp

_uXm_m128fd_shuffle_2313_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			shufps				xmm0,			xmm1,			183
			ret
_uXm_m128fd_shuffle_2313_ps endp

_uXm_m128fd_shuffle_2320_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			shufps				xmm0,			xmm1,			184
			ret
_uXm_m128fd_shuffle_2320_ps endp

_uXm_m128fd_shuffle_2321_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			shufps				xmm0,			xmm1,			185
			ret
_uXm_m128fd_shuffle_2321_ps endp

_uXm_m128fd_shuffle_2322_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			shufps				xmm0,			xmm1,			186
			ret
_uXm_m128fd_shuffle_2322_ps endp

_uXm_m128fd_shuffle_2323_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			shufps				xmm0,			xmm1,			187
			ret
_uXm_m128fd_shuffle_2323_ps endp

_uXm_m128fd_shuffle_2330_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			shufps				xmm0,			xmm1,			188
			ret
_uXm_m128fd_shuffle_2330_ps endp

_uXm_m128fd_shuffle_2331_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			shufps				xmm0,			xmm1,			189
			ret
_uXm_m128fd_shuffle_2331_ps endp

_uXm_m128fd_shuffle_2332_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			shufps				xmm0,			xmm1,			190
			ret
_uXm_m128fd_shuffle_2332_ps endp

_uXm_m128fd_shuffle_2333_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			shufps				xmm0,			xmm1,			191
			ret
_uXm_m128fd_shuffle_2333_ps endp

_uXm_m128fd_shuffle_3000_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			shufps				xmm0,			xmm1,			192
			ret
_uXm_m128fd_shuffle_3000_ps endp

_uXm_m128fd_shuffle_3001_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			shufps				xmm0,			xmm1,			193
			ret
_uXm_m128fd_shuffle_3001_ps endp

_uXm_m128fd_shuffle_3002_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			shufps				xmm0,			xmm1,			194
			ret
_uXm_m128fd_shuffle_3002_ps endp

_uXm_m128fd_shuffle_3003_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			shufps				xmm0,			xmm1,			195
			ret
_uXm_m128fd_shuffle_3003_ps endp

_uXm_m128fd_shuffle_3010_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			shufps				xmm0,			xmm1,			196
			ret
_uXm_m128fd_shuffle_3010_ps endp

_uXm_m128fd_shuffle_3011_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			shufps				xmm0,			xmm1,			197
			ret
_uXm_m128fd_shuffle_3011_ps endp

_uXm_m128fd_shuffle_3012_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			shufps				xmm0,			xmm1,			198
			ret
_uXm_m128fd_shuffle_3012_ps endp

_uXm_m128fd_shuffle_3013_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			shufps				xmm0,			xmm1,			199
			ret
_uXm_m128fd_shuffle_3013_ps endp

_uXm_m128fd_shuffle_3020_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			shufps				xmm0,			xmm1,			200
			ret
_uXm_m128fd_shuffle_3020_ps endp

_uXm_m128fd_shuffle_3021_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			shufps				xmm0,			xmm1,			201
			ret
_uXm_m128fd_shuffle_3021_ps endp

_uXm_m128fd_shuffle_3022_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			shufps				xmm0,			xmm1,			202
			ret
_uXm_m128fd_shuffle_3022_ps endp

_uXm_m128fd_shuffle_3023_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			shufps				xmm0,			xmm1,			203
			ret
_uXm_m128fd_shuffle_3023_ps endp

_uXm_m128fd_shuffle_3030_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			shufps				xmm0,			xmm1,			204
			ret
_uXm_m128fd_shuffle_3030_ps endp

_uXm_m128fd_shuffle_3031_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			shufps				xmm0,			xmm1,			205
			ret
_uXm_m128fd_shuffle_3031_ps endp

_uXm_m128fd_shuffle_3032_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			shufps				xmm0,			xmm1,			206
			ret
_uXm_m128fd_shuffle_3032_ps endp

_uXm_m128fd_shuffle_3033_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			shufps				xmm0,			xmm1,			207
			ret
_uXm_m128fd_shuffle_3033_ps endp

_uXm_m128fd_shuffle_3100_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			shufps				xmm0,			xmm1,			208
			ret
_uXm_m128fd_shuffle_3100_ps endp

_uXm_m128fd_shuffle_3101_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			shufps				xmm0,			xmm1,			209
			ret
_uXm_m128fd_shuffle_3101_ps endp

_uXm_m128fd_shuffle_3102_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			shufps				xmm0,			xmm1,			210
			ret
_uXm_m128fd_shuffle_3102_ps endp

_uXm_m128fd_shuffle_3103_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			shufps				xmm0,			xmm1,			211
			ret
_uXm_m128fd_shuffle_3103_ps endp

_uXm_m128fd_shuffle_3110_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			shufps				xmm0,			xmm1,			212
			ret
_uXm_m128fd_shuffle_3110_ps endp

_uXm_m128fd_shuffle_3111_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			shufps				xmm0,			xmm1,			213
			ret
_uXm_m128fd_shuffle_3111_ps endp

_uXm_m128fd_shuffle_3112_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			shufps				xmm0,			xmm1,			214
			ret
_uXm_m128fd_shuffle_3112_ps endp

_uXm_m128fd_shuffle_3113_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			shufps				xmm0,			xmm1,			215
			ret
_uXm_m128fd_shuffle_3113_ps endp

_uXm_m128fd_shuffle_3120_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			shufps				xmm0,			xmm1,			216
			ret
_uXm_m128fd_shuffle_3120_ps endp

_uXm_m128fd_shuffle_3121_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			shufps				xmm0,			xmm1,			217
			ret
_uXm_m128fd_shuffle_3121_ps endp

_uXm_m128fd_shuffle_3122_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			shufps				xmm0,			xmm1,			218
			ret
_uXm_m128fd_shuffle_3122_ps endp

_uXm_m128fd_shuffle_3123_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			shufps				xmm0,			xmm1,			219
			ret
_uXm_m128fd_shuffle_3123_ps endp

_uXm_m128fd_shuffle_3130_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			shufps				xmm0,			xmm1,			220
			ret
_uXm_m128fd_shuffle_3130_ps endp

_uXm_m128fd_shuffle_3131_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			shufps				xmm0,			xmm1,			221
			ret
_uXm_m128fd_shuffle_3131_ps endp

_uXm_m128fd_shuffle_3132_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			shufps				xmm0,			xmm1,			222
			ret
_uXm_m128fd_shuffle_3132_ps endp

_uXm_m128fd_shuffle_3133_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			shufps				xmm0,			xmm1,			223
			ret
_uXm_m128fd_shuffle_3133_ps endp

_uXm_m128fd_shuffle_3200_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			shufps				xmm0,			xmm1,			224
			ret
_uXm_m128fd_shuffle_3200_ps endp

_uXm_m128fd_shuffle_3201_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			shufps				xmm0,			xmm1,			225
			ret
_uXm_m128fd_shuffle_3201_ps endp

_uXm_m128fd_shuffle_3202_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			shufps				xmm0,			xmm1,			226
			ret
_uXm_m128fd_shuffle_3202_ps endp

_uXm_m128fd_shuffle_3203_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			shufps				xmm0,			xmm1,			227
			ret
_uXm_m128fd_shuffle_3203_ps endp

_uXm_m128fd_shuffle_3210_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			shufps				xmm0,			xmm1,			228
			ret
_uXm_m128fd_shuffle_3210_ps endp

_uXm_m128fd_shuffle_3211_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			shufps				xmm0,			xmm1,			229
			ret
_uXm_m128fd_shuffle_3211_ps endp

_uXm_m128fd_shuffle_3212_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			shufps				xmm0,			xmm1,			230
			ret
_uXm_m128fd_shuffle_3212_ps endp

_uXm_m128fd_shuffle_3213_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			shufps				xmm0,			xmm1,			231
			ret
_uXm_m128fd_shuffle_3213_ps endp

_uXm_m128fd_shuffle_3220_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			shufps				xmm0,			xmm1,			232
			ret
_uXm_m128fd_shuffle_3220_ps endp

_uXm_m128fd_shuffle_3221_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			shufps				xmm0,			xmm1,			233
			ret
_uXm_m128fd_shuffle_3221_ps endp

_uXm_m128fd_shuffle_3222_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			shufps				xmm0,			xmm1,			234
			ret
_uXm_m128fd_shuffle_3222_ps endp

_uXm_m128fd_shuffle_3223_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			shufps				xmm0,			xmm1,			235
			ret
_uXm_m128fd_shuffle_3223_ps endp

_uXm_m128fd_shuffle_3230_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			shufps				xmm0,			xmm1,			236
			ret
_uXm_m128fd_shuffle_3230_ps endp

_uXm_m128fd_shuffle_3231_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			shufps				xmm0,			xmm1,			237
			ret
_uXm_m128fd_shuffle_3231_ps endp

_uXm_m128fd_shuffle_3232_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			shufps				xmm0,			xmm1,			238
			ret
_uXm_m128fd_shuffle_3232_ps endp

_uXm_m128fd_shuffle_3233_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			shufps				xmm0,			xmm1,			239
			ret
_uXm_m128fd_shuffle_3233_ps endp

_uXm_m128fd_shuffle_3300_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			shufps				xmm0,			xmm1,			240
			ret
_uXm_m128fd_shuffle_3300_ps endp

_uXm_m128fd_shuffle_3301_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			shufps				xmm0,			xmm1,			241
			ret
_uXm_m128fd_shuffle_3301_ps endp

_uXm_m128fd_shuffle_3302_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			shufps				xmm0,			xmm1,			242
			ret
_uXm_m128fd_shuffle_3302_ps endp

_uXm_m128fd_shuffle_3303_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			shufps				xmm0,			xmm1,			243
			ret
_uXm_m128fd_shuffle_3303_ps endp

_uXm_m128fd_shuffle_3310_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			shufps				xmm0,			xmm1,			244
			ret
_uXm_m128fd_shuffle_3310_ps endp

_uXm_m128fd_shuffle_3311_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			shufps				xmm0,			xmm1,			245
			ret
_uXm_m128fd_shuffle_3311_ps endp

_uXm_m128fd_shuffle_3312_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			shufps				xmm0,			xmm1,			246
			ret
_uXm_m128fd_shuffle_3312_ps endp

_uXm_m128fd_shuffle_3313_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			shufps				xmm0,			xmm1,			247
			ret
_uXm_m128fd_shuffle_3313_ps endp

_uXm_m128fd_shuffle_3320_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			shufps				xmm0,			xmm1,			248
			ret
_uXm_m128fd_shuffle_3320_ps endp

_uXm_m128fd_shuffle_3321_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			shufps				xmm0,			xmm1,			249
			ret
_uXm_m128fd_shuffle_3321_ps endp

_uXm_m128fd_shuffle_3322_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			shufps				xmm0,			xmm1,			250
			ret
_uXm_m128fd_shuffle_3322_ps endp

_uXm_m128fd_shuffle_3323_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			shufps				xmm0,			xmm1,			251
			ret
_uXm_m128fd_shuffle_3323_ps endp

_uXm_m128fd_shuffle_3330_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			shufps				xmm0,			xmm1,			252
			ret
_uXm_m128fd_shuffle_3330_ps endp

_uXm_m128fd_shuffle_3331_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			shufps				xmm0,			xmm1,			253
			ret
_uXm_m128fd_shuffle_3331_ps endp

_uXm_m128fd_shuffle_3332_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			shufps				xmm0,			xmm1,			254
			ret
_uXm_m128fd_shuffle_3332_ps endp

_uXm_m128fd_shuffle_3333_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			shufps				xmm0,			xmm1,			255
			ret
_uXm_m128fd_shuffle_3333_ps endp

_uXm_m128fd_shuffle_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword, _Imm8:dword
				
		;.if(rparam2 > 3)
		;	ret
		;.else

		ifndef __X64__
			movzx			eax,	byte ptr [rparam2]
			;mov				rbx,	dword ptr [rbx+rparam2*4]
			jmp		dword ptr [m128fdshufpsjmptable+eax*4]
		else
			;movzx			rax,	byte ptr [rparam2]
			lea				rbx,	qword ptr [m128fdshufpsjmptable]
			mov				rbx,	qword ptr [rbx+rparam2*8]
			jmp				rbx
		endif
		
		m128fdshufps_0 label size_t
			shufps				xmm0,			xmm1,			0
			ret
		m128fdshufps_1 label size_t
			shufps				xmm0,			xmm1,			1
			ret
		m128fdshufps_2 label size_t
			shufps				xmm0,			xmm1,			2
			ret
		m128fdshufps_3 label size_t
			shufps				xmm0,			xmm1,			3
			ret
		m128fdshufps_4 label size_t
			shufps				xmm0,			xmm1,			4
			ret
		m128fdshufps_5 label size_t
			shufps				xmm0,			xmm1,			5
			ret
		m128fdshufps_6 label size_t
			shufps				xmm0,			xmm1,			6
			ret
		m128fdshufps_7 label size_t
			shufps				xmm0,			xmm1,			7
			ret
		m128fdshufps_8 label size_t
			shufps				xmm0,			xmm1,			8
			ret
		m128fdshufps_9 label size_t
			shufps				xmm0,			xmm1,			9
			ret
		m128fdshufps_10 label size_t
			shufps				xmm0,			xmm1,			10
			ret
		m128fdshufps_11 label size_t
			shufps				xmm0,			xmm1,			11
			ret
		m128fdshufps_12 label size_t
			shufps				xmm0,			xmm1,			12
			ret
		m128fdshufps_13 label size_t
			shufps				xmm0,			xmm1,			13
			ret
		m128fdshufps_14 label size_t
			shufps				xmm0,			xmm1,			14
			ret
		m128fdshufps_15 label size_t
			shufps				xmm0,			xmm1,			15
			ret
		m128fdshufps_16 label size_t
			shufps				xmm0,			xmm1,			16
			ret
		m128fdshufps_17 label size_t
			shufps				xmm0,			xmm1,			17
			ret
		m128fdshufps_18 label size_t
			shufps				xmm0,			xmm1,			18
			ret
		m128fdshufps_19 label size_t
			shufps				xmm0,			xmm1,			19
			ret
		m128fdshufps_20 label size_t
			shufps				xmm0,			xmm1,			20
			ret
		m128fdshufps_21 label size_t
			shufps				xmm0,			xmm1,			21
			ret
		m128fdshufps_22 label size_t
			shufps				xmm0,			xmm1,			22
			ret
		m128fdshufps_23 label size_t
			shufps				xmm0,			xmm1,			23
			ret
		m128fdshufps_24 label size_t
			shufps				xmm0,			xmm1,			24
			ret
		m128fdshufps_25 label size_t
			shufps				xmm0,			xmm1,			25
			ret
		m128fdshufps_26 label size_t
			shufps				xmm0,			xmm1,			26
			ret
		m128fdshufps_27 label size_t
			shufps				xmm0,			xmm1,			27
			ret
		m128fdshufps_28 label size_t
			shufps				xmm0,			xmm1,			28
			ret
		m128fdshufps_29 label size_t
			shufps				xmm0,			xmm1,			29
			ret
		m128fdshufps_30 label size_t
			shufps				xmm0,			xmm1,			30
			ret
		m128fdshufps_31 label size_t
			shufps				xmm0,			xmm1,			31
			ret
		m128fdshufps_32 label size_t
			shufps				xmm0,			xmm1,			32
			ret
		m128fdshufps_33 label size_t
			shufps				xmm0,			xmm1,			33
			ret
		m128fdshufps_34 label size_t
			shufps				xmm0,			xmm1,			34
			ret
		m128fdshufps_35 label size_t
			shufps				xmm0,			xmm1,			35
			ret
		m128fdshufps_36 label size_t
			shufps				xmm0,			xmm1,			36
			ret
		m128fdshufps_37 label size_t
			shufps				xmm0,			xmm1,			37
			ret
		m128fdshufps_38 label size_t
			shufps				xmm0,			xmm1,			38
			ret
		m128fdshufps_39 label size_t
			shufps				xmm0,			xmm1,			39
			ret
		m128fdshufps_40 label size_t
			shufps				xmm0,			xmm1,			40
			ret
		m128fdshufps_41 label size_t
			shufps				xmm0,			xmm1,			41
			ret
		m128fdshufps_42 label size_t
			shufps				xmm0,			xmm1,			42
			ret
		m128fdshufps_43 label size_t
			shufps				xmm0,			xmm1,			43
			ret
		m128fdshufps_44 label size_t
			shufps				xmm0,			xmm1,			44
			ret
		m128fdshufps_45 label size_t
			shufps				xmm0,			xmm1,			45
			ret
		m128fdshufps_46 label size_t
			shufps				xmm0,			xmm1,			46
			ret
		m128fdshufps_47 label size_t
			shufps				xmm0,			xmm1,			47
			ret
		m128fdshufps_48 label size_t
			shufps				xmm0,			xmm1,			48
			ret
		m128fdshufps_49 label size_t
			shufps				xmm0,			xmm1,			49
			ret
		m128fdshufps_50 label size_t
			shufps				xmm0,			xmm1,			50
			ret
		m128fdshufps_51 label size_t
			shufps				xmm0,			xmm1,			51
			ret
		m128fdshufps_52 label size_t
			shufps				xmm0,			xmm1,			52
			ret
		m128fdshufps_53 label size_t
			shufps				xmm0,			xmm1,			53
			ret
		m128fdshufps_54 label size_t
			shufps				xmm0,			xmm1,			54
			ret
		m128fdshufps_55 label size_t
			shufps				xmm0,			xmm1,			55
			ret
		m128fdshufps_56 label size_t
			shufps				xmm0,			xmm1,			56
			ret
		m128fdshufps_57 label size_t
			shufps				xmm0,			xmm1,			57
			ret
		m128fdshufps_58 label size_t
			shufps				xmm0,			xmm1,			58
			ret
		m128fdshufps_59 label size_t
			shufps				xmm0,			xmm1,			59
			ret
		m128fdshufps_60 label size_t
			shufps				xmm0,			xmm1,			60
			ret
		m128fdshufps_61 label size_t
			shufps				xmm0,			xmm1,			61
			ret
		m128fdshufps_62 label size_t
			shufps				xmm0,			xmm1,			62
			ret
		m128fdshufps_63 label size_t
			shufps				xmm0,			xmm1,			63
			ret
		m128fdshufps_64 label size_t
			shufps				xmm0,			xmm1,			64
			ret
		m128fdshufps_65 label size_t
			shufps				xmm0,			xmm1,			65
			ret
		m128fdshufps_66 label size_t
			shufps				xmm0,			xmm1,			66
			ret
		m128fdshufps_67 label size_t
			shufps				xmm0,			xmm1,			67
			ret
		m128fdshufps_68 label size_t
			shufps				xmm0,			xmm1,			68
			ret
		m128fdshufps_69 label size_t
			shufps				xmm0,			xmm1,			69
			ret
		m128fdshufps_70 label size_t
			shufps				xmm0,			xmm1,			70
			ret
		m128fdshufps_71 label size_t
			shufps				xmm0,			xmm1,			71
			ret
		m128fdshufps_72 label size_t
			shufps				xmm0,			xmm1,			72
			ret
		m128fdshufps_73 label size_t
			shufps				xmm0,			xmm1,			73
			ret
		m128fdshufps_74 label size_t
			shufps				xmm0,			xmm1,			74
			ret
		m128fdshufps_75 label size_t
			shufps				xmm0,			xmm1,			75
			ret
		m128fdshufps_76 label size_t
			shufps				xmm0,			xmm1,			76
			ret
		m128fdshufps_77 label size_t
			shufps				xmm0,			xmm1,			77
			ret
		m128fdshufps_78 label size_t
			shufps				xmm0,			xmm1,			78
			ret
		m128fdshufps_79 label size_t
			shufps				xmm0,			xmm1,			79
			ret
		m128fdshufps_80 label size_t
			shufps				xmm0,			xmm1,			80
			ret
		m128fdshufps_81 label size_t
			shufps				xmm0,			xmm1,			81
			ret
		m128fdshufps_82 label size_t
			shufps				xmm0,			xmm1,			82
			ret
		m128fdshufps_83 label size_t
			shufps				xmm0,			xmm1,			83
			ret
		m128fdshufps_84 label size_t
			shufps				xmm0,			xmm1,			84
			ret
		m128fdshufps_85 label size_t
			shufps				xmm0,			xmm1,			85
			ret
		m128fdshufps_86 label size_t
			shufps				xmm0,			xmm1,			86
			ret
		m128fdshufps_87 label size_t
			shufps				xmm0,			xmm1,			87
			ret
		m128fdshufps_88 label size_t
			shufps				xmm0,			xmm1,			88
			ret
		m128fdshufps_89 label size_t
			shufps				xmm0,			xmm1,			89
			ret
		m128fdshufps_90 label size_t
			shufps				xmm0,			xmm1,			90
			ret
		m128fdshufps_91 label size_t
			shufps				xmm0,			xmm1,			91
			ret
		m128fdshufps_92 label size_t
			shufps				xmm0,			xmm1,			92
			ret
		m128fdshufps_93 label size_t
			shufps				xmm0,			xmm1,			93
			ret
		m128fdshufps_94 label size_t
			shufps				xmm0,			xmm1,			94
			ret
		m128fdshufps_95 label size_t
			shufps				xmm0,			xmm1,			95
			ret
		m128fdshufps_96 label size_t
			shufps				xmm0,			xmm1,			96
			ret
		m128fdshufps_97 label size_t
			shufps				xmm0,			xmm1,			97
			ret
		m128fdshufps_98 label size_t
			shufps				xmm0,			xmm1,			98
			ret
		m128fdshufps_99 label size_t
			shufps				xmm0,			xmm1,			99
			ret
		m128fdshufps_100 label size_t
			shufps				xmm0,			xmm1,			100
			ret
		m128fdshufps_101 label size_t
			shufps				xmm0,			xmm1,			101
			ret
		m128fdshufps_102 label size_t
			shufps				xmm0,			xmm1,			102
			ret
		m128fdshufps_103 label size_t
			shufps				xmm0,			xmm1,			103
			ret
		m128fdshufps_104 label size_t
			shufps				xmm0,			xmm1,			104
			ret
		m128fdshufps_105 label size_t
			shufps				xmm0,			xmm1,			105
			ret
		m128fdshufps_106 label size_t
			shufps				xmm0,			xmm1,			106
			ret
		m128fdshufps_107 label size_t
			shufps				xmm0,			xmm1,			107
			ret
		m128fdshufps_108 label size_t
			shufps				xmm0,			xmm1,			108
			ret
		m128fdshufps_109 label size_t
			shufps				xmm0,			xmm1,			109
			ret
		m128fdshufps_110 label size_t
			shufps				xmm0,			xmm1,			110
			ret
		m128fdshufps_111 label size_t
			shufps				xmm0,			xmm1,			111
			ret
		m128fdshufps_112 label size_t
			shufps				xmm0,			xmm1,			112
			ret
		m128fdshufps_113 label size_t
			shufps				xmm0,			xmm1,			113
			ret
		m128fdshufps_114 label size_t
			shufps				xmm0,			xmm1,			114
			ret
		m128fdshufps_115 label size_t
			shufps				xmm0,			xmm1,			115
			ret
		m128fdshufps_116 label size_t
			shufps				xmm0,			xmm1,			116
			ret
		m128fdshufps_117 label size_t
			shufps				xmm0,			xmm1,			117
			ret
		m128fdshufps_118 label size_t
			shufps				xmm0,			xmm1,			118
			ret
		m128fdshufps_119 label size_t
			shufps				xmm0,			xmm1,			119
			ret
		m128fdshufps_120 label size_t
			shufps				xmm0,			xmm1,			120
			ret
		m128fdshufps_121 label size_t
			shufps				xmm0,			xmm1,			121
			ret
		m128fdshufps_122 label size_t
			shufps				xmm0,			xmm1,			122
			ret
		m128fdshufps_123 label size_t
			shufps				xmm0,			xmm1,			123
			ret
		m128fdshufps_124 label size_t
			shufps				xmm0,			xmm1,			124
			ret
		m128fdshufps_125 label size_t
			shufps				xmm0,			xmm1,			125
			ret
		m128fdshufps_126 label size_t
			shufps				xmm0,			xmm1,			126
			ret
		m128fdshufps_127 label size_t
			shufps				xmm0,			xmm1,			127
			ret
		m128fdshufps_128 label size_t
			shufps				xmm0,			xmm1,			128
			ret
		m128fdshufps_129 label size_t
			shufps				xmm0,			xmm1,			129
			ret
		m128fdshufps_130 label size_t
			shufps				xmm0,			xmm1,			130
			ret
		m128fdshufps_131 label size_t
			shufps				xmm0,			xmm1,			131
			ret
		m128fdshufps_132 label size_t
			shufps				xmm0,			xmm1,			132
			ret
		m128fdshufps_133 label size_t
			shufps				xmm0,			xmm1,			133
			ret
		m128fdshufps_134 label size_t
			shufps				xmm0,			xmm1,			134
			ret
		m128fdshufps_135 label size_t
			shufps				xmm0,			xmm1,			135
			ret
		m128fdshufps_136 label size_t
			shufps				xmm0,			xmm1,			136
			ret
		m128fdshufps_137 label size_t
			shufps				xmm0,			xmm1,			137
			ret
		m128fdshufps_138 label size_t
			shufps				xmm0,			xmm1,			138
			ret
		m128fdshufps_139 label size_t
			shufps				xmm0,			xmm1,			139
			ret
		m128fdshufps_140 label size_t
			shufps				xmm0,			xmm1,			140
			ret
		m128fdshufps_141 label size_t
			shufps				xmm0,			xmm1,			141
			ret
		m128fdshufps_142 label size_t
			shufps				xmm0,			xmm1,			142
			ret
		m128fdshufps_143 label size_t
			shufps				xmm0,			xmm1,			143
			ret
		m128fdshufps_144 label size_t
			shufps				xmm0,			xmm1,			144
			ret
		m128fdshufps_145 label size_t
			shufps				xmm0,			xmm1,			145
			ret
		m128fdshufps_146 label size_t
			shufps				xmm0,			xmm1,			146
			ret
		m128fdshufps_147 label size_t
			shufps				xmm0,			xmm1,			147
			ret
		m128fdshufps_148 label size_t
			shufps				xmm0,			xmm1,			148
			ret
		m128fdshufps_149 label size_t
			shufps				xmm0,			xmm1,			149
			ret
		m128fdshufps_150 label size_t
			shufps				xmm0,			xmm1,			150
			ret
		m128fdshufps_151 label size_t
			shufps				xmm0,			xmm1,			151
			ret
		m128fdshufps_152 label size_t
			shufps				xmm0,			xmm1,			152
			ret
		m128fdshufps_153 label size_t
			shufps				xmm0,			xmm1,			153
			ret
		m128fdshufps_154 label size_t
			shufps				xmm0,			xmm1,			154
			ret
		m128fdshufps_155 label size_t
			shufps				xmm0,			xmm1,			155
			ret
		m128fdshufps_156 label size_t
			shufps				xmm0,			xmm1,			156
			ret
		m128fdshufps_157 label size_t
			shufps				xmm0,			xmm1,			157
			ret
		m128fdshufps_158 label size_t
			shufps				xmm0,			xmm1,			158
			ret
		m128fdshufps_159 label size_t
			shufps				xmm0,			xmm1,			159
			ret
		m128fdshufps_160 label size_t
			shufps				xmm0,			xmm1,			160
			ret
		m128fdshufps_161 label size_t
			shufps				xmm0,			xmm1,			161
			ret
		m128fdshufps_162 label size_t
			shufps				xmm0,			xmm1,			162
			ret
		m128fdshufps_163 label size_t
			shufps				xmm0,			xmm1,			163
			ret
		m128fdshufps_164 label size_t
			shufps				xmm0,			xmm1,			164
			ret
		m128fdshufps_165 label size_t
			shufps				xmm0,			xmm1,			165
			ret
		m128fdshufps_166 label size_t
			shufps				xmm0,			xmm1,			166
			ret
		m128fdshufps_167 label size_t
			shufps				xmm0,			xmm1,			167
			ret
		m128fdshufps_168 label size_t
			shufps				xmm0,			xmm1,			168
			ret
		m128fdshufps_169 label size_t
			shufps				xmm0,			xmm1,			169
			ret
		m128fdshufps_170 label size_t
			shufps				xmm0,			xmm1,			170
			ret
		m128fdshufps_171 label size_t
			shufps				xmm0,			xmm1,			171
			ret
		m128fdshufps_172 label size_t
			shufps				xmm0,			xmm1,			172
			ret
		m128fdshufps_173 label size_t
			shufps				xmm0,			xmm1,			173
			ret
		m128fdshufps_174 label size_t
			shufps				xmm0,			xmm1,			174
			ret
		m128fdshufps_175 label size_t
			shufps				xmm0,			xmm1,			175
			ret
		m128fdshufps_176 label size_t
			shufps				xmm0,			xmm1,			176
			ret
		m128fdshufps_177 label size_t
			shufps				xmm0,			xmm1,			177
			ret
		m128fdshufps_178 label size_t
			shufps				xmm0,			xmm1,			178
			ret
		m128fdshufps_179 label size_t
			shufps				xmm0,			xmm1,			179
			ret
		m128fdshufps_180 label size_t
			shufps				xmm0,			xmm1,			180
			ret
		m128fdshufps_181 label size_t
			shufps				xmm0,			xmm1,			181
			ret
		m128fdshufps_182 label size_t
			shufps				xmm0,			xmm1,			182
			ret
		m128fdshufps_183 label size_t
			shufps				xmm0,			xmm1,			183
			ret
		m128fdshufps_184 label size_t
			shufps				xmm0,			xmm1,			184
			ret
		m128fdshufps_185 label size_t
			shufps				xmm0,			xmm1,			185
			ret
		m128fdshufps_186 label size_t
			shufps				xmm0,			xmm1,			186
			ret
		m128fdshufps_187 label size_t
			shufps				xmm0,			xmm1,			187
			ret
		m128fdshufps_188 label size_t
			shufps				xmm0,			xmm1,			188
			ret
		m128fdshufps_189 label size_t
			shufps				xmm0,			xmm1,			189
			ret
		m128fdshufps_190 label size_t
			shufps				xmm0,			xmm1,			190
			ret
		m128fdshufps_191 label size_t
			shufps				xmm0,			xmm1,			191
			ret
		m128fdshufps_192 label size_t
			shufps				xmm0,			xmm1,			192
			ret
		m128fdshufps_193 label size_t
			shufps				xmm0,			xmm1,			193
			ret
		m128fdshufps_194 label size_t
			shufps				xmm0,			xmm1,			194
			ret
		m128fdshufps_195 label size_t
			shufps				xmm0,			xmm1,			195
			ret
		m128fdshufps_196 label size_t
			shufps				xmm0,			xmm1,			196
			ret
		m128fdshufps_197 label size_t
			shufps				xmm0,			xmm1,			197
			ret
		m128fdshufps_198 label size_t
			shufps				xmm0,			xmm1,			198
			ret
		m128fdshufps_199 label size_t
			shufps				xmm0,			xmm1,			199
			ret
		m128fdshufps_200 label size_t
			shufps				xmm0,			xmm1,			200
			ret
		m128fdshufps_201 label size_t
			shufps				xmm0,			xmm1,			201
			ret
		m128fdshufps_202 label size_t
			shufps				xmm0,			xmm1,			202
			ret
		m128fdshufps_203 label size_t
			shufps				xmm0,			xmm1,			203
			ret
		m128fdshufps_204 label size_t
			shufps				xmm0,			xmm1,			204
			ret
		m128fdshufps_205 label size_t
			shufps				xmm0,			xmm1,			205
			ret
		m128fdshufps_206 label size_t
			shufps				xmm0,			xmm1,			206
			ret
		m128fdshufps_207 label size_t
			shufps				xmm0,			xmm1,			207
			ret
		m128fdshufps_208 label size_t
			shufps				xmm0,			xmm1,			208
			ret
		m128fdshufps_209 label size_t
			shufps				xmm0,			xmm1,			209
			ret
		m128fdshufps_210 label size_t
			shufps				xmm0,			xmm1,			210
			ret
		m128fdshufps_211 label size_t
			shufps				xmm0,			xmm1,			211
			ret
		m128fdshufps_212 label size_t
			shufps				xmm0,			xmm1,			212
			ret
		m128fdshufps_213 label size_t
			shufps				xmm0,			xmm1,			213
			ret
		m128fdshufps_214 label size_t
			shufps				xmm0,			xmm1,			214
			ret
		m128fdshufps_215 label size_t
			shufps				xmm0,			xmm1,			215
			ret
		m128fdshufps_216 label size_t
			shufps				xmm0,			xmm1,			216
			ret
		m128fdshufps_217 label size_t
			shufps				xmm0,			xmm1,			217
			ret
		m128fdshufps_218 label size_t
			shufps				xmm0,			xmm1,			218
			ret
		m128fdshufps_219 label size_t
			shufps				xmm0,			xmm1,			219
			ret
		m128fdshufps_220 label size_t
			shufps				xmm0,			xmm1,			220
			ret
		m128fdshufps_221 label size_t
			shufps				xmm0,			xmm1,			221
			ret
		m128fdshufps_222 label size_t
			shufps				xmm0,			xmm1,			222
			ret
		m128fdshufps_223 label size_t
			shufps				xmm0,			xmm1,			223
			ret
		m128fdshufps_224 label size_t
			shufps				xmm0,			xmm1,			224
			ret
		m128fdshufps_225 label size_t
			shufps				xmm0,			xmm1,			225
			ret
		m128fdshufps_226 label size_t
			shufps				xmm0,			xmm1,			226
			ret
		m128fdshufps_227 label size_t
			shufps				xmm0,			xmm1,			227
			ret
		m128fdshufps_228 label size_t
			shufps				xmm0,			xmm1,			228
			ret
		m128fdshufps_229 label size_t
			shufps				xmm0,			xmm1,			229
			ret
		m128fdshufps_230 label size_t
			shufps				xmm0,			xmm1,			230
			ret
		m128fdshufps_231 label size_t
			shufps				xmm0,			xmm1,			231
			ret
		m128fdshufps_232 label size_t
			shufps				xmm0,			xmm1,			232
			ret
		m128fdshufps_233 label size_t
			shufps				xmm0,			xmm1,			233
			ret
		m128fdshufps_234 label size_t
			shufps				xmm0,			xmm1,			234
			ret
		m128fdshufps_235 label size_t
			shufps				xmm0,			xmm1,			235
			ret
		m128fdshufps_236 label size_t
			shufps				xmm0,			xmm1,			236
			ret
		m128fdshufps_237 label size_t
			shufps				xmm0,			xmm1,			237
			ret
		m128fdshufps_238 label size_t
			shufps				xmm0,			xmm1,			238
			ret
		m128fdshufps_239 label size_t
			shufps				xmm0,			xmm1,			239
			ret
		m128fdshufps_240 label size_t
			shufps				xmm0,			xmm1,			240
			ret
		m128fdshufps_241 label size_t
			shufps				xmm0,			xmm1,			241
			ret
		m128fdshufps_242 label size_t
			shufps				xmm0,			xmm1,			242
			ret
		m128fdshufps_243 label size_t
			shufps				xmm0,			xmm1,			243
			ret
		m128fdshufps_244 label size_t
			shufps				xmm0,			xmm1,			244
			ret
		m128fdshufps_245 label size_t
			shufps				xmm0,			xmm1,			245
			ret
		m128fdshufps_246 label size_t
			shufps				xmm0,			xmm1,			246
			ret
		m128fdshufps_247 label size_t
			shufps				xmm0,			xmm1,			247
			ret
		m128fdshufps_248 label size_t
			shufps				xmm0,			xmm1,			248
			ret
		m128fdshufps_249 label size_t
			shufps				xmm0,			xmm1,			249
			ret
		m128fdshufps_250 label size_t
			shufps				xmm0,			xmm1,			250
			ret
		m128fdshufps_251 label size_t
			shufps				xmm0,			xmm1,			251
			ret
		m128fdshufps_252 label size_t
			shufps				xmm0,			xmm1,			252
			ret
		m128fdshufps_253 label size_t
			shufps				xmm0,			xmm1,			253
			ret
		m128fdshufps_254 label size_t
			shufps				xmm0,			xmm1,			254
			ret
		m128fdshufps_255 label size_t
			shufps				xmm0,			xmm1,			255
			ret
		;.endif
		
_uXm_m128fd_shuffle_ps endp

	end