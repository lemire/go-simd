//+build !noasm !appengine
// AUTO-GENERATED BY C2GOASM -- DO NOT EDIT

DATA LCDATA1<>+0x000(SB)/8, $0x0f0f0f0f0f0f0f0f
DATA LCDATA1<>+0x008(SB)/8, $0x0f0f0f0f0f0f0f0f
DATA LCDATA1<>+0x010(SB)/8, $0xf4f4f4f4f4f4f4f4
DATA LCDATA1<>+0x018(SB)/8, $0xf4f4f4f4f4f4f4f4
DATA LCDATA1<>+0x020(SB)/8, $0x0101010101010101
DATA LCDATA1<>+0x028(SB)/8, $0x0403020200000000
DATA LCDATA1<>+0x030(SB)/8, $0x0101010101010101
DATA LCDATA1<>+0x038(SB)/8, $0x0101010101010101
DATA LCDATA1<>+0x040(SB)/8, $0x0202020202020202
DATA LCDATA1<>+0x048(SB)/8, $0x0202020202020202
DATA LCDATA1<>+0x050(SB)/8, $0xedededededededed
DATA LCDATA1<>+0x058(SB)/8, $0xedededededededed
DATA LCDATA1<>+0x060(SB)/8, $0x9f9f9f9f9f9f9f9f
DATA LCDATA1<>+0x068(SB)/8, $0x9f9f9f9f9f9f9f9f
DATA LCDATA1<>+0x070(SB)/8, $0x8f8f8f8f8f8f8f8f
DATA LCDATA1<>+0x078(SB)/8, $0x8f8f8f8f8f8f8f8f
DATA LCDATA1<>+0x080(SB)/8, $0x8080808080808080
DATA LCDATA1<>+0x088(SB)/8, $0xf1e180c280808080
DATA LCDATA1<>+0x090(SB)/8, $0x8080808080808080
DATA LCDATA1<>+0x098(SB)/8, $0x90a07f7f80808080
DATA LCDATA1<>+0x0a0(SB)/8, $0x0909090909090909
DATA LCDATA1<>+0x0a8(SB)/8, $0x0109090909090909
GLOBL LCDATA1<>(SB), 8, $176

TEXT ·__validate_utf8_fast_sse4(SB), $0-32

	MOVQ state+0(FP), DI
	MOVQ buf+8(FP), SI
	MOVQ len+16(FP), DX
	MOVQ res+24(FP), CX
	LEAQ LCDATA1<>(SB), BP

	LONG $0x10fa8348                     // cmp    rdx, 16
	JB   LBB0_7
	LONG $0xf0428d4c                     // lea    r8, [rdx - 16]
	LONG $0xc9ef0f66                     // pxor    xmm1, xmm1
	WORD $0x3145; BYTE $0xe4             // xor    r12d, r12d
	LONG $0x6f0f4466; WORD $0x1065       // movdqa    xmm12, oword 16[rbp] /* [rip + LCPI0_1] */
	LONG $0x6f0f4466; WORD $0x306d       // movdqa    xmm13, oword 48[rbp] /* [rip + LCPI0_3] */
	QUAD $0x000080b56f0f4466; BYTE $0x00 // movdqa    xmm14, oword 128[rbp] /* [rip + LCPI0_8] */
	QUAD $0x000090bd6f0f4466; BYTE $0x00 // movdqa    xmm15, oword 144[rbp] /* [rip + LCPI0_9] */
	LONG $0xdbef0f66                     // pxor    xmm3, xmm3
	LONG $0xe4ef0f66                     // pxor    xmm4, xmm4
	LONG $0xf6ef0f66                     // pxor    xmm6, xmm6

