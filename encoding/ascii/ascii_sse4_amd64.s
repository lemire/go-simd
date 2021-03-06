//+build !noasm !appengine
// AUTO-GENERATED BY C2GOASM -- DO NOT EDIT

TEXT ·__validate_ascii_fast_sse4(SB), $0-24

	MOVQ buf+0(FP), DI
	MOVQ len+8(FP), SI
	MOVQ res+16(FP), DX

	WORD $0xc031     // xor    eax, eax
	LONG $0x10fe8348 // cmp    rsi, 16
	JB   LBB0_1
	LONG $0xf05e8d48 // lea    rbx, [rsi - 16]
	LONG $0xc0ef0f66 // pxor    xmm0, xmm0
	WORD $0xc931     // xor    ecx, ecx

LBB0_3:
	LONG $0x0c6f0ff3; BYTE $0x0f // movdqu    xmm1, oword [rdi + rcx]
	LONG $0xc1eb0f66             // por    xmm0, xmm1
	LONG $0x10c18348             // add    rcx, 16
	WORD $0x3948; BYTE $0xd9     // cmp    rcx, rbx
	JBE  LBB0_3
	LONG $0xd70f4466; BYTE $0xc0 // pmovmskb    r8d, xmm0
	WORD $0x3948; BYTE $0xf1     // cmp    rcx, rsi
	JB   LBB0_5
	JMP  LBB0_18

LBB0_1:
	LONG $0xc0ef0f66             // pxor    xmm0, xmm0
	WORD $0xc931                 // xor    ecx, ecx
	LONG $0xd70f4466; BYTE $0xc0 // pmovmskb    r8d, xmm0
	WORD $0x3948; BYTE $0xf1     // cmp    rcx, rsi
	JAE  LBB0_18

LBB0_5:
	WORD $0x8949; BYTE $0xf2 // mov    r10, rsi
	WORD $0x2949; BYTE $0xca // sub    r10, rcx
	WORD $0xc031             // xor    eax, eax
	LONG $0x08fa8349         // cmp    r10, 8
	JB   LBB0_15
	WORD $0x894d; BYTE $0xd1 // mov    r9, r10
	LONG $0xf8e18349         // and    r9, -8
	LONG $0xf8598d49         // lea    rbx, [r9 - 8]
	WORD $0x8948; BYTE $0xd8 // mov    rax, rbx
	LONG $0x03e8c148         // shr    rax, 3
	LONG $0x01588d44         // lea    r11d, [rax + 1]
	LONG $0x03e38341         // and    r11d, 3
	LONG $0x18fb8348         // cmp    rbx, 24
	JAE  LBB0_8
	LONG $0xc0ef0f66         // pxor    xmm0, xmm0
	WORD $0xc031             // xor    eax, eax
	LONG $0xc9ef0f66         // pxor    xmm1, xmm1
	WORD $0x854d; BYTE $0xdb // test    r11, r11
	JNE  LBB0_11
	JMP  LBB0_13

LBB0_8:
	LONG $0x0f5c8d48; BYTE $0x1c // lea    rbx, [rdi + rcx + 28]
	LONG $0xff738d4d             // lea    r14, [r11 - 1]
	WORD $0x2949; BYTE $0xc6     // sub    r14, rax
	LONG $0xc0ef0f66             // pxor    xmm0, xmm0
	WORD $0xc031                 // xor    eax, eax
	LONG $0xc9ef0f66             // pxor    xmm1, xmm1

