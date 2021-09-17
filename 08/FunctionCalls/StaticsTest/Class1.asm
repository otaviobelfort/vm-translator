
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

// function Class1.set 0     
(Class1.set)
@0   
D = A
(Class1.set$local$loop)

@Class1.set$local$end
D;JLE

@SP
A = M
M = 0
@SP
M = M + 1

@Class1.set$local$loop
D = D - 1
0;JMP
(Class1.set$local$end)

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

// pop static 0
@SP
M = M - 1
A = M
D = M

@Class1.asm.0
M = D

// push argument 1
@1
D = A
@ARG 
A = D + M
D = M
@SP
A = M
M = D
@SP
M = M + 1

// pop static 1
@SP
M = M - 1
A = M
D = M

@Class1.asm.1
M = D

// push constant 0
@0
D = A
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

// function Class1.get 0     
(Class1.get)
@0   
D = A
(Class1.get$local$loop)

@Class1.get$local$end
D;JLE

@SP
A = M
M = 0
@SP
M = M + 1

@Class1.get$local$loop
D = D - 1
0;JMP
(Class1.get$local$end)

// push static 0
@Class1.asm.0
D = M
@SP
A = M
M = D
@SP
M = M + 1

// push static 1
@Class1.asm.1
D = M
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