LBB0_2:
	LONG $0x6f0f46f3; WORD $0x261c             // movdqu    xmm11, oword [rsi + r12]
	LONG $0x6f0f4566; BYTE $0xc3               // movdqa    xmm8, xmm11
	LONG $0x710f4166; WORD $0x04d0             // psrlw    xmm8, 4
	LONG $0xdb0f4466; WORD $0x0045             // pand    xmm8, oword 0[rbp] /* [rip + LCPI0_0] */
	LONG $0x6f0f4166; BYTE $0xd3               // movdqa    xmm2, xmm11
	LONG $0xd80f4166; BYTE $0xd4               // psubusb    xmm2, xmm12
	LONG $0xd1eb0f66                           // por    xmm2, xmm1
	LONG $0x6f0f4466; WORD $0x2055             // movdqa    xmm10, oword 32[rbp] /* [rip + LCPI0_2] */
	LONG $0x380f4566; WORD $0xd000             // pshufb    xmm10, xmm8
	LONG $0x6f0f4166; BYTE $0xca               // movdqa    xmm1, xmm10
	LONG $0x0f3a0f66; WORD $0x0fcb             // palignr    xmm1, xmm3, 15
	LONG $0xd80f4166; BYTE $0xcd               // psubusb    xmm1, xmm13
	LONG $0xfc0f4166; BYTE $0xca               // paddb    xmm1, xmm10
	LONG $0x6f0f4466; BYTE $0xc9               // movdqa    xmm9, xmm1
	LONG $0x3a0f4466; WORD $0xcb0f; BYTE $0x0e // palignr    xmm9, xmm3, 14
	LONG $0xd80f4466; WORD $0x404d             // psubusb    xmm9, oword 64[rbp] /* [rip + LCPI0_4] */
	LONG $0xfc0f4466; BYTE $0xc9               // paddb    xmm9, xmm1
	LONG $0x6f0f4166; BYTE $0xc9               // movdqa    xmm1, xmm9
	LONG $0x640f4166; BYTE $0xca               // pcmpgtb    xmm1, xmm10
	LONG $0x6f0f4166; BYTE $0xdd               // movdqa    xmm3, xmm13
	LONG $0x640f4166; BYTE $0xda               // pcmpgtb    xmm3, xmm10
	LONG $0xd9ef0f66                           // pxor    xmm3, xmm1
	LONG $0x6f0f4166; BYTE $0xcb               // movdqa    xmm1, xmm11
	LONG $0x0f3a0f66; WORD $0x0fce             // palignr    xmm1, xmm6, 15
	LONG $0xf16f0f66                           // movdqa    xmm6, xmm1
	LONG $0x6f0f4166; BYTE $0xc0               // movdqa    xmm0, xmm8
	LONG $0x0f3a0f66; WORD $0x0fc4             // palignr    xmm0, xmm4, 15
	LONG $0x6f0f4166; BYTE $0xe6               // movdqa    xmm4, xmm14
	LONG $0x00380f66; BYTE $0xe0               // pshufb    xmm4, xmm0
	LONG $0xe1640f66                           // pcmpgtb    xmm4, xmm1
	LONG $0x4d740f66; BYTE $0x50               // pcmpeqb    xmm1, oword 80[rbp] /* [rip + LCPI0_5] */
	LONG $0x740f4166; BYTE $0xf4               // pcmpeqb    xmm6, xmm12
	LONG $0x6f0f4166; BYTE $0xeb               // movdqa    xmm5, xmm11
	LONG $0x6d640f66; BYTE $0x60               // pcmpgtb    xmm5, oword 96[rbp] /* [rip + LCPI0_6] */
	LONG $0xe9db0f66                           // pand    xmm5, xmm1
	LONG $0x6f0f4166; BYTE $0xfb               // movdqa    xmm7, xmm11
	LONG $0x7d640f66; BYTE $0x70               // pcmpgtb    xmm7, oword 112[rbp] /* [rip + LCPI0_7] */
	LONG $0xfedb0f66                           // pand    xmm7, xmm6
	LONG $0xfdeb0f66                           // por    xmm7, xmm5
	LONG $0xfaeb0f66                           // por    xmm7, xmm2
	LONG $0x6f0f4166; BYTE $0xcf               // movdqa    xmm1, xmm15
	LONG $0x00380f66; BYTE $0xc8               // pshufb    xmm1, xmm0
	LONG $0x640f4166; BYTE $0xcb               // pcmpgtb    xmm1, xmm11
	LONG $0xccdb0f66                           // pand    xmm1, xmm4
	LONG $0xcfeb0f66                           // por    xmm1, xmm7
	LONG $0xcbeb0f66                           // por    xmm1, xmm3
	LONG $0x10c48349                           // add    r12, 16
	LONG $0x6f0f4166; BYTE $0xd9               // movdqa    xmm3, xmm9
	LONG $0x6f0f4166; BYTE $0xe0               // movdqa    xmm4, xmm8
	LONG $0x6f0f4166; BYTE $0xf3               // movdqa    xmm6, xmm11
	WORD $0x394d; BYTE $0xc4                   // cmp    r12, r8
	JBE  LBB0_2
	WORD $0x3949; BYTE $0xd4                   // cmp    r12, rdx
	JAE  LBB0_8

LBB0_4:
	LONG $0xc0ef0f66         // pxor    xmm0, xmm0
	LONG $0x077f0ff3         // movdqu    oword [rdi], xmm0
	WORD $0x8949; BYTE $0xd0 // mov    r8, rdx
	WORD $0x294d; BYTE $0xe0 // sub    r8, r12
	JE   LBB0_26
	LONG $0x260c8d4e         // lea    r9, [rsi + r12]
	LONG $0x20f88349         // cmp    r8, 32
	JB   LBB0_6
	LONG $0x161c8d48         // lea    rbx, [rsi + rdx]
	WORD $0x3948; BYTE $0xdf // cmp    rdi, rbx
	JAE  LBB0_12
	LONG $0x071c8d4a         // lea    rbx, [rdi + r8]
	WORD $0x3949; BYTE $0xd9 // cmp    r9, rbx
	JAE  LBB0_12

LBB0_6:
	WORD $0x3145; BYTE $0xd2 // xor    r10d, r10d

LBB0_20:
	WORD $0xd389             // mov    ebx, edx
	WORD $0x2944; BYTE $0xe3 // sub    ebx, r12d
	WORD $0xff48; BYTE $0xca // dec    rdx
	WORD $0x294c; BYTE $0xd2 // sub    rdx, r10
	WORD $0x294c; BYTE $0xe2 // sub    rdx, r12
	LONG $0x03e38348         // and    rbx, 3
	JE   LBB0_23
	WORD $0xf748; BYTE $0xdb // neg    rbx

LBB0_22:
	LONG $0x04b60f43; BYTE $0x11 // movzx    eax, byte [r9 + r10]
	LONG $0x17048842             // mov    byte [rdi + r10], al
	WORD $0xff49; BYTE $0xc2     // inc    r10
	WORD $0xff48; BYTE $0xc3     // inc    rbx
	JNE  LBB0_22

LBB0_23:
	LONG $0x03fa8348             // cmp    rdx, 3
	JB   LBB0_26
	WORD $0x294d; BYTE $0xd0     // sub    r8, r10
	LONG $0x17548d4a; BYTE $0x03 // lea    rdx, [rdi + r10 + 3]
	WORD $0x014d; BYTE $0xd4     // add    r12, r10
	LONG $0x26448d4a; BYTE $0x03 // lea    rax, [rsi + r12 + 3]
	WORD $0xf631                 // xor    esi, esi

LBB0_25:
	LONG $0x305cb60f; BYTE $0xfd // movzx    ebx, byte [rax + rsi - 3]
	LONG $0xfd325c88             // mov    byte [rdx + rsi - 3], bl
	LONG $0x305cb60f; BYTE $0xfe // movzx    ebx, byte [rax + rsi - 2]
	LONG $0xfe325c88             // mov    byte [rdx + rsi - 2], bl
	LONG $0x305cb60f; BYTE $0xff // movzx    ebx, byte [rax + rsi - 1]
	LONG $0xff325c88             // mov    byte [rdx + rsi - 1], bl
	LONG $0x301cb60f             // movzx    ebx, byte [rax + rsi]
	WORD $0x1c88; BYTE $0x32     // mov    byte [rdx + rsi], bl
	LONG $0x04c68348             // add    rsi, 4
	WORD $0x3949; BYTE $0xf0     // cmp    r8, rsi
	JNE  LBB0_25
	JMP  LBB0_26

LBB0_7:
	LONG $0xef0f4566; BYTE $0xdb // pxor    xmm11, xmm11
	WORD $0x3145; BYTE $0xe4     // xor    r12d, r12d
	LONG $0xef0f4566; BYTE $0xc0 // pxor    xmm8, xmm8
	LONG $0xef0f4566; BYTE $0xc9 // pxor    xmm9, xmm9
	LONG $0xc9ef0f66             // pxor    xmm1, xmm1
	WORD $0x3949; BYTE $0xd4     // cmp    r12, rdx
	JB   LBB0_4

LBB0_8:
	QUAD $0x0000a08d640f4466; BYTE $0x00 // pcmpgtb    xmm9, oword 160[rbp] /* [rip + LCPI0_10] */
	LONG $0xeb0f4166; BYTE $0xc9         // por    xmm1, xmm9
	JMP  LBB0_27