LBB0_9:
	LONG $0x21380f66; WORD $0x0354; BYTE $0xe4 // pmovsxbd    xmm2, dword [rbx + rax - 28]
	LONG $0xd0eb0f66                           // por    xmm2, xmm0
	LONG $0x21380f66; WORD $0x0344; BYTE $0xe8 // pmovsxbd    xmm0, dword [rbx + rax - 24]
	LONG $0xc1eb0f66                           // por    xmm0, xmm1
	LONG $0x21380f66; WORD $0x034c; BYTE $0xec // pmovsxbd    xmm1, dword [rbx + rax - 20]
	LONG $0x21380f66; WORD $0x035c; BYTE $0xf0 // pmovsxbd    xmm3, dword [rbx + rax - 16]
	LONG $0x21380f66; WORD $0x0364; BYTE $0xf4 // pmovsxbd    xmm4, dword [rbx + rax - 12]
	LONG $0xe1eb0f66                           // por    xmm4, xmm1
	LONG $0xe2eb0f66                           // por    xmm4, xmm2
	LONG $0x21380f66; WORD $0x0354; BYTE $0xf8 // pmovsxbd    xmm2, dword [rbx + rax - 8]
	LONG $0xd3eb0f66                           // por    xmm2, xmm3
	LONG $0xd0eb0f66                           // por    xmm2, xmm0
	LONG $0x21380f66; WORD $0x0344; BYTE $0xfc // pmovsxbd    xmm0, dword [rbx + rax - 4]
	LONG $0x21380f66; WORD $0x030c             // pmovsxbd    xmm1, dword [rbx + rax]
	LONG $0xc4eb0f66                           // por    xmm0, xmm4
	LONG $0xcaeb0f66                           // por    xmm1, xmm2
	LONG $0x20c08348                           // add    rax, 32
	LONG $0x04c68349                           // add    r14, 4
	JNE  LBB0_9
	WORD $0x854d; BYTE $0xdb                   // test    r11, r11
	JE   LBB0_13

LBB0_11:
	WORD $0x0148; BYTE $0xc8     // add    rax, rcx
	LONG $0x07448d48; BYTE $0x04 // lea    rax, [rdi + rax + 4]
	WORD $0xf749; BYTE $0xdb     // neg    r11

LBB0_12:
	LONG $0x21380f66; WORD $0xfc50 // pmovsxbd    xmm2, dword [rax - 4]
	LONG $0x21380f66; BYTE $0x18   // pmovsxbd    xmm3, dword [rax]
	LONG $0xc2eb0f66               // por    xmm0, xmm2
	LONG $0xcbeb0f66               // por    xmm1, xmm3
	LONG $0x08c08348               // add    rax, 8
	WORD $0xff49; BYTE $0xc3       // inc    r11
	JNE  LBB0_12

LBB0_13:
	LONG $0xc1eb0f66             // por    xmm0, xmm1
	LONG $0xc8700f66; BYTE $0x4e // pshufd    xmm1, xmm0, 78
	LONG $0xc8eb0f66             // por    xmm1, xmm0
	LONG $0xc1700f66; BYTE $0xe5 // pshufd    xmm0, xmm1, 229
	LONG $0xc1eb0f66             // por    xmm0, xmm1
	LONG $0xc07e0f66             // movd    eax, xmm0
	WORD $0x394d; BYTE $0xca     // cmp    r10, r9
	JE   LBB0_17
	WORD $0x014c; BYTE $0xc9     // add    rcx, r9

LBB0_15:
	WORD $0x2948; BYTE $0xce // sub    rsi, rcx
	WORD $0x0148; BYTE $0xcf // add    rdi, rcx

LBB0_16:
	WORD $0xbe0f; BYTE $0x0f // movsx    ecx, byte [rdi]
	WORD $0xc809             // or    eax, ecx
	WORD $0xff48; BYTE $0xc7 // inc    rdi
	WORD $0xff48; BYTE $0xce // dec    rsi
	JNE  LBB0_16

LBB0_17:
	LONG $0x00008025; BYTE $0x00 // and    eax, 128

LBB0_18:
	WORD $0xc931             // xor    ecx, ecx
	WORD $0x0944; BYTE $0xc0 // or    eax, r8d
	WORD $0x940f; BYTE $0xd1 // sete    cl
	WORD $0x8948; BYTE $0x0a // mov    qword [rdx], rcx
	RET
