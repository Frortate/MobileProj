	.file	"obj\Debug\110\android\environment.armeabi-v7a.s"
	.arch	armv7-a
	.syntax	unified
	.eabi_attribute	67, "2.09"	@ Tag_conformance
	.eabi_attribute	6, 10	@ Tag_CPU_arch
	.eabi_attribute	7, 65	@ Tag_CPU_arch_profile
	.eabi_attribute	8, 1	@ Tag_ARM_ISA_use
	.eabi_attribute	9, 2	@ Tag_THUMB_ISA_use
	.fpu	neon
	.eabi_attribute	34, 1	@ Tag_CPU_unaligned_access
	.eabi_attribute	15, 1	@ Tag_ABI_PCS_RW_data
	.eabi_attribute	16, 1	@ Tag_ABI_PCS_RO_data
	.eabi_attribute	17, 2	@ Tag_ABI_PCS_GOT_use
	.eabi_attribute	20, 1	@ Tag_ABI_FP_denormal
	.eabi_attribute	21, 0	@ Tag_ABI_FP_exceptions
	.eabi_attribute	23, 3	@ Tag_ABI_FP_number_model
	.eabi_attribute	24, 1	@ Tag_ABI_align_needed
	.eabi_attribute	25, 1	@ Tag_ABI_align_preserved
	.eabi_attribute	38, 1	@ Tag_ABI_FP_16bit_format
	.eabi_attribute	18, 4	@ Tag_ABI_PCS_wchar_t
	.eabi_attribute	26, 2	@ Tag_ABI_enum_size
	.eabi_attribute	14, 0	@ Tag_ABI_PCS_R9_use
	.type	mono_aot_mode_name, %object
	.global	mono_aot_mode_name

	.section	.data.mono_aot_mode_name, "aw", %progbits
	.p2align	2
mono_aot_mode_name:
	.long	.L.autostr.0
	.size	mono_aot_mode_name, 4

	.type	app_environment_variables, %object
	.global	app_environment_variables

	.section	.data, "aw", %progbits
	.p2align	2
app_environment_variables:
	.long	.L.autostr.1
	.long	.L.autostr.2
	.long	.L.autostr.3
	.long	.L.autostr.4
	.long	.L.autostr.5
	.long	.L.autostr.6
	.long	.L.autostr.7
	.long	.L.autostr.8
	.long	.L.autostr.9
	.long	.L.autostr.10
	.long	.L.autostr.11
	.long	.L.autostr.12
	.long	.L.autostr.13
	.long	.L.autostr.14
	.long	.L.autostr.15
	.long	.L.autostr.16
	.long	.L.autostr.17
	.long	.L.autostr.18
	.long	.L.autostr.19
	.long	.L.autostr.20
	.long	.L.autostr.21
	.long	.L.autostr.22
	.long	.L.autostr.23
	.long	.L.autostr.24
	.long	.L.autostr.25
	.long	.L.autostr.26
	.long	.L.autostr.27
	.long	.L.autostr.28
	.long	.L.autostr.29
	.long	.L.autostr.30
	.long	.L.autostr.31
	.long	.L.autostr.32
	.long	.L.autostr.33
	.long	.L.autostr.34
	.long	.L.autostr.35
	.long	.L.autostr.36
	.long	.L.autostr.37
	.long	.L.autostr.38
	.long	.L.autostr.39
	.long	.L.autostr.40
	.long	.L.autostr.41
	.long	.L.autostr.42
	.long	.L.autostr.43
	.long	.L.autostr.44
	.long	.L.autostr.45
	.long	.L.autostr.46
	.long	.L.autostr.47
	.long	.L.autostr.48
	.long	.L.autostr.49
	.long	.L.autostr.50
	.long	.L.autostr.51
	.long	.L.autostr.52
	.long	.L.autostr.53
	.long	.L.autostr.54
	.long	.L.autostr.55
	.long	.L.autostr.56
	.long	.L.autostr.57
	.long	.L.autostr.58
	.long	.L.autostr.59
	.long	.L.autostr.60
	.size	app_environment_variables, 240

	.section	.data, "aw", %progbits
	.type	app_system_properties, %object
	.global	app_system_properties
app_system_properties:
	.size	app_system_properties, 0
	@ Bundled assembly name buffers, all 63 bytes long

	.section	.bss.bundled_assembly_names, "aw", %nobits
	.type	.L.env.buf.0, %object
.L.env.buf.0:
	.zero	63
	.size	.L.env.buf.0, 63
	.type	.L.env.buf.1, %object
.L.env.buf.1:
	.zero	63
	.size	.L.env.buf.1, 63
	.type	.L.env.buf.2, %object
.L.env.buf.2:
	.zero	63
	.size	.L.env.buf.2, 63
	.type	.L.env.buf.3, %object
.L.env.buf.3:
	.zero	63
	.size	.L.env.buf.3, 63
	.type	.L.env.buf.4, %object
.L.env.buf.4:
	.zero	63
	.size	.L.env.buf.4, 63
	.type	.L.env.buf.5, %object
.L.env.buf.5:
	.zero	63
	.size	.L.env.buf.5, 63
	.type	.L.env.buf.6, %object
.L.env.buf.6:
	.zero	63
	.size	.L.env.buf.6, 63
	.type	.L.env.buf.7, %object
.L.env.buf.7:
	.zero	63
	.size	.L.env.buf.7, 63
	.type	.L.env.buf.8, %object
.L.env.buf.8:
	.zero	63
	.size	.L.env.buf.8, 63
	.type	.L.env.buf.9, %object
.L.env.buf.9:
	.zero	63
	.size	.L.env.buf.9, 63
	.type	.L.env.buf.10, %object
.L.env.buf.10:
	.zero	63
	.size	.L.env.buf.10, 63
	.type	.L.env.buf.11, %object
.L.env.buf.11:
	.zero	63
	.size	.L.env.buf.11, 63
	.type	.L.env.buf.12, %object
.L.env.buf.12:
	.zero	63
	.size	.L.env.buf.12, 63
	.type	.L.env.buf.13, %object
.L.env.buf.13:
	.zero	63
	.size	.L.env.buf.13, 63
	.type	.L.env.buf.14, %object
.L.env.buf.14:
	.zero	63
	.size	.L.env.buf.14, 63
	.type	.L.env.buf.15, %object
.L.env.buf.15:
	.zero	63
	.size	.L.env.buf.15, 63
	.type	.L.env.buf.16, %object
.L.env.buf.16:
	.zero	63
	.size	.L.env.buf.16, 63
	.type	.L.env.buf.17, %object
.L.env.buf.17:
	.zero	63
	.size	.L.env.buf.17, 63
	.type	.L.env.buf.18, %object
.L.env.buf.18:
	.zero	63
	.size	.L.env.buf.18, 63
	.type	.L.env.buf.19, %object
.L.env.buf.19:
	.zero	63
	.size	.L.env.buf.19, 63
	.type	.L.env.buf.20, %object
.L.env.buf.20:
	.zero	63
	.size	.L.env.buf.20, 63
	.type	.L.env.buf.21, %object
.L.env.buf.21:
	.zero	63
	.size	.L.env.buf.21, 63
	.type	.L.env.buf.22, %object
.L.env.buf.22:
	.zero	63
	.size	.L.env.buf.22, 63
	.type	.L.env.buf.23, %object