LBB0_12:
	WORD $0x894d; BYTE $0xc2 // mov    r10, r8
	LONG $0xe0e28349         // and    r10, -32
	LONG $0xe0728d4d         // lea    r14, [r10 - 32]
	WORD $0x894c; BYTE $0xf3 // mov    rbx, r14
	LONG $0x05ebc148         // shr    rbx, 5
	LONG $0x015b8d44         // lea    r11d, [rbx + 1]
	LONG $0x03e38341         // and    r11d, 3
	LONG $0x60fe8349         // cmp    r14, 96
	JAE  LBB0_14
	WORD $0xdb31             // xor    ebx, ebx
	WORD $0x854d; BYTE $0xdb // test    r11, r11
	JNE  LBB0_17
	JMP  LBB0_19

LBB0_14:
	LONG $0x26748d4e; BYTE $0x70 // lea    r14, [rsi + r12 + 112]
	LONG $0xff7b8d4d             // lea    r15, [r11 - 1]
	WORD $0x2949; BYTE $0xdf     // sub    r15, rbx
	WORD $0xdb31                 // xor    ebx, ebx

LBB0_15:
	LONG $0x44100f41; WORD $0x901e             // movups    xmm0, oword [r14 + rbx - 112]
	LONG $0x54100f41; WORD $0xa01e             // movups    xmm2, oword [r14 + rbx - 96]
	LONG $0x1f04110f                           // movups    oword [rdi + rbx], xmm0
	LONG $0x1f54110f; BYTE $0x10               // movups    oword [rdi + rbx + 16], xmm2
	LONG $0x44100f41; WORD $0xb01e             // movups    xmm0, oword [r14 + rbx - 80]
	LONG $0x54100f41; WORD $0xc01e             // movups    xmm2, oword [r14 + rbx - 64]
	LONG $0x1f44110f; BYTE $0x20               // movups    oword [rdi + rbx + 32], xmm0
	LONG $0x1f54110f; BYTE $0x30               // movups    oword [rdi + rbx + 48], xmm2
	LONG $0x44100f41; WORD $0xd01e             // movups    xmm0, oword [r14 + rbx - 48]
	LONG $0x54100f41; WORD $0xe01e             // movups    xmm2, oword [r14 + rbx - 32]
	LONG $0x1f44110f; BYTE $0x40               // movups    oword [rdi + rbx + 64], xmm0
	LONG $0x1f54110f; BYTE $0x50               // movups    oword [rdi + rbx + 80], xmm2
	LONG $0x6f0f41f3; WORD $0x1e44; BYTE $0xf0 // movdqu    xmm0, oword [r14 + rbx - 16]
	LONG $0x6f0f41f3; WORD $0x1e14             // movdqu    xmm2, oword [r14 + rbx]
	LONG $0x447f0ff3; WORD $0x601f             // movdqu    oword [rdi + rbx + 96], xmm0
	LONG $0x547f0ff3; WORD $0x701f             // movdqu    oword [rdi + rbx + 112], xmm2
	LONG $0x80eb8348                           // sub    rbx, -128
	LONG $0x04c78349                           // add    r15, 4
	JNE  LBB0_15
	WORD $0x854d; BYTE $0xdb                   // test    r11, r11
	JE   LBB0_19

LBB0_17:
	LONG $0x26748d4e; BYTE $0x10 // lea    r14, [rsi + r12 + 16]
	WORD $0xf749; BYTE $0xdb     // neg    r11

LBB0_18:
	LONG $0x6f0f41f3; WORD $0x1e44; BYTE $0xf0 // movdqu    xmm0, oword [r14 + rbx - 16]
	LONG $0x6f0f41f3; WORD $0x1e14             // movdqu    xmm2, oword [r14 + rbx]
	LONG $0x047f0ff3; BYTE $0x1f               // movdqu    oword [rdi + rbx], xmm0
	LONG $0x547f0ff3; WORD $0x101f             // movdqu    oword [rdi + rbx + 16], xmm2
	LONG $0x20c38348                           // add    rbx, 32
	WORD $0xff49; BYTE $0xc3                   // inc    r11
	JNE  LBB0_18

LBB0_19:
	WORD $0x394d; BYTE $0xd0 // cmp    r8, r10
	JNE  LBB0_20

