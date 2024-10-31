; Inicialização para VM
leaw $Main.main, %A
jmp
nop
isqrt:
leaw $0,%A
movw %A,%D
leaw $SP,%A
movw (%A),%A
movw %D,(%A)
leaw $SP,%A
movw (%A),%D
incw %D
movw %D,(%A)
leaw $0,%A
movw %A,%D
leaw $SP,%A
movw (%A),%A
movw %D,(%A)
leaw $SP,%A
movw (%A),%D
incw %D
movw %D,(%A)
;; push constant 0 - 1
leaw $0,%A
movw %A,%D
leaw $SP,%A
movw (%A),%A
movw %D,(%A)
leaw $SP,%A
movw (%A),%D
incw %D
movw %D,(%A)
;; pop temp 1 - 2
leaw $SP,%A
movw (%A),%D
decw %D
movw %D,(%A)
movw (%A),%A
movw (%A),%D
leaw $6,%A
movw %D,(%A)
; Label
isqrt.loop:
;; push temp 1 - 3
leaw $6,%A
movw (%A),%D
leaw $SP,%A
movw (%A),%A
movw %D,(%A)
leaw $SP,%A
movw (%A),%D
incw %D
movw %D,(%A)
;; push constant 1 - 4
leaw $1,%A
movw %A,%D
leaw $SP,%A
movw (%A),%A
movw %D,(%A)
leaw $SP,%A
movw (%A),%D
incw %D
movw %D,(%A)
;; add - 5
leaw $SP,%A
movw (%A),%D
decw %D
movw %D,(%A)
movw (%A),%A
movw (%A),%D
leaw $SP,%A
subw (%A),$1,%A
addw (%A),%D,%D
movw %D,(%A)
;; push temp 1 - 6
leaw $6,%A
movw (%A),%D
leaw $SP,%A
movw (%A),%A
movw %D,(%A)
leaw $SP,%A
movw (%A),%D
incw %D
movw %D,(%A)
;; push constant 1 - 7
leaw $1,%A
movw %A,%D
leaw $SP,%A
movw (%A),%A
movw %D,(%A)
leaw $SP,%A
movw (%A),%D
incw %D
movw %D,(%A)
;; add - 8
leaw $SP,%A
movw (%A),%D
decw %D
movw %D,(%A)
movw (%A),%A
movw (%A),%D
leaw $SP,%A
subw (%A),$1,%A
addw (%A),%D,%D
movw %D,(%A)
; chamada de funcao: mult
leaw $mult-ret-95769553,%A
movw %A,%D
leaw $SP,%A
movw (%A),%A
movw %D,(%A)
leaw $SP,%A
movw (%A),%D
incw %D
movw %D,(%A)
leaw $LCL,%A
movw (%A),%D
leaw $SP,%A
movw (%A),%A
movw %D,(%A)
leaw $SP,%A
movw (%A),%D
incw %D
movw %D,(%A)
leaw $ARG,%A
movw (%A),%D
leaw $SP,%A
movw (%A),%A
movw %D,(%A)
leaw $SP,%A
movw (%A),%D
incw %D
movw %D,(%A)
leaw $THIS,%A
movw (%A),%D
leaw $SP,%A
movw (%A),%A
movw %D,(%A)
leaw $SP,%A
movw (%A),%D
incw %D
movw %D,(%A)
leaw $THAT,%A
movw (%A),%D
leaw $SP,%A
movw (%A),%A
movw %D,(%A)
leaw $SP,%A
movw (%A),%D
incw %D
movw %D,(%A)
leaw $7,%A
movw %A,%D
leaw $SP,%A
movw (%A),%A
subw %A,%D,%D
leaw $ARG,%A
movw %D,(%A)
leaw $SP,%A
movw (%A),%D
leaw $LCL,%A
movw %D,(%A)
leaw $mult,%A
jmp
nop
mult-ret-95769553:
;; push argument 0 - 9
leaw $0,%A
movw %A,%D
leaw $ARG,%A
addw (%A),%D,%A
movw (%A),%D
leaw $SP,%A
movw (%A),%A
movw %D,(%A)
leaw $SP,%A
movw (%A),%D
incw %D
movw %D,(%A)
;; gt - 10
leaw $SP,%A
movw (%A),%D
decw %D
movw %D,(%A)
movw (%A),%A
movw (%A),%D
leaw $SP,%A
subw (%A),$1,%A
subw (%A),%D,%D
leaw $GTisqrt3,%A
jg %D
nop
leaw $SP,%A
subw (%A),$1,%A
movw $0,(%A)
leaw $GT2isqrt3,%A
jmp
nop
GTisqrt3:
leaw $SP,%A
subw (%A),$1,%A
movw $-1,(%A)
GT2isqrt3:
; IF
leaw $SP,%A
movw (%A),%D
decw %D
movw %D,(%A)
movw (%A),%A
movw (%A),%D
leaw $isqrt.fim,%A
jne %D
nop
;; push constant 1 - 11
leaw $1,%A
movw %A,%D
leaw $SP,%A
movw (%A),%A
movw %D,(%A)
leaw $SP,%A
movw (%A),%D
incw %D
movw %D,(%A)
;; push temp 1 - 12
leaw $6,%A
movw (%A),%D
leaw $SP,%A
movw (%A),%A
movw %D,(%A)
leaw $SP,%A
movw (%A),%D
incw %D
movw %D,(%A)
;; add - 13
leaw $SP,%A
movw (%A),%D
decw %D
movw %D,(%A)
movw (%A),%A
movw (%A),%D
leaw $SP,%A
subw (%A),$1,%A
addw (%A),%D,%D
movw %D,(%A)
;; pop temp 1 - 14
leaw $SP,%A
movw (%A),%D
decw %D
movw %D,(%A)
movw (%A),%A
movw (%A),%D
leaw $6,%A
movw %D,(%A)
; Goto Incondicional
leaw $isqrt.loop,%A
jmp
nop
; Label
isqrt.fim:
;; push temp 1 - 15
leaw $6,%A
movw (%A),%D
leaw $SP,%A
movw (%A),%A
movw %D,(%A)
leaw $SP,%A
movw (%A),%D
incw %D
movw %D,(%A)
; Retorno de função 
leaw $LCL,%A
movw (%A),%D
leaw $R13,%A
movw %D,(%A)
leaw $5,%A
subw %D,%A,%A
movw (%A),%D
leaw $R14,%A
movw %D,(%A)
leaw $ARG,%A
movw (%A),%D
leaw $R15,%A
movw %D,(%A)
leaw $SP,%A
movw (%A),%D
decw %D
movw %D,(%A)
movw %D,%A
movw (%A),%D
leaw $R15,%A
movw (%A),%A
movw %D,(%A)
leaw $ARG,%A
movw (%A),%D
leaw $SP,%A
addw %D,$1,(%A)
leaw $R13,%A
subw (%A),$1,%D
movw %D,(%A)
movw %D,%A
movw (%A),%D
leaw $THAT,%A
movw %D,(%A)
leaw $R13,%A
subw (%A),$1,%D
movw %D,(%A)
movw %D,%A
movw (%A),%D
leaw $THIS,%A
movw %D,(%A)
leaw $R13,%A
subw (%A),$1,%D
movw %D,(%A)
movw %D,%A
movw (%A),%D
leaw $ARG,%A
movw %D,(%A)
leaw $R13,%A
subw (%A),$1,%D
movw %D,(%A)
movw %D,%A
movw (%A),%D
leaw $LCL,%A
movw %D,(%A)
leaw $R14,%A
movw (%A),%A
jmp
nop
mult:
leaw $0,%A
movw %A,%D
leaw $SP,%A
movw (%A),%A
movw %D,(%A)
leaw $SP,%A
movw (%A),%D
incw %D
movw %D,(%A)
leaw $0,%A
movw %A,%D
leaw $SP,%A
movw (%A),%A
movw %D,(%A)
leaw $SP,%A
movw (%A),%D
incw %D
movw %D,(%A)
;; push constant 0 - 16
leaw $0,%A
movw %A,%D
leaw $SP,%A
movw (%A),%A
movw %D,(%A)
leaw $SP,%A
movw (%A),%D
incw %D
movw %D,(%A)
;; pop local 0 - 17
leaw $SP,%A
movw (%A),%D
decw %D
movw %D,(%A)
leaw $0,%A
movw %A,%D
leaw $LCL,%A
addw (%A),%D,%D
leaw $R15,%A
movw %D,(%A)
leaw $SP,%A
movw (%A),%A
movw (%A),%D
leaw $R15,%A
movw (%A),%A
movw %D,(%A)
;; push argument 1 - 18
leaw $1,%A
movw %A,%D
leaw $ARG,%A
addw (%A),%D,%A
movw (%A),%D
leaw $SP,%A
movw (%A),%A
movw %D,(%A)
leaw $SP,%A
movw (%A),%D
incw %D
movw %D,(%A)
;; pop local 1 - 19
leaw $SP,%A
movw (%A),%D
decw %D
movw %D,(%A)
leaw $1,%A
movw %A,%D
leaw $LCL,%A
addw (%A),%D,%D
leaw $R15,%A
movw %D,(%A)
leaw $SP,%A
movw (%A),%A
movw (%A),%D
leaw $R15,%A
movw (%A),%A
movw %D,(%A)
; Label
mult.loop:
;; push constant 0 - 20
leaw $0,%A
movw %A,%D
leaw $SP,%A
movw (%A),%A
movw %D,(%A)
leaw $SP,%A
movw (%A),%D
incw %D
movw %D,(%A)
;; push local 1 - 21
leaw $1,%A
movw %A,%D
leaw $LCL,%A
addw (%A),%D,%A
movw (%A),%D
leaw $SP,%A
movw (%A),%A
movw %D,(%A)
leaw $SP,%A
movw (%A),%D
incw %D
movw %D,(%A)
;; eq - 22
leaw $SP,%A
movw (%A),%D
decw %D
movw %D,(%A)
movw (%A),%A
movw (%A),%D
leaw $SP,%A
subw (%A),$1,%A
subw (%A),%D,%D
leaw $EQmult5,%A
je %D
nop
leaw $SP,%A
subw (%A),$1,%A
movw $0,(%A)
leaw $EQ2mult5,%A
jmp
nop
EQmult5:
leaw $SP,%A
subw (%A),$1,%A
movw $-1,(%A)
EQ2mult5:
; IF
leaw $SP,%A
movw (%A),%D
decw %D
movw %D,(%A)
movw (%A),%A
movw (%A),%D
leaw $mult.end,%A
jne %D
nop
;; push local 0 - 23
leaw $0,%A
movw %A,%D
leaw $LCL,%A
addw (%A),%D,%A
movw (%A),%D
leaw $SP,%A
movw (%A),%A
movw %D,(%A)
leaw $SP,%A
movw (%A),%D
incw %D
movw %D,(%A)
;; push argument 0 - 24
leaw $0,%A
movw %A,%D
leaw $ARG,%A
addw (%A),%D,%A
movw (%A),%D
leaw $SP,%A
movw (%A),%A
movw %D,(%A)
leaw $SP,%A
movw (%A),%D
incw %D
movw %D,(%A)
;; add - 25
leaw $SP,%A
movw (%A),%D
decw %D
movw %D,(%A)
movw (%A),%A
movw (%A),%D
leaw $SP,%A
subw (%A),$1,%A
addw (%A),%D,%D
movw %D,(%A)
;; pop local 0 - 26
leaw $SP,%A
movw (%A),%D
decw %D
movw %D,(%A)
leaw $0,%A
movw %A,%D
leaw $LCL,%A
addw (%A),%D,%D
leaw $R15,%A
movw %D,(%A)
leaw $SP,%A
movw (%A),%A
movw (%A),%D
leaw $R15,%A
movw (%A),%A
movw %D,(%A)
;; push local 1 - 27
leaw $1,%A
movw %A,%D
leaw $LCL,%A
addw (%A),%D,%A
movw (%A),%D
leaw $SP,%A
movw (%A),%A
movw %D,(%A)
leaw $SP,%A
movw (%A),%D
incw %D
movw %D,(%A)
;; push constant 1 - 28
leaw $1,%A
movw %A,%D
leaw $SP,%A
movw (%A),%A
movw %D,(%A)
leaw $SP,%A
movw (%A),%D
incw %D
movw %D,(%A)
;; sub - 29
leaw $SP,%A
movw (%A),%D
decw %D
movw %D,(%A)
movw (%A),%A
movw (%A),%D
leaw $SP,%A
subw (%A),$1,%A
subw (%A),%D,%D
movw %D,(%A)
;; pop local 1 - 30
leaw $SP,%A
movw (%A),%D
decw %D
movw %D,(%A)
leaw $1,%A
movw %A,%D
leaw $LCL,%A
addw (%A),%D,%D
leaw $R15,%A
movw %D,(%A)
leaw $SP,%A
movw (%A),%A
movw (%A),%D
leaw $R15,%A
movw (%A),%A
movw %D,(%A)
; Goto Incondicional
leaw $mult.loop,%A
jmp
nop
; Label
mult.end:
;; push local 0 - 31
leaw $0,%A
movw %A,%D
leaw $LCL,%A
addw (%A),%D,%A
movw (%A),%D
leaw $SP,%A
movw (%A),%A
movw %D,(%A)
leaw $SP,%A
movw (%A),%D
incw %D
movw %D,(%A)
; Retorno de função 
leaw $LCL,%A
movw (%A),%D
leaw $R13,%A
movw %D,(%A)
leaw $5,%A
subw %D,%A,%A
movw (%A),%D
leaw $R14,%A
movw %D,(%A)
leaw $ARG,%A
movw (%A),%D
leaw $R15,%A
movw %D,(%A)
leaw $SP,%A
movw (%A),%D
decw %D
movw %D,(%A)
movw %D,%A
movw (%A),%D
leaw $R15,%A
movw (%A),%A
movw %D,(%A)
leaw $ARG,%A
movw (%A),%D
leaw $SP,%A
addw %D,$1,(%A)
leaw $R13,%A
subw (%A),$1,%D
movw %D,(%A)
movw %D,%A
movw (%A),%D
leaw $THAT,%A
movw %D,(%A)
leaw $R13,%A
subw (%A),$1,%D
movw %D,(%A)
movw %D,%A
movw (%A),%D
leaw $THIS,%A
movw %D,(%A)
leaw $R13,%A
subw (%A),$1,%D
movw %D,(%A)
movw %D,%A
movw (%A),%D
leaw $ARG,%A
movw %D,(%A)
leaw $R13,%A
subw (%A),$1,%D
movw %D,(%A)
movw %D,%A
movw (%A),%D
leaw $LCL,%A
movw %D,(%A)
leaw $R14,%A
movw (%A),%A
jmp
nop
Main.main:
;; push temp 0 - 32
leaw $5,%A
movw (%A),%D
leaw $SP,%A
movw (%A),%A
movw %D,(%A)
leaw $SP,%A
movw (%A),%D
incw %D
movw %D,(%A)
; chamada de funcao: isqrt
leaw $isqrt-ret-64469513,%A
movw %A,%D
leaw $SP,%A
movw (%A),%A
movw %D,(%A)
leaw $SP,%A
movw (%A),%D
incw %D
movw %D,(%A)
leaw $LCL,%A
movw (%A),%D
leaw $SP,%A
movw (%A),%A
movw %D,(%A)
leaw $SP,%A
movw (%A),%D
incw %D
movw %D,(%A)
leaw $ARG,%A
movw (%A),%D
leaw $SP,%A
movw (%A),%A
movw %D,(%A)
leaw $SP,%A
movw (%A),%D
incw %D
movw %D,(%A)
leaw $THIS,%A
movw (%A),%D
leaw $SP,%A
movw (%A),%A
movw %D,(%A)
leaw $SP,%A
movw (%A),%D
incw %D
movw %D,(%A)
leaw $THAT,%A
movw (%A),%D
leaw $SP,%A
movw (%A),%A
movw %D,(%A)
leaw $SP,%A
movw (%A),%D
incw %D
movw %D,(%A)
leaw $6,%A
movw %A,%D
leaw $SP,%A
movw (%A),%A
subw %A,%D,%D
leaw $ARG,%A
movw %D,(%A)
leaw $SP,%A
movw (%A),%D
leaw $LCL,%A
movw %D,(%A)
leaw $isqrt,%A
jmp
nop
isqrt-ret-64469513:
;; pop temp 1 - 33
leaw $SP,%A
movw (%A),%D
decw %D
movw %D,(%A)
movw (%A),%A
movw (%A),%D
leaw $6,%A
movw %D,(%A)
; Label
Main.loop:
; Goto Incondicional
leaw $Main.loop,%A
jmp
nop