.L.env.buf.23:
	.zero	63
	.size	.L.env.buf.23, 63
	.type	.L.env.buf.24, %object
.L.env.buf.24:
	.zero	63
	.size	.L.env.buf.24, 63
	.type	.L.env.buf.25, %object
.L.env.buf.25:
	.zero	63
	.size	.L.env.buf.25, 63
	.type	.L.env.buf.26, %object
.L.env.buf.26:
	.zero	63
	.size	.L.env.buf.26, 63
	.type	.L.env.buf.27, %object
.L.env.buf.27:
	.zero	63
	.size	.L.env.buf.27, 63
	.type	.L.env.buf.28, %object
.L.env.buf.28:
	.zero	63
	.size	.L.env.buf.28, 63
	.type	.L.env.buf.29, %object
.L.env.buf.29:
	.zero	63
	.size	.L.env.buf.29, 63
	.type	.L.env.buf.30, %object
.L.env.buf.30:
	.zero	63
	.size	.L.env.buf.30, 63
	.type	.L.env.buf.31, %object
.L.env.buf.31:
	.zero	63
	.size	.L.env.buf.31, 63
	.type	.L.env.buf.32, %object
.L.env.buf.32:
	.zero	63
	.size	.L.env.buf.32, 63
	.type	.L.env.buf.33, %object
.L.env.buf.33:
	.zero	63
	.size	.L.env.buf.33, 63
	.type	.L.env.buf.34, %object
.L.env.buf.34:
	.zero	63
	.size	.L.env.buf.34, 63
	.type	.L.env.buf.35, %object
.L.env.buf.35:
	.zero	63
	.size	.L.env.buf.35, 63
	.type	.L.env.buf.36, %object
.L.env.buf.36:
	.zero	63
	.size	.L.env.buf.36, 63
	.type	.L.env.buf.37, %object
.L.env.buf.37:
	.zero	63
	.size	.L.env.buf.37, 63
	.type	.L.env.buf.38, %object
.L.env.buf.38:
	.zero	63
	.size	.L.env.buf.38, 63
	.type	.L.env.buf.39, %object
.L.env.buf.39:
	.zero	63
	.size	.L.env.buf.39, 63
	.type	.L.env.buf.40, %object
.L.env.buf.40:
	.zero	63
	.size	.L.env.buf.40, 63
	.type	.L.env.buf.41, %object
.L.env.buf.41:
	.zero	63
	.size	.L.env.buf.41, 63
	.type	.L.env.buf.42, %object
.L.env.buf.42:
	.zero	63
	.size	.L.env.buf.42, 63
	.type	.L.env.buf.43, %object
.L.env.buf.43:
	.zero	63
	.size	.L.env.buf.43, 63
	.type	.L.env.buf.44, %object
.L.env.buf.44:
	.zero	63
	.size	.L.env.buf.44, 63
	.type	.L.env.buf.45, %object
.L.env.buf.45:
	.zero	63
	.size	.L.env.buf.45, 63
	.type	.L.env.buf.46, %object
.L.env.buf.46:
	.zero	63
	.size	.L.env.buf.46, 63
	.type	.L.env.buf.47, %object
.L.env.buf.47:
	.zero	63
	.size	.L.env.buf.47, 63
	.type	.L.env.buf.48, %object
.L.env.buf.48:
	.zero	63
	.size	.L.env.buf.48, 63
	.type	.L.env.buf.49, %object
.L.env.buf.49:
	.zero	63
	.size	.L.env.buf.49, 63
	.type	.L.env.buf.50, %object
.L.env.buf.50:
	.zero	63
	.size	.L.env.buf.50, 63
	.type	.L.env.buf.51, %object
.L.env.buf.51:
	.zero	63
	.size	.L.env.buf.51, 63
	.type	.L.env.buf.52, %object
.L.env.buf.52:
	.zero	63
	.size	.L.env.buf.52, 63
	.type	.L.env.buf.53, %object
.L.env.buf.53:
	.zero	63
	.size	.L.env.buf.53, 63
	.type	.L.env.buf.54, %object
.L.env.buf.54:
	.zero	63
	.size	.L.env.buf.54, 63
	.type	.L.env.buf.55, %object
.L.env.buf.55:
	.zero	63
	.size	.L.env.buf.55, 63
	.type	.L.env.buf.56, %object
.L.env.buf.56:
	.zero	63
	.size	.L.env.buf.56, 63
	.type	.L.env.buf.57, %object
.L.env.buf.57:
	.zero	63
	.size	.L.env.buf.57, 63
	.type	.L.env.buf.58, %object
.L.env.buf.58:
	.zero	63
	.size	.L.env.buf.58, 63
	.type	.L.env.buf.59, %object
.L.env.buf.59:
	.zero	63
	.size	.L.env.buf.59, 63
	.type	.L.env.buf.60, %object
.L.env.buf.60:
	.zero	63
	.size	.L.env.buf.60, 63
	.type	.L.env.buf.61, %object
.L.env.buf.61:
	.zero	63
	.size	.L.env.buf.61, 63
	.type	.L.env.buf.62, %object
.L.env.buf.62:
	.zero	63
	.size	.L.env.buf.62, 63
	.type	.L.env.buf.63, %object
.L.env.buf.63:
	.zero	63
	.size	.L.env.buf.63, 63
	.type	.L.env.buf.64, %object
.L.env.buf.64:
	.zero	63
	.size	.L.env.buf.64, 63
	.type	.L.env.buf.65, %object
.L.env.buf.65:
	.zero	63
	.size	.L.env.buf.65, 63
	.type	.L.env.buf.66, %object
.L.env.buf.66:
	.zero	63
	.size	.L.env.buf.66, 63
	.type	.L.env.buf.67, %object
.L.env.buf.67:
	.zero	63
	.size	.L.env.buf.67, 63
	.type	.L.env.buf.68, %object
.L.env.buf.68:
	.zero	63
	.size	.L.env.buf.68, 63
	.type	.L.env.buf.69, %object
.L.env.buf.69:
	.zero	63
	.size	.L.env.buf.69, 63
	.type	.L.env.buf.70, %object
.L.env.buf.70:
	.zero	63
	.size	.L.env.buf.70, 63
	.type	.L.env.buf.71, %object
.L.env.buf.71:
	.zero	63
	.size	.L.env.buf.71, 63
	.type	.L.env.buf.72, %object
.L.env.buf.72:
	.zero	63
	.size	.L.env.buf.72, 63
	.type	.L.env.buf.73, %object
.L.env.buf.73:
	.zero	63
	.size	.L.env.buf.73, 63
	.type	.L.env.buf.74, %object
.L.env.buf.74:
	.zero	63
	.size	.L.env.buf.74, 63
	.type	.L.env.buf.75, %object
.L.env.buf.75:
	.zero	63
	.size	.L.env.buf.75, 63
	.type	.L.env.buf.76, %object
.L.env.buf.76:
	.zero	63
	.size	.L.env.buf.76, 63
	.type	.L.env.buf.77, %object
.L.env.buf.77:
	.zero	63
	.size	.L.env.buf.77, 63
	.type	.L.env.buf.78, %object
.L.env.buf.78:
	.zero	63
	.size	.L.env.buf.78, 63
	.type	.L.env.buf.79, %object
.L.env.buf.79:
	.zero	63
	.size	.L.env.buf.79, 63
	.type	.L.env.buf.80, %object
.L.env.buf.80:
	.zero	63
	.size	.L.env.buf.80, 63
	.type	.L.env.buf.81, %object
.L.env.buf.81:
	.zero	63
	.size	.L.env.buf.81, 63
	.type	.L.env.buf.82, %object
.L.env.buf.82:
	.zero	63
	.size	.L.env.buf.82, 63
	.type	.L.env.buf.83, %object
.L.env.buf.83:
	.zero	63
	.size	.L.env.buf.83, 63
	.type	.L.env.buf.84, %object
.L.env.buf.84:
	.zero	63
	.size	.L.env.buf.84, 63
	.type	.L.env.buf.85, %object
.L.env.buf.85:
	.zero	63
	.size	.L.env.buf.85, 63
	.type	.L.env.buf.86, %object
.L.env.buf.86:
	.zero	63
	.size	.L.env.buf.86, 63
	@ Bundled assemblies data

	.type	bundled_assemblies, %object
	.global	bundled_assemblies

	.section	.data, "aw", %progbits
	.p2align	2
bundled_assemblies:
	.long	0xffffffff	@ apk_fd
	.long	0x0	@ data_offset
	.long	0x0	@ data_size
	.long	0x0	@ data
	.long	0x0	@ name_length
	.long	.L.env.buf.0	@ name

	.long	0xffffffff	@ apk_fd
	.long	0x0	@ data_offset
	.long	0x0	@ data_size
	.long	0x0	@ data
	.long	0x0	@ name_length
	.long	.L.env.buf.1	@ name

	.long	0xffffffff	@ apk_fd
	.long	0x0	@ data_offset
	.long	0x0	@ data_size
	.long	0x0	@ data
	.long	0x0	@ name_length
	.long	.L.env.buf.2	@ name

	.long	0xffffffff	@ apk_fd
	.long	0x0	@ data_offset
	.long	0x0	@ data_size
	.long	0x0	@ data
	.long	0x0	@ name_length
	.long	.L.env.buf.3	@ name

	.long	0xffffffff	@ apk_fd
	.long	0x0	@ data_offset
	.long	0x0	@ data_size
	.long	0x0	@ data
	.long	0x0	@ name_length
	.long	.L.env.buf.4	@ name

	.long	0xffffffff	@ apk_fd
	.long	0x0	@ data_offset
	.long	0x0	@ data_size
	.long	0x0	@ data
	.long	0x0	@ name_length
	.long	.L.env.buf.5	@ name

	.long	0xffffffff	@ apk_fd
	.long	0x0	@ data_offset
	.long	0x0	@ data_size
	.long	0x0	@ data
	.long	0x0	@ name_length
	.long	.L.env.buf.6	@ name

	.long	0xffffffff	@ apk_fd
	.long	0x0	@ data_offset
	.long	0x0	@ data_size
	.long	0x0	@ data
	.long	0x0	@ name_length
	.long	.L.env.buf.7	@ name

	.long	0xffffffff	@ apk_fd
	.long	0x0	@ data_offset
	.long	0x0	@ data_size
	.long	0x0	@ data
	.long	0x0	@ name_length
	.long	.L.env.buf.8	@ name

	.long	0xffffffff	@ apk_fd
	.long	0x0	@ data_offset
	.long	0x0	@ data_size
	.long	0x0	@ data
	.long	0x0	@ name_length
	.long	.L.env.buf.9	@ name

	.long	0xffffffff	@ apk_fd
	.long	0x0	@ data_offset
	.long	0x0	@ data_size
	.long	0x0	@ data
	.long	0x0	@ name_length
	.long	.L.env.buf.10	@ name

	.long	0xffffffff	@ apk_fd
	.long	0x0	@ data_offset
	.long	0x0	@ data_size
	.long	0x0	@ data
	.long	0x0	@ name_length
	.long	.L.env.buf.11	@ name

	.long	0xffffffff	@ apk_fd
	.long	0x0	@ data_offset
	.long	0x0	@ data_size
	.long	0x0	@ data
	.long	0x0	@ name_length
	.long	.L.env.buf.12	@ name

	.long	0xffffffff	@ apk_fd
	.long	0x0	@ data_offset
	.long	0x0	@ data_size
	.long	0x0	@ data
	.long	0x0	@ name_length
	.long	.L.env.buf.13	@ name

	.long	0xffffffff	@ apk_fd
	.long	0x0	@ data_offset
	.long	0x0	@ data_size
	.long	0x0	@ data
	.long	0x0	@ name_length
	.long	.L.env.buf.14	@ name

	.long	0xffffffff	@ apk_fd
	.long	0x0	@ data_offset
	.long	0x0	@ data_size
	.long	0x0	@ data
	.long	0x0	@ name_length
	.long	.L.env.buf.15	@ name

	.long	0xffffffff	@ apk_fd
	.long	0x0	@ data_offset
	.long	0x0	@ data_size
	.long	0x0	@ data
	.long	0x0	@ name_length
	.long	.L.env.buf.16	@ name

	.long	0xffffffff	@ apk_fd
	.long	0x0	@ data_offset
	.long	0x0	@ data_size
	.long	0x0	@ data
	.long	0x0	@ name_length
	.long	.L.env.buf.17	@ name

	.long	0xffffffff	@ apk_fd
	.long	0x0	@ data_offset
	.long	0x0	@ data_size
	.long	0x0	@ data
	.long	0x0	@ name_length
	.long	.L.env.buf.18	@ name

	.long	0xffffffff	@ apk_fd
	.long	0x0	@ data_offset
	.long	0x0	@ data_size
	.long	0x0	@ data
	.long	0x0	@ name_length
	.long	.L.env.buf.19	@ name

	.long	0xffffffff	@ apk_fd
	.long	0x0	@ data_offset
	.long	0x0	@ data_size
	.long	0x0	@ data
	.long	0x0	@ name_length
	.long	.L.env.buf.20	@ name

	.long	0xffffffff	@ apk_fd
	.long	0x0	@ data_offset
	.long	0x0	@ data_size
	.long	0x0	@ data
	.long	0x0	@ name_length
	.long	.L.env.buf.21	@ name

	.long	0xffffffff	@ apk_fd
	.long	0x0	@ data_offset
	.long	0x0	@ data_size
	.long	0x0	@ data
	.long	0x0	@ name_length
	.long	.L.env.buf.22	@ name

	.long	0xffffffff	@ apk_fd
	.long	0x0	@ data_offset
	.long	0x0	@ data_size
	.long	0x0	@ data
	.long	0x0	@ name_length
	.long	.L.env.buf.23	@ name

	.long	0xffffffff	@ apk_fd
	.long	0x0	@ data_offset
	.long	0x0	@ data_size
	.long	0x0	@ data
	.long	0x0	@ name_length
	.long	.L.env.buf.24	@ name

	.long	0xffffffff	@ apk_fd
	.long	0x0	@ data_offset
	.long	0x0	@ data_size
	.long	0x0	@ data
	.long	0x0	@ name_length
	.long	.L.env.buf.25	@ name

	.long	0xffffffff	@ apk_fd
	.long	0x0	@ data_offset
	.long	0x0	@ data_size
	.long	0x0	@ data
	.long	0x0	@ name_length
	.long	.L.env.buf.26	@ name

	.long	0xffffffff	@ apk_fd
	.long	0x0	@ data_offset
	.long	0x0	@ data_size
	.long	0x0	@ data
	.long	0x0	@ name_length
	.long	.L.env.buf.27	@ name

	.long	0xffffffff	@ apk_fd
	.long	0x0	@ data_offset
	.long	0x0	@ data_size
	.long	0x0	@ data
	.long	0x0	@ name_length
	.long	.L.env.buf.28	@ name

	.long	0xffffffff	@ apk_fd
	.long	0x0	@ data_offset
	.long	0x0	@ data_size
	.long	0x0	@ data
	.long	0x0	@ name_length
	.long	.L.env.buf.29	@ name

	.long	0xffffffff	@ apk_fd
	.long	0x0	@ data_offset
	.long	0x0	@ data_size
	.long	0x0	@ data
	.long	0x0	@ name_length
	.long	.L.env.buf.30	@ name

	.long	0xffffffff	@ apk_fd
	.long	0x0	@ data_offset
	.long	0x0	@ data_size
	.long	0x0	@ data
	.long	0x0	@ name_length
	.long	.L.env.buf.31	@ name

	.long	0xffffffff	@ apk_fd
	.long	0x0	@ data_offset
	.long	0x0	@ data_size
	.long	0x0	@ data
	.long	0x0	@ name_length
	.long	.L.env.buf.32	@ name

	.long	0xffffffff	@ apk_fd
	.long	0x0	@ data_offset
	.long	0x0	@ data_size
	.long	0x0	@ data
	.long	0x0	@ name_length
	.long	.L.env.buf.33	@ name

	.long	0xffffffff	@ apk_fd
	.long	0x0	@ data_offset
	.long	0x0	@ data_size
	.long	0x0	@ data
	.long	0x0	@ name_length
	.long	.L.env.buf.34	@ name

	.long	0xffffffff	@ apk_fd
	.long	0x0	@ data_offset
	.long	0x0	@ data_size
	.long	0x0	@ data
	.long	0x0	@ name_length
	.long	.L.env.buf.35	@ name

	.long	0xffffffff	@ apk_fd
	.long	0x0	@ data_offset
	.long	0x0	@ data_size
	.long	0x0	@ data
	.long	0x0	@ name_length
	.long	.L.env.buf.36	@ name

	.long	0xffffffff	@ apk_fd
	.long	0x0	@ data_offset
	.long	0x0	@ data_size
	.long	0x0	@ data
	.long	0x0	@ name_length
	.long	.L.env.buf.37	@ name

	.long	0xffffffff	@ apk_fd
	.long	0x0	@ data_offset
	.long	0x0	@ data_size
	.long	0x0	@ data
	.long	0x0	@ name_length
	.long	.L.env.buf.38	@ name

	.long	0xffffffff	@ apk_fd
	.long	0x0	@ data_offset
	.long	0x0	@ data_size
	.long	0x0	@ data
	.long	0x0	@ name_length
	.long	.L.env.buf.39	@ name

	.long	0xffffffff	@ apk_fd
	.long	0x0	@ data_offset
	.long	0x0	@ data_size
	.long	0x0	@ data
	.long	0x0	@ name_length
	.long	.L.env.buf.40	@ name

	.long	0xffffffff	@ apk_fd
	.long	0x0	@ data_offset
	.long	0x0	@ data_size
	.long	0x0	@ data
	.long	0x0	@ name_length
	.long	.L.env.buf.41	@ name

	.long	0xffffffff	@ apk_fd
	.long	0x0	@ data_offset
	.long	0x0	@ data_size
	.long	0x0	@ data
	.long	0x0	@ name_length
	.long	.L.env.buf.42	@ name

	.long	0xffffffff	@ apk_fd
	.long	0x0	@ data_offset
	.long	0x0	@ data_size
	.long	0x0	@ data
	.long	0x0	@ name_length
	.long	.L.env.buf.43	@ name

	.long	0xffffffff	@ apk_fd
	.long	0x0	@ data_offset
	.long	0x0	@ data_size
	.long	0x0	@ data
	.long	0x0	@ name_length
	.long	.L.env.buf.44	@ name

	.long	0xffffffff	@ apk_fd
	.long	0x0	@ data_offset
	.long	0x0	@ data_size
	.long	0x0	@ data
	.long	0x0	@ name_length
	.long	.L.env.buf.45	@ name

	.long	0xffffffff	@ apk_fd
	.long	0x0	@ data_offset
	.long	0x0	@ data_size
	.long	0x0	@ data
	.long	0x0	@ name_length
	.long	.L.env.buf.46	@ name

	.long	0xffffffff	@ apk_fd
	.long	0x0	@ data_offset
	.long	0x0	@ data_size
	.long	0x0	@ data
	.long	0x0	@ name_length
	.long	.L.env.buf.47	@ name

	.long	0xffffffff	@ apk_fd
	.long	0x0	@ data_offset
	.long	0x0	@ data_size
	.long	0x0	@ data
	.long	0x0	@ name_length
	.long	.L.env.buf.48	@ name

	.long	0xffffffff	@ apk_fd
	.long	0x0	@ data_offset
	.long	0x0	@ data_size
	.long	0x0	@ data
	.long	0x0	@ name_length
	.long	.L.env.buf.49	@ name

	.long	0xffffffff	@ apk_fd
	.long	0x0	@ data_offset
	.long	0x0	@ data_size
	.long	0x0	@ data
	.long	0x0	@ name_length
	.long	.L.env.buf.50	@ name

	.long	0xffffffff	@ apk_fd
	.long	0x0	@ data_offset
	.long	0x0	@ data_size
	.long	0x0	@ data
	.long	0x0	@ name_length
	.long	.L.env.buf.51	@ name

	.long	0xffffffff	@ apk_fd
	.long	0x0	@ data_offset
	.long	0x0	@ data_size
	.long	0x0	@ data
	.long	0x0	@ name_length
	.long	.L.env.buf.52	@ name

	.long	0xffffffff	@ apk_fd
	.long	0x0	@ data_offset
	.long	0x0	@ data_size
	.long	0x0	@ data
	.long	0x0	@ name_length
	.long	.L.env.buf.53	@ name

	.long	0xffffffff	@ apk_fd
	.long	0x0	@ data_offset
	.long	0x0	@ data_size
	.long	0x0	@ data
	.long	0x0	@ name_length
	.long	.L.env.buf.54	@ name

	.long	0xffffffff	@ apk_fd
	.long	0x0	@ data_offset
	.long	0x0	@ data_size
	.long	0x0	@ data
	.long	0x0	@ name_length
	.long	.L.env.buf.55	@ name

	.long	0xffffffff	@ apk_fd
	.long	0x0	@ data_offset
	.long	0x0	@ data_size
	.long	0x0	@ data
	.long	0x0	@ name_length
	.long	.L.env.buf.56	@ name

	.long	0xffffffff	@ apk_fd
	.long	0x0	@ data_offset
	.long	0x0	@ data_size
	.long	0x0	@ data
	.long	0x0	@ name_length
	.long	.L.env.buf.57	@ name

	.long	0xffffffff	@ apk_fd
	.long	0x0	@ data_offset
	.long	0x0	@ data_size
	.long	0x0	@ data
	.long	0x0	@ name_length
	.long	.L.env.buf.58	@ name

	.long	0xffffffff	@ apk_fd
	.long	0x0	@ data_offset
	.long	0x0	@ data_size
	.long	0x0	@ data
	.long	0x0	@ name_length
	.long	.L.env.buf.59	@ name

	.long	0xffffffff	@ apk_fd
	.long	0x0	@ data_offset
	.long	0x0	@ data_size
	.long	0x0	@ data
	.long	0x0	@ name_length
	.long	.L.env.buf.60	@ name

	.long	0xffffffff	@ apk_fd
	.long	0x0	@ data_offset
	.long	0x0	@ data_size
	.long	0x0	@ data
	.long	0x0	@ name_length
	.long	.L.env.buf.61	@ name

	.long	0xffffffff	@ apk_fd
	.long	0x0	@ data_offset
	.long	0x0	@ data_size
	.long	0x0	@ data
	.long	0x0	@ name_length
	.long	.L.env.buf.62	@ name

	.long	0xffffffff	@ apk_fd
	.long	0x0	@ data_offset
	.long	0x0	@ data_size
	.long	0x0	@ data
	.long	0x0	@ name_length
	.long	.L.env.buf.63	@ name

	.long	0xffffffff	@ apk_fd
	.long	0x0	@ data_offset
	.long	0x0	@ data_size
	.long	0x0	@ data
	.long	0x0	@ name_length
	.long	.L.env.buf.64	@ name

	.long	0xffffffff	@ apk_fd
	.long	0x0	@ data_offset
	.long	0x0	@ data_size
	.long	0x0	@ data
	.long	0x0	@ name_length
	.long	.L.env.buf.65	@ name

	.long	0xffffffff	@ apk_fd
	.long	0x0	@ data_offset
	.long	0x0	@ data_size
	.long	0x0	@ data
	.long	0x0	@ name_length
	.long	.L.env.buf.66	@ name

	.long	0xffffffff	@ apk_fd
	.long	0x0	@ data_offset
	.long	0x0	@ data_size
	.long	0x0	@ data
	.long	0x0	@ name_length
	.long	.L.env.buf.67	@ name

	.long	0xffffffff	@ apk_fd
	.long	0x0	@ data_offset
	.long	0x0	@ data_size
	.long	0x0	@ data
	.long	0x0	@ name_length
	.long	.L.env.buf.68	@ name

	.long	0xffffffff	@ apk_fd
	.long	0x0	@ data_offset
	.long	0x0	@ data_size
	.long	0x0	@ data
	.long	0x0	@ name_length
	.long	.L.env.buf.69	@ name

	.long	0xffffffff	@ apk_fd
	.long	0x0	@ data_offset
	.long	0x0	@ data_size
	.long	0x0	@ data
	.long	0x0	@ name_length
	.long	.L.env.buf.70	@ name

	.long	0xffffffff	@ apk_fd
	.long	0x0	@ data_offset
	.long	0x0	@ data_size
	.long	0x0	@ data
	.long	0x0	@ name_length
	.long	.L.env.buf.71	@ name

	.long	0xffffffff	@ apk_fd
	.long	0x0	@ data_offset
	.long	0x0	@ data_size
	.long	0x0	@ data
	.long	0x0	@ name_length
	.long	.L.env.buf.72	@ name

	.long	0xffffffff	@ apk_fd
	.long	0x0	@ data_offset
	.long	0x0	@ data_size
	.long	0x0	@ data
	.long	0x0	@ name_length
	.long	.L.env.buf.73	@ name

	.long	0xffffffff	@ apk_fd
	.long	0x0	@ data_offset
	.long	0x0	@ data_size
	.long	0x0	@ data
	.long	0x0	@ name_length
	.long	.L.env.buf.74	@ name

	.long	0xffffffff	@ apk_fd
	.long	0x0	@ data_offset
	.long	0x0	@ data_size
	.long	0x0	@ data
	.long	0x0	@ name_length
	.long	.L.env.buf.75	@ name

	.long	0xffffffff	@ apk_fd
	.long	0x0	@ data_offset
	.long	0x0	@ data_size
	.long	0x0	@ data
	.long	0x0	@ name_length
	.long	.L.env.buf.76	@ name

	.long	0xffffffff	@ apk_fd
	.long	0x0	@ data_offset
	.long	0x0	@ data_size
	.long	0x0	@ data
	.long	0x0	@ name_length
	.long	.L.env.buf.77	@ name

	.long	0xffffffff	@ apk_fd
	.long	0x0	@ data_offset
	.long	0x0	@ data_size
	.long	0x0	@ data
	.long	0x0	@ name_length
	.long	.L.env.buf.78	@ name

	.long	0xffffffff	@ apk_fd
	.long	0x0	@ data_offset
	.long	0x0	@ data_size
	.long	0x0	@ data
	.long	0x0	@ name_length
	.long	.L.env.buf.79	@ name

	.long	0xffffffff	@ apk_fd
	.long	0x0	@ data_offset
	.long	0x0	@ data_size
	.long	0x0	@ data
	.long	0x0	@ name_length
	.long	.L.env.buf.80	@ name

	.long	0xffffffff	@ apk_fd
	.long	0x0	@ data_offset
	.long	0x0	@ data_size
	.long	0x0	@ data
	.long	0x0	@ name_length
	.long	.L.env.buf.81	@ name

	.long	0xffffffff	@ apk_fd
	.long	0x0	@ data_offset
	.long	0x0	@ data_size
	.long	0x0	@ data
	.long	0x0	@ name_length
	.long	.L.env.buf.82	@ name

	.long	0xffffffff	@ apk_fd
	.long	0x0	@ data_offset
	.long	0x0	@ data_size
	.long	0x0	@ data
	.long	0x0	@ name_length
	.long	.L.env.buf.83	@ name

	.long	0xffffffff	@ apk_fd
	.long	0x0	@ data_offset
	.long	0x0	@ data_size
	.long	0x0	@ data
	.long	0x0	@ name_length
	.long	.L.env.buf.84	@ name

	.long	0xffffffff	@ apk_fd
	.long	0x0	@ data_offset
	.long	0x0	@ data_size
	.long	0x0	@ data
	.long	0x0	@ name_length
	.long	.L.env.buf.85	@ name

	.long	0xffffffff	@ apk_fd
	.long	0x0	@ data_offset
	.long	0x0	@ data_size
	.long	0x0	@ data
	.long	0x0	@ name_length
	.long	.L.env.buf.86	@ name

	.size	bundled_assemblies, 2088
	@ Assembly store individual assembly data
	.type	assembly_store_bundled_assemblies, %object
	.global	assembly_store_bundled_assemblies
