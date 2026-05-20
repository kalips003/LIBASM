RAX RBX RCX RDX
RSI RDI RBP RSP
R8  R9  R10 R11
R12 R13 R14 R15

RAX (Accumulator) → return value, main arithmetic/return register
RBX (Base register) → callee-saved general-purpose register
RCX (Counter register) → loop counter, 4th function argument
RDX (Data register) → 3rd function argument, general-purpose
RSI (Source Index) → 2nd function argument, source pointer
RDI (Destination Index) → 1st function argument, input pointer (e.g. strlen input)
RBP (Base Pointer) → stack frame base pointer, callee-saved
RSP (Stack Pointer) → points to top of the stack

R8  (Extended argument register 8) → 5th function argument
R9  (Extended argument register 9) → 6th function argument
R10 (Temporary register 10) → caller-saved scratch register
R11 (Temporary register 11) → caller-saved scratch register
R12 (Saved register 12) → callee-saved general-purpose register
R13 (Saved register 13) → callee-saved general-purpose register
R14 (Saved register 14) → callee-saved general-purpose register
R15 (Saved register 15) → callee-saved general-purpose register

-------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------



| Register | Meaning of name       | Original purpose           |
| -------- | --------------------- | -------------------------- |
| AX       | **A**ccumulator **X** | arithmetic / return values |
| BX       | **B**ase **X**        | base addressing            |
| CX       | **C**ounter **X**     | loop counters              |
| DX       | **D**ata **X**        | I/O, arithmetic extension  |


E = Extended (32-bits extension)
R = Register (64-bit extension)

General-purpose registers
| Register | Role                      |
| -------- | ------------------------- |
| `rax`    | return value / syscall id |
| `rdi`    | argument 1                |
| `rsi`    | argument 2                |
| `rdx`    | argument 3                |
| `rcx`    | argument 4                |
| `r8`     | argument 5                |
| `r9`     | argument 6                |

Special registers
| Register | Role             |
| -------- | ---------------- |
| `rsp`    | stack pointer    |
| `rbp`    | stack frame base | (Base Pointer)




🧠 1. How many registers exist in x86_64?

It depends on how you count them, but for a typical modern x86_64 CPU:

📌 General-purpose registers (what you usually see in assembly)
There are 16 main 64-bit integer registers:
➡️ These are the ones used for arithmetic, pointers, function calls, etc.

    rax, rbx, rcx, rdx
    rsi, rdi
    rsp, rbp
    r8, r9, r10, r11, r12, r13, r14, r15


📌 Instruction pointer
    rip → points to the next instruction

📌 Flags register
    rflags → condition flags (zero, carry, overflow, etc.)

📌 SIMD / floating-point registers (much larger set)
Modern CPUs also have:

    16 × XMM registers (128-bit)
    32 × YMM registers (256-bit, AVX)
    32 × ZMM registers (512-bit, AVX-512 on some CPUs)

These are used for:
    floating point math
    vector processing (graphics, AI, multimedia)

📌 Control/debug/system registers
Hidden or privileged ones like:

    CR0–CR4 (control CPU modes)
    CR3 (page table base)
    debug registers (DR0–DR7)