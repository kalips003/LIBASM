## Data Movement

MOV    ; copy data
	mov rax, rbx

MOVZX  ; move + zero extend
	movzx rax, byte [rbx]

MOVSX  ; move + sign extend
	movsx rax, byte [rbx]

LEA    ; load effective address
	lea rax, [rbx + rcx*4]

XCHG   ; swap values
	xchg rax, rbx

PUSH   ; push to stack
	push rax

POP    ; pop from stack
	pop rax

## Arithmetic

ADD    ; addition
	add rax, rbx

SUB    ; subtraction
	sub rax, 5

INC    ; +1
	inc rax

DEC    ; -1
	dec rax

MUL    ; unsigned multiply (RAX * op → RDX:RAX)
	mul rbx

IMUL   ; signed multiply
	imul rax, rbx

DIV    ; unsigned divide (RDX:RAX / op)
	div rbx

IDIV   ; signed divide
	idiv rbx

NEG    ; negate
	neg rax

ADC    ; add with carry
	adc rax, rbx

SBB    ; subtract with borrow
	sbb rax, rbx

## Logic / Bitwise

AND    ; bitwise and
	and rax, rbx

OR     ; bitwise or
	or rax, rbx

XOR    ; bitwise xor
	xor rax, rax

NOT    ; bitwise not
	not rax

TEST   ; and (no store, sets flags)
	test rax, rax

## Shifts / Rotates

SHL    ; shift left
	shl rax, 1

SHR    ; logical shift right
	shr rax, 1

SAL    ; same as SHL
	sal rax, 1

SAR    ; arithmetic shift right
	sar rax, 1

ROL    ; rotate left
	rol rax, 1

ROR    ; rotate right
	ror rax, 1

RCL    ; rotate through carry left
	rcl rax, 1

RCR    ; rotate through carry right
	rcr rax, 1

## Control Flow
JMP JE JNE JG JGE JL JLE JA JAE JB JBE JO JNO JS JNS JC JNC JZ JNZ
## Control Flow

JMP    ; unconditional jump
	jmp label

JE     ; jump if equal (ZF=1)
	je label

JNE    ; not equal
	jne label

JG/JL  ; greater / less (signed)
	jg label

JA/JB  ; above / below (unsigned)
	ja label

CALL   ; call function
	call func

RET    ; return
	ret

## Comparison

CMP    ; subtract for flags only
	cmp rax, rbx

TEST   ; and for flags only
	test rax, rax

## Stack / Frame
PUSH POP ENTER LEAVE

## String Operations
MOVSB MOVSW MOVSD MOVSQ
CMPSB CMPSW CMPSD CMPSQ
SCASB SCASW SCASD SCASQ
LODSB LODSW LODSD LODSQ
STOSB STOSW STOSD STOSQ

## Flags
STC CLC CMC STD CLD STI CLI

## System / CPU
SYSCALL SYSRET INT IRET HLT NOP CPUID
## System / CPU

SYSCALL ; call kernel
syscall

SYSRET  ; return from syscall
sysret

INT     ; software interrupt
int 0x80

IRET    ; return from interrupt
iret

HLT     ; halt CPU
hlt

NOP     ; do nothing
nop

CPUID   ; get CPU info
cpuid

## Conditional Move
CMOVZ CMOVNZ CMOVG CMOVGE CMOVL CMOVLE ...
## Conditional Move

CMOVZ   ; move if zero
cmovz rax, rbx

CMOVNZ  ; move if not zero
cmovnz rax, rbx

## SIMD (examples)
MOVDQA MOVDQU ADDPS MULPS SUBPS DIVPS