assembly_store_bundled_assemblies:
	.size	assembly_store_bundled_assemblies, 0
	@ Assembly store data
	.type	assembly_stores, %object
	.global	assembly_stores
assembly_stores:
	.size	assembly_stores, 0

	.type	dso_cache, %object
	.global	dso_cache

	.section	.data, "aw", %progbits
	.p2align	3
dso_cache:
	.long	0x5e00610	@ hash, from name: libxamarin-debug-app-helper.so
	.long	0x0
	.byte	0x0	@ ignore
	.zero	3
	.long	.L.autostr.61	@ name: libxamarin-debug-app-helper.so
	.long	0x0	@ handle
	.zero	4

	.long	0x800e5cb	@ hash, from name: libmono-profiler-log.so
	.long	0x0
	.byte	0x0	@ ignore
	.zero	3
	.long	.L.autostr.62	@ name: libmono-profiler-log.so
	.long	0x0	@ handle
	.zero	4

	.long	0xdaac0a4	@ hash, from name: monodroid.so
	.long	0x0
	.byte	0x0	@ ignore
	.zero	3
	.long	.L.autostr.63	@ name: libmonodroid.so
	.long	0x0	@ handle
	.zero	4

	.long	0x13c9bd62	@ hash, from name: xa-internal-api
	.long	0x0
	.byte	0x0	@ ignore
	.zero	3
	.long	.L.autostr.64	@ name: libxa-internal-api.so
	.long	0x0	@ handle
	.zero	4

	.long	0x2a81d481	@ hash, from name: libxamarin-debug-app-helper
	.long	0x0
	.byte	0x0	@ ignore
	.zero	3
	.long	.L.autostr.65	@ name: libxamarin-debug-app-helper.so
	.long	0x0	@ handle
	.zero	4

	.long	0x2c9b28d2	@ hash, from name: monodroid
	.long	0x0
	.byte	0x0	@ ignore
	.zero	3
	.long	.L.autostr.66	@ name: libmonodroid.so
	.long	0x0	@ handle
	.zero	4

	.long	0x336c8e2e	@ hash, from name: xa-internal-api.so
	.long	0x0
	.byte	0x0	@ ignore
	.zero	3
	.long	.L.autostr.67	@ name: libxa-internal-api.so
	.long	0x0	@ handle
	.zero	4

	.long	0x4d3b9c27	@ hash, from name: mono-btls-shared
	.long	0x0
	.byte	0x0	@ ignore
	.zero	3
	.long	.L.autostr.68	@ name: libmono-btls-shared.so
	.long	0x0	@ handle
	.zero	4

	.long	0x4fff05c3	@ hash, from name: mono-native
	.long	0x0
	.byte	0x0	@ ignore
	.zero	3
	.long	.L.autostr.69	@ name: libmono-native.so
	.long	0x0	@ handle
	.zero	4

	.long	0x5a5d38a3	@ hash, from name: xamarin-debug-app-helper.so
	.long	0x0
	.byte	0x0	@ ignore
	.zero	3
	.long	.L.autostr.70	@ name: libxamarin-debug-app-helper.so
	.long	0x0	@ handle
	.zero	4

	.long	0x6bede289	@ hash, from name: mono-profiler-log.so
	.long	0x0
	.byte	0x0	@ ignore
	.zero	3
	.long	.L.autostr.71	@ name: libmono-profiler-log.so
	.long	0x0	@ handle
	.zero	4

	.long	0x7b8f6fc3	@ hash, from name: mono-native.so
	.long	0x0
	.byte	0x0	@ ignore
	.zero	3
	.long	.L.autostr.72	@ name: libmono-native.so
	.long	0x0	@ handle
	.zero	4

	.long	0x84e63f2e	@ hash, from name: xamarin-debug-app-helper
	.long	0x0
	.byte	0x0	@ ignore
	.zero	3
	.long	.L.autostr.73	@ name: libxamarin-debug-app-helper.so
	.long	0x0	@ handle
	.zero	4

	.long	0x94c7a87b	@ hash, from name: libmonosgen-2.0
	.long	0x0
	.byte	0x0	@ ignore
	.zero	3
	.long	.L.autostr.74	@ name: libmonosgen-2.0.so
	.long	0x0	@ handle
	.zero	4

	.long	0x96dfaec4	@ hash, from name: libmono-native
	.long	0x0
	.byte	0x0	@ ignore
	.zero	3
	.long	.L.autostr.75	@ name: libmono-native.so
	.long	0x0	@ handle
	.zero	4

	.long	0x9e770032	@ hash, from name: monosgen-2.0.so
	.long	0x0
	.byte	0x0	@ ignore
	.zero	3
	.long	.L.autostr.76	@ name: libmonosgen-2.0.so
	.long	0x0	@ handle
	.zero	4

	.long	0xa97e926a	@ hash, from name: libxa-internal-api.so
	.long	0x0
	.byte	0x0	@ ignore
	.zero	3
	.long	.L.autostr.77	@ name: libxa-internal-api.so
	.long	0x0	@ handle
	.zero	4

	.long	0xabce7529	@ hash, from name: libmono-profiler-log
	.long	0x0
	.byte	0x0	@ ignore
	.zero	3
	.long	.L.autostr.78	@ name: libmono-profiler-log.so
	.long	0x0	@ handle
	.zero	4

	.long	0xb631a731	@ hash, from name: libmono-native.so
	.long	0x0
	.byte	0x0	@ ignore
	.zero	3
	.long	.L.autostr.79	@ name: libmono-native.so
	.long	0x0	@ handle
	.zero	4

	.long	0xc60479f4	@ hash, from name: libmono-btls-shared
	.long	0x0
	.byte	0x0	@ ignore
	.zero	3
	.long	.L.autostr.80	@ name: libmono-btls-shared.so
	.long	0x0	@ handle
	.zero	4

	.long	0xcbfba5ef	@ hash, from name: libmonodroid.so
	.long	0x0
	.byte	0x0	@ ignore
	.zero	3
	.long	.L.autostr.81	@ name: libmonodroid.so
	.long	0x0	@ handle
	.zero	4

	.long	0xd4e925c9	@ hash, from name: libxa-internal-api
	.long	0x0
	.byte	0x0	@ ignore
	.zero	3
	.long	.L.autostr.82	@ name: libxa-internal-api.so
	.long	0x0	@ handle
	.zero	4

	.long	0xd7487663	@ hash, from name: mono-profiler-log
	.long	0x0
	.byte	0x0	@ ignore
	.zero	3
	.long	.L.autostr.83	@ name: libmono-profiler-log.so
	.long	0x0	@ handle
	.zero	4

	.long	0xd8bef4d7	@ hash, from name: libmonodroid
	.long	0x0
	.byte	0x0	@ ignore
	.zero	3
	.long	.L.autostr.84	@ name: libmonodroid.so
	.long	0x0	@ handle
	.zero	4

	.long	0xdd142f40	@ hash, from name: libmono-btls-shared.so
	.long	0x0
	.byte	0x0	@ ignore
	.zero	3
	.long	.L.autostr.85	@ name: libmono-btls-shared.so
	.long	0x0	@ handle
	.zero	4

	.long	0xe1ed3ce0	@ hash, from name: monosgen-2.0
	.long	0x0
	.byte	0x0	@ ignore
	.zero	3
	.long	.L.autostr.86	@ name: libmonosgen-2.0.so
	.long	0x0	@ handle
	.zero	4

	.long	0xe25326ee	@ hash, from name: mono-btls-shared.so
	.long	0x0
	.byte	0x0	@ ignore
	.zero	3
	.long	.L.autostr.87	@ name: libmono-btls-shared.so
	.long	0x0	@ handle
	.zero	4

	.long	0xe391d1b5	@ hash, from name: libmonosgen-2.0.so
	.long	0x0
	.byte	0x0	@ ignore
	.zero	3
	.long	.L.autostr.88	@ name: libmonosgen-2.0.so
	.long	0x0	@ handle
	.zero	4

	.size	dso_cache, 672

	@
	@ Generated from instance of: Xamarin.Android.Tasks.ApplicationConfig, Xamarin.Android.Build.Tasks, Version=12.3.0.26, Culture=neutral, PublicKeyToken=84e04ff9cfb79065
	@
	.type	application_config, %object
	.global	application_config

	.section	.data, "aw", %progbits
	.p2align	2
application_config:
	.byte	0x0	@ uses_mono_llvm
	.byte	0x0	@ uses_mono_aot
	.byte	0x1	@ uses_assembly_preload
	.byte	0x0	@ is_a_bundled_app
	.byte	0x0	@ broken_exception_transitions
	.byte	0x0	@ instant_run_enabled
	.byte	0x0	@ jni_add_native_method_registration_attribute_present
	.byte	0x0	@ have_runtime_config_blob
	.byte	0x0	@ have_assemblies_blob
	.byte	0x1	@ bound_stream_io_exception_type
	.zero	2
	.long	0x3	@ package_naming_policy
	.long	0x3c	@ environment_variable_count
	.long	0x0	@ system_property_count
	.long	0x57	@ number_of_assemblies_in_apk
	.long	0x3f	@ bundled_assembly_name_width
	.long	0x2	@ number_of_assembly_store_files
	.long	0x1c	@ number_of_dso_cache_entries
	.long	0x0	@ mono_components_mask
	.long	.L.autostr.89	@ android_package_name
	.size	application_config, 48


	.section	.rodata.autostr, "aMS", %progbits, 1
	.type	.L.autostr.0, %object
.L.autostr.0:
	.asciz	"none"
	.size	.L.autostr.0, 5

	.type	.L.autostr.1, %object
