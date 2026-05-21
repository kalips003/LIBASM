========================
DATA MOVEMENT
========================
mov  DEST, SRC        → copy value (register/memory/immediate)
lea  REG, [ADDR]      → compute address (pointer math, no memory read)

========================
ARITHMETIC
========================
add  DEST, SRC        → DEST = DEST + SRC
sub  DEST, SRC        → DEST = DEST - SRC
inc  REG              → REG = REG + 1
dec  REG              → REG = REG - 1
imul REG, SRC         → signed multiply
idiv SRC              → signed divide (uses RAX/RDX implicitly)

========================
BITWISE / LOGIC
========================
xor  DEST, SRC        → DEST = DEST XOR SRC
and  DEST, SRC        → bitwise AND (masking)
or   DEST, SRC        → bitwise OR
not  REG              → bitwise NOT (invert bits)
test A, B             → AND but only sets flags (no result stored)

========================
CONTROL FLOW
========================
jmp  LABEL            → unconditional jump
je   LABEL            → jump if equal (ZF = 1)
jne  LABEL            → jump if not equal
jg   LABEL            → jump if greater (signed)
jl   LABEL            → jump if less (signed)
jge  LABEL            → jump if ≥
jle  LABEL            → jump if ≤
call LABEL            → call function (push return address + jump)
ret                   → return from function

========================
STACK
========================
push REG              → push value onto stack (RSP -= 8, store)
pop  REG              → pop value from stack (load, RSP += 8)

========================
SYSTEM CALLS (Linux x86-64)
========================
syscall               → enter kernel (RAX = syscall number)

RAX → syscall number
RDI → arg1
RSI → arg2
RDX → arg3
R10 → arg4
R8  → arg5
R9  → arg6

========================
FLAGS / COMPARISON
========================
cmp  [size] A, B             → compare (A - B, sets flags only)

byte   = 8-bit
word   = 16-bit (2 bytes)
dword  = 32-bit (4 bytes)
qword  = 64-bit (8 bytes)

========================
MISC
========================
nop                   → no operation (does nothing)