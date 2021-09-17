
// Bootstrap code
// SP = 256
@256
D = A

@SP
M = D

// call Sys.init 0

// push retAddrLabel
@C:\Users\otavio$return.0
D = A

@SP
A = M
M = D

@SP
M = M + 1

// push LCL
@LCL
D = M

// SP++;
@SP
A = M
M = D

@SP
M = M + 1

// push ARG
@ARG
D = M

// SP++;
@SP
A = M
M = D

@SP
M = M + 1

// push THIS
@THIS
D = M

// SP++;
@SP
A = M
M = D

@SP
M = M + 1

// push THAT
@THAT
D = M

// SP++;
@SP
A = M
M = D

@SP
M = M + 1

// ARG = SP - 5 - nargs
@5
D = A

@SP
D = M - D

@0
D = D - A

@ARG 
M = D

// LCL = SP
@SP
D = M

@LCL
M = D

// goto functionName
@Sys.init
0;JMP

(C:\Users\otavio$return.0)

// function Main.fibonacci 0     
(Main.fibonacci)
@0   
D = A
(Main.fibonacci$local$loop)

@Main.fibonacci$local$end
D;JLE

@SP
A = M
M = 0
@SP
M = M + 1

@Main.fibonacci$local$loop
D = D - 1
0;JMP
(Main.fibonacci$local$end)

// push argument 0
@0
D = A
@ARG 
A = D + M
D = M
@SP
A = M
M = D
@SP
M = M + 1

// push constant 2
@2
D = A
@SP
A = M
M = D
@SP
M = M + 1

// lt
@SP
M = M-1
A = M
D = M
// D becomes y

@SP
M = M-1
A = M
D = M-D

// D becomes x - y
@TRUE_lt_0
// Jump if x < y
D;JLT

// Jump unconditionally
@FALSE_lt_0
0;JMP

(TRUE_lt_0)
@SP
A = M
M = -1

@END_lt_0
0;JMP

(FALSE_lt_0)
@SP
A = M
M = 0

(END_lt_0)
// SP++;
@SP
M = M + 1

// if-goto label
@SP
M = M - 1
A = M
D = M

@IF_TRUE
D;JNE

// goto IF_FALSE
@IF_FALSE
0;JMP
// label IF_TRUE
(IF_TRUE)

// push argument 0
@0
D = A
@ARG 
A = D + M
D = M
@SP
A = M
M = D
@SP
M = M + 1

// return

// endFrame = LCL
@LCL
D = M

@R13
M = D

// retAddr = *(endFrame - 5)
@5
D = D - A
A = D
D = M

@R14
M = D

// *ARG = pop()
@SP
M = M - 1
A = M
D = M

@ARG
A = M
M = D

// SP = ARG + 1
@ARG
D = M

@SP
M = D + 1

// THAT = *(endFrame - 1)
@R13
A = M - 1
D = M

@THAT
M = D

// THIS = *(endFrame - 2)
@2
D = A

@R13
D = M - D
A = D
D = M

@THIS
M = D

// ARG = *(endFrame - 3)
@3
D = A

@R13
D = M - D
A = D
D = M

@ARG
M = D

// LCL = *(endFrame - 4)
@4
D = A

@R13
D = M - D
A = D
D = M

@LCL
M = D

@R14
A = M
0;JMP

// label IF_FALSE
(IF_FALSE)

// push argument 0
@0
D = A
@ARG 
A = D + M
D = M
@SP
A = M
M = D
@SP
M = M + 1

// push constant 2
@2
D = A
@SP
A = M
M = D
@SP
M = M + 1

// sub
@SP
M = M - 1
A = M
D = M
@SP
M = M - 1
A = M
M = M - D
@SP
M = M + 1

// call Main.fibonacci 1

// push retAddrLabel
@Main.asm$return.1
D = A

@SP
A = M
M = D

@SP
M = M + 1

// push LCL
@LCL
D = M

// SP++;
@SP
A = M
M = D

@SP
M = M + 1

// push ARG
@ARG
D = M

// SP++;
@SP
A = M
M = D

@SP
M = M + 1

// push THIS
@THIS
D = M

// SP++;
@SP
A = M
M = D

@SP
M = M + 1

// push THAT
@THAT
D = M

// SP++;
@SP
A = M
M = D

@SP
M = M + 1

// ARG = SP - 5 - nargs
@5
D = A

@SP
D = M - D

@1
D = D - A

@ARG 
M = D

// LCL = SP
@SP
D = M

@LCL
M = D

// goto functionName
@Main.fibonacci
0;JMP

(Main.asm$return.1)

// push argument 0
@0
D = A
@ARG 
A = D + M
D = M
@SP
A = M
M = D
@SP
M = M + 1

// push constant 1
@1
D = A
@SP
A = M
M = D
@SP
M = M + 1

// sub
@SP
M = M - 1
A = M
D = M
@SP
M = M - 1
A = M
M = M - D
@SP
M = M + 1

// call Main.fibonacci 1

// push retAddrLabel
@Main.asm$return.2
D = A

@SP
A = M
M = D

@SP
M = M + 1

// push LCL
@LCL
D = M

// SP++;
@SP
A = M
M = D

@SP
M = M + 1

// push ARG
@ARG
D = M

// SP++;
@SP
A = M
M = D

@SP
M = M + 1

// push THIS
@THIS
D = M

// SP++;
@SP
A = M
M = D

@SP
M = M + 1

// push THAT
@THAT
D = M

// SP++;
@SP
A = M
M = D

@SP
M = M + 1

// ARG = SP - 5 - nargs
@5
D = A

@SP
D = M - D

@1
D = D - A

@ARG 
M = D

// LCL = SP
@SP
D = M

@LCL
M = D

// goto functionName
@Main.fibonacci
0;JMP

(Main.asm$return.2)

// add
@SP
M=M-1
A=M
D = M
@SP
M = M - 1
A = M
M = D + M
@SP
M = M + 1

// return

// endFrame = LCL
@LCL
D = M

@R13
M = D

// retAddr = *(endFrame - 5)
@5
D = D - A
A = D
D = M

@R14
M = D

// *ARG = pop()
@SP
M = M - 1
A = M
D = M

@ARG
A = M
M = D

// SP = ARG + 1
@ARG
D = M

@SP
M = D + 1

// THAT = *(endFrame - 1)
@R13
A = M - 1
D = M

@THAT
M = D

// THIS = *(endFrame - 2)
@2
D = A

@R13
D = M - D
A = D
D = M

@THIS
M = D

// ARG = *(endFrame - 3)
@3
D = A

@R13
D = M - D
A = D
D = M

@ARG
M = D

// LCL = *(endFrame - 4)
@4
D = A

@R13
D = M - D
A = D
D = M

@LCL
M = D

@R14
A = M
0;JMP