.L.autostr.1:
	.asciz	"MONO_GC_PARAMS"
	.size	.L.autostr.1, 15

	.type	.L.autostr.2, %object
.L.autostr.2:
	.asciz	"major=marksweep-conc"
	.size	.L.autostr.2, 21

	.type	.L.autostr.3, %object
.L.autostr.3:
	.asciz	"MONO_LOG_LEVEL"
	.size	.L.autostr.3, 15

	.type	.L.autostr.4, %object
.L.autostr.4:
	.asciz	"info"
	.size	.L.autostr.4, 5

	.type	.L.autostr.5, %object
.L.autostr.5:
	.asciz	"XAMARIN_BUILD_ID"
	.size	.L.autostr.5, 17

	.type	.L.autostr.6, %object
.L.autostr.6:
	.asciz	"e5095626-3007-49cf-aac5-0ec82d658cb3"
	.size	.L.autostr.6, 37

	.type	.L.autostr.7, %object
.L.autostr.7:
	.asciz	"XA_HTTP_CLIENT_HANDLER_TYPE"
	.size	.L.autostr.7, 28

	.type	.L.autostr.8, %object
.L.autostr.8:
	.asciz	"Xamarin.Android.Net.AndroidClientHandler"
	.size	.L.autostr.8, 41

	.type	.L.autostr.9, %object