LBB0_26:
	LONG $0x276f0ff3                           // movdqu    xmm4, oword [rdi]
	LONG $0xec6f0f66                           // movdqa    xmm5, xmm4
	LONG $0xd5710f66; BYTE $0x04               // psrlw    xmm5, 4
	LONG $0x756f0f66; BYTE $0x10               // movdqa    xmm6, oword 16[rbp] /* [rip + LCPI0_1] */
	LONG $0xc46f0f66                           // movdqa    xmm0, xmm4
	LONG $0xc6d80f66                           // psubusb    xmm0, xmm6
	LONG $0x6ddb0f66; BYTE $0x00               // pand    xmm5, oword 0[rbp] /* [rip + LCPI0_0] */
	LONG $0xc8eb0f66                           // por    xmm1, xmm0
	LONG $0x456f0f66; BYTE $0x20               // movdqa    xmm0, oword 32[rbp] /* [rip + LCPI0_2] */
	LONG $0x00380f66; BYTE $0xc5               // pshufb    xmm0, xmm5
	LONG $0xd86f0f66                           // movdqa    xmm3, xmm0
	LONG $0x3a0f4166; WORD $0xd90f; BYTE $0x0f // palignr    xmm3, xmm9, 15
	LONG $0x556f0f66; BYTE $0x30               // movdqa    xmm2, oword 48[rbp] /* [rip + LCPI0_3] */
	LONG $0xdad80f66                           // psubusb    xmm3, xmm2
	LONG $0xd8fc0f66                           // paddb    xmm3, xmm0
	LONG $0xfb6f0f66                           // movdqa    xmm7, xmm3
	LONG $0x3a0f4166; WORD $0xf90f; BYTE $0x0e // palignr    xmm7, xmm9, 14
	LONG $0x7dd80f66; BYTE $0x40               // psubusb    xmm7, oword 64[rbp] /* [rip + LCPI0_4] */
	LONG $0xfbfc0f66                           // paddb    xmm7, xmm3
	LONG $0xf8640f66                           // pcmpgtb    xmm7, xmm0
	LONG $0xd0640f66                           // pcmpgtb    xmm2, xmm0
	LONG $0xd7ef0f66                           // pxor    xmm2, xmm7
	LONG $0xc46f0f66                           // movdqa    xmm0, xmm4
	LONG $0x3a0f4166; WORD $0xc30f; BYTE $0x0f // palignr    xmm0, xmm11, 15
	LONG $0x5d6f0f66; BYTE $0x50               // movdqa    xmm3, oword 80[rbp] /* [rip + LCPI0_5] */
	LONG $0xd8740f66                           // pcmpeqb    xmm3, xmm0
	LONG $0xf0740f66                           // pcmpeqb    xmm6, xmm0
	LONG $0xfc6f0f66                           // movdqa    xmm7, xmm4
	LONG $0x7d640f66; BYTE $0x60               // pcmpgtb    xmm7, oword 96[rbp] /* [rip + LCPI0_6] */
	LONG $0xfbdb0f66                           // pand    xmm7, xmm3
	LONG $0xdc6f0f66                           // movdqa    xmm3, xmm4
	LONG $0x5d640f66; BYTE $0x70               // pcmpgtb    xmm3, oword 112[rbp] /* [rip + LCPI0_7] */
	LONG $0xdedb0f66                           // pand    xmm3, xmm6
	LONG $0xdfeb0f66                           // por    xmm3, xmm7
	LONG $0xd9eb0f66                           // por    xmm3, xmm1
	LONG $0x3a0f4166; WORD $0xe80f; BYTE $0x0f // palignr    xmm5, xmm8, 15
	QUAD $0x00000080b56f0f66                   // movdqa    xmm6, oword 128[rbp] /* [rip + LCPI0_8] */
	LONG $0x00380f66; BYTE $0xf5               // pshufb    xmm6, xmm5
	LONG $0xf0640f66                           // pcmpgtb    xmm6, xmm0
	QUAD $0x000000908d6f0f66                   // movdqa    xmm1, oword 144[rbp] /* [rip + LCPI0_9] */
	LONG $0x00380f66; BYTE $0xcd               // pshufb    xmm1, xmm5
	LONG $0xcc640f66                           // pcmpgtb    xmm1, xmm4
	LONG $0xcedb0f66                           // pand    xmm1, xmm6
	LONG $0xcbeb0f66                           // por    xmm1, xmm3
	LONG $0xcaeb0f66                           // por    xmm1, xmm2

LBB0_27:
	WORD $0xc031                 // xor    eax, eax
	LONG $0x17380f66; BYTE $0xc9 // ptest    xmm1, xmm1
	WORD $0x940f; BYTE $0xd0     // sete    al
	WORD $0x8948; BYTE $0x01     // mov    qword [rcx], rax
	RET
