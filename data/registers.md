## General Purpose Registers (64-bit)
RAX → return value, arithmetic (MUL/DIV)
RDX → used with RAX in MUL/DIV
RCX → shift counts, some loops
RSI / RDI → string instructions (source/destination)
RSP → stack (must be correct always)
RBP → stack frame (by convention, not mandatory)

R8
R9
R10
R11
R12
R13
R14
R15

## 32-bit (lower parts)
EAX EBX ECX EDX ESI EDI EBP ESP R8D R9D R10D R11D R12D R13D R14D R15D

## 16-bit
AX → (Accumulator) main arithmetic register (used implicitly by MUL/DIV)
BX → (Base) base address for memory access
CX → (Counter) loop counter (used by LOOP instruction, shifts)
DX → (Data) extension of AX (for MUL/DIV, I/O)

SI → (Source Index) source pointer (string/memory ops)
DI → (Destination Index) destination pointer (string/memory ops)
BP → (Base Pointer) stack frame base
SP → (Stack Pointer) top of stack

R8W R9W R10W R11W R12W R13W R14W R15W

## 8-bit
AL AH BL BH CL CH DL DH
SIL DIL BPL SPL
R8B R9B R10B R11B R12B R13B R14B R15B

## Instruction Pointer
RIP

## Flags Register
RFLAGS (They reflect result of operations Used for conditional logic)

## Segment Registers
CS DS ES FS GS SS

## Control Registers
CR0 CR2 CR3 CR4 CR8

## Debug Registers
DR0 DR1 DR2 DR3 DR6 DR7

## SIMD (128-bit)
XMM0–XMM15

## SIMD (256-bit)
YMM0–YMM15

## SIMD (512-bit, AVX-512)
ZMM0–ZMM31