.L.autostr.9:
	.asciz	"XA_TLS_PROVIDER"
	.size	.L.autostr.9, 16

	.type	.L.autostr.10, %object
.L.autostr.10:
	.asciz	"btls"
	.size	.L.autostr.10, 5

	.type	.L.autostr.11, %object
.L.autostr.11:
	.asciz	"["
	.size	.L.autostr.11, 2

	.type	.L.autostr.12, %object
.L.autostr.12:
	.asciz	""
	.size	.L.autostr.12, 1

	.type	.L.autostr.13, %object
.L.autostr.13:
	.asciz	"\"Description\": \"Все\","
	.size	.L.autostr.13, 29

	.type	.L.autostr.14, %object
.L.autostr.14:
	.asciz	""
	.size	.L.autostr.14, 1

	.type	.L.autostr.15, %object
.L.autostr.15:
	.asciz	"\"Id\": 1,"
	.size	.L.autostr.15, 11

	.type	.L.autostr.16, %object
.L.autostr.16:
	.asciz	""
	.size	.L.autostr.16, 1

	.type	.L.autostr.17, %object
.L.autostr.17:
	.asciz	"\"Id\": 2,"
	.size	.L.autostr.17, 11

	.type	.L.autostr.18, %object
.L.autostr.18:
	.asciz	""
	.size	.L.autostr.18, 1

	.type	.L.autostr.19, %object
.L.autostr.19:
	.asciz	"\"Id\": 3,"
	.size	.L.autostr.19, 11

	.type	.L.autostr.20, %object
.L.autostr.20:
	.asciz	""
	.size	.L.autostr.20, 1

	.type	.L.autostr.21, %object
.L.autostr.21:
	.asciz	"\"Id\": 4,"
	.size	.L.autostr.21, 11

	.type	.L.autostr.22, %object
.L.autostr.22:
	.asciz	""
	.size	.L.autostr.22, 1

	.type	.L.autostr.23, %object
.L.autostr.23:
	.asciz	"\"Id\": 5,"
	.size	.L.autostr.23, 11

	.type	.L.autostr.24, %object
.L.autostr.24:
	.asciz	""
	.size	.L.autostr.24, 1

	.type	.L.autostr.25, %object
.L.autostr.25:
	.asciz	"\"Photo\": \"Rec1.png\","
	.size	.L.autostr.25, 25

	.type	.L.autostr.26, %object
.L.autostr.26:
	.asciz	""
	.size	.L.autostr.26, 1

	.type	.L.autostr.27, %object
.L.autostr.27:
	.asciz	"\"Photo\": \"Rec2.png\","
	.size	.L.autostr.27, 25

	.type	.L.autostr.28, %object
.L.autostr.28:
	.asciz	""
	.size	.L.autostr.28, 1

	.type	.L.autostr.29, %object
.L.autostr.29:
	.asciz	"\"Photo\": \"Rec3.png\","
	.size	.L.autostr.29, 25

	.type	.L.autostr.30, %object
.L.autostr.30:
	.asciz	""
	.size	.L.autostr.30, 1

	.type	.L.autostr.31, %object
.L.autostr.31:
	.asciz	"\"Photo\": \"Rec4.png\","
	.size	.L.autostr.31, 25

	.type	.L.autostr.32, %object
.L.autostr.32:
	.asciz	""
	.size	.L.autostr.32, 1

	.type	.L.autostr.33, %object
.L.autostr.33:
	.asciz	"\"Photo\": \"Rec5.png\","
	.size	.L.autostr.33, 25

	.type	.L.autostr.34, %object
.L.autostr.34:
	.asciz	""
	.size	.L.autostr.34, 1

	.type	.L.autostr.35, %object
.L.autostr.35:
	.asciz	"\"Text\": \"Pavlova\","
	.size	.L.autostr.35, 23

	.type	.L.autostr.36, %object
.L.autostr.36:
	.asciz	""
	.size	.L.autostr.36, 1

	.type	.L.autostr.37, %object
.L.autostr.37:
	.asciz	"\"Text\": \"Барэисе маруяки\","
	.size	.L.autostr.37, 45

	.type	.L.autostr.38, %object
.L.autostr.38:
	.asciz	""
	.size	.L.autostr.38, 1

	.type	.L.autostr.39, %object
.L.autostr.39:
	.asciz	"\"Text\": \"Блинный торт\","
	.size	.L.autostr.39, 39

	.type	.L.autostr.40, %object
.L.autostr.40:
	.asciz	""
	.size	.L.autostr.40, 1

	.type	.L.autostr.41, %object
.L.autostr.41:
	.asciz	"\"Text\": \"Конраку тама\","
	.size	.L.autostr.41, 39

	.type	.L.autostr.42, %object
.L.autostr.42:
	.asciz	""
	.size	.L.autostr.42, 1

	.type	.L.autostr.43, %object
.L.autostr.43:
	.asciz	"\"Text\": \"Сырная Пицца\","
	.size	.L.autostr.43, 39

	.type	.L.autostr.44, %object
.L.autostr.44:
	.asciz	""
	.size	.L.autostr.44, 1

	.type	.L.autostr.45, %object
.L.autostr.45:
	.asciz	"\"Time1\": \"\","
	.size	.L.autostr.45, 17

	.type	.L.autostr.46, %object
.L.autostr.46:
	.asciz	""
	.size	.L.autostr.46, 1

	.type	.L.autostr.47, %object
.L.autostr.47:
	.asciz	"\"Time2\": \"\","
	.size	.L.autostr.47, 17

	.type	.L.autostr.48, %object
.L.autostr.48:
	.asciz	""
	.size	.L.autostr.48, 1

	.type	.L.autostr.49, %object
.L.autostr.49:
	.asciz	"\"Time3\": \"\""
	.size	.L.autostr.49, 16

	.type	.L.autostr.50, %object
.L.autostr.50:
	.asciz	""
	.size	.L.autostr.50, 1

	.type	.L.autostr.51, %object
.L.autostr.51:
	.asciz	"]"
	.size	.L.autostr.51, 2

	.type	.L.autostr.52, %object
.L.autostr.52:
	.asciz	""
	.size	.L.autostr.52, 1

	.type	.L.autostr.53, %object
.L.autostr.53:
	.asciz	"__XA_PACKAGE_NAMING_POLICY__"
	.size	.L.autostr.53, 29

	.type	.L.autostr.54, %object
.L.autostr.54:
	.asciz	"LowercaseCrc64"
	.size	.L.autostr.54, 15

	.type	.L.autostr.55, %object
.L.autostr.55:
	.asciz	"{"
	.size	.L.autostr.55, 2

	.type	.L.autostr.56, %object
.L.autostr.56:
	.asciz	""
	.size	.L.autostr.56, 1

	.type	.L.autostr.57, %object
.L.autostr.57:
	.asciz	"}"
	.size	.L.autostr.57, 2

	.type	.L.autostr.58, %object
.L.autostr.58:
	.asciz	""
	.size	.L.autostr.58, 1

	.type	.L.autostr.59, %object
.L.autostr.59:
	.asciz	"},"
	.size	.L.autostr.59, 3

	.type	.L.autostr.60, %object
.L.autostr.60:
	.asciz	""
	.size	.L.autostr.60, 1

	.type	.L.autostr.61, %object
.L.autostr.61:
	.asciz	"libxamarin-debug-app-helper.so"
	.size	.L.autostr.61, 31

	.type	.L.autostr.62, %object
.L.autostr.62:
	.asciz	"libmono-profiler-log.so"
	.size	.L.autostr.62, 24

	.type	.L.autostr.63, %object
.L.autostr.63:
	.asciz	"libmonodroid.so"
	.size	.L.autostr.63, 16

	.type	.L.autostr.64, %object
.L.autostr.64:
	.asciz	"libxa-internal-api.so"
	.size	.L.autostr.64, 22

	.type	.L.autostr.65, %object
.L.autostr.65:
	.asciz	"libxamarin-debug-app-helper.so"
	.size	.L.autostr.65, 31

	.type	.L.autostr.66, %object
.L.autostr.66:
	.asciz	"libmonodroid.so"
	.size	.L.autostr.66, 16

	.type	.L.autostr.67, %object
.L.autostr.67:
	.asciz	"libxa-internal-api.so"
	.size	.L.autostr.67, 22

	.type	.L.autostr.68, %object
.L.autostr.68:
	.asciz	"libmono-btls-shared.so"
	.size	.L.autostr.68, 23

	.type	.L.autostr.69, %object
.L.autostr.69:
	.asciz	"libmono-native.so"
	.size	.L.autostr.69, 18

	.type	.L.autostr.70, %object
.L.autostr.70:
	.asciz	"libxamarin-debug-app-helper.so"
	.size	.L.autostr.70, 31

	.type	.L.autostr.71, %object
.L.autostr.71:
	.asciz	"libmono-profiler-log.so"
	.size	.L.autostr.71, 24

	.type	.L.autostr.72, %object
.L.autostr.72:
	.asciz	"libmono-native.so"
	.size	.L.autostr.72, 18

	.type	.L.autostr.73, %object
.L.autostr.73:
	.asciz	"libxamarin-debug-app-helper.so"
	.size	.L.autostr.73, 31

	.type	.L.autostr.74, %object
.L.autostr.74:
	.asciz	"libmonosgen-2.0.so"
	.size	.L.autostr.74, 19

	.type	.L.autostr.75, %object
.L.autostr.75:
	.asciz	"libmono-native.so"
	.size	.L.autostr.75, 18

	.type	.L.autostr.76, %object
.L.autostr.76:
	.asciz	"libmonosgen-2.0.so"
	.size	.L.autostr.76, 19

	.type	.L.autostr.77, %object
.L.autostr.77:
	.asciz	"libxa-internal-api.so"
	.size	.L.autostr.77, 22

	.type	.L.autostr.78, %object
.L.autostr.78:
	.asciz	"libmono-profiler-log.so"
	.size	.L.autostr.78, 24

	.type	.L.autostr.79, %object
.L.autostr.79:
	.asciz	"libmono-native.so"
	.size	.L.autostr.79, 18

	.type	.L.autostr.80, %object
.L.autostr.80:
	.asciz	"libmono-btls-shared.so"
	.size	.L.autostr.80, 23

	.type	.L.autostr.81, %object
.L.autostr.81:
	.asciz	"libmonodroid.so"
	.size	.L.autostr.81, 16

	.type	.L.autostr.82, %object
.L.autostr.82:
	.asciz	"libxa-internal-api.so"
	.size	.L.autostr.82, 22

	.type	.L.autostr.83, %object
.L.autostr.83:
	.asciz	"libmono-profiler-log.so"
	.size	.L.autostr.83, 24

	.type	.L.autostr.84, %object
.L.autostr.84:
	.asciz	"libmonodroid.so"
	.size	.L.autostr.84, 16

	.type	.L.autostr.85, %object
.L.autostr.85:
	.asciz	"libmono-btls-shared.so"
	.size	.L.autostr.85, 23

	.type	.L.autostr.86, %object
.L.autostr.86:
	.asciz	"libmonosgen-2.0.so"
	.size	.L.autostr.86, 19

	.type	.L.autostr.87, %object
.L.autostr.87:
	.asciz	"libmono-btls-shared.so"
	.size	.L.autostr.87, 23

	.type	.L.autostr.88, %object
.L.autostr.88:
	.asciz	"libmonosgen-2.0.so"
	.size	.L.autostr.88, 19

	.type	.L.autostr.89, %object
.L.autostr.89:
	.asciz	"com.companyname.cookblog"
	.size	.L.autostr.89, 25


	.ident	"Xamarin.Android remotes/origin/d17-2 @ bbba5a21f3b649a761b22d83959758b4d30df672"
