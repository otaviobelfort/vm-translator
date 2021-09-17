
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

// function Sys.init 0     
(Sys.init)
@0   
D = A
(Sys.init$local$loop)

@Sys.init$local$end
D;JLE

@SP
A = M
M = 0
@SP
M = M + 1

@Sys.init$local$loop
D = D - 1
0;JMP
(Sys.init$local$end)

// push constant 4000
@4000
D = A
@SP
A = M
M = D
@SP
M = M + 1

// pop pointer 0
@SP
M = M - 1
A = M
D = M

@THIS 
M = D

// push constant 5000
@5000
D = A
@SP
A = M
M = D
@SP
M = M + 1

// pop pointer 1
@SP
M = M - 1
A = M
D = M

@THAT 
M = D

// call Sys.main 0

// push retAddrLabel
@Sys.asm$return.1
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
@Sys.main
0;JMP

(Sys.asm$return.1)

// pop temp 1
@1
D = A
@5
D = D + A
@SP
A = M
M = D
@SP
M = M - 1
@SP
A = M
D = M
A = A + 1
A = M
M = D

// label LOOP
(LOOP)

// goto LOOP
@LOOP
0;JMP
// function Sys.main 5     
(Sys.main)
@5   
D = A
(Sys.main$local$loop)

@Sys.main$local$end
D;JLE

@SP
A = M
M = 0
@SP
M = M + 1

@Sys.main$local$loop
D = D - 1
0;JMP
(Sys.main$local$end)

// push constant 4001
@4001
D = A
@SP
A = M
M = D
@SP
M = M + 1

// pop pointer 0
@SP
M = M - 1
A = M
D = M

@THIS 
M = D

// push constant 5001
@5001
D = A
@SP
A = M
M = D
@SP
M = M + 1

// pop pointer 1
@SP
M = M - 1
A = M
D = M

@THAT 
M = D

// push constant 200
@200
D = A
@SP
A = M
M = D
@SP
M = M + 1

// pop local 1
@1
D = A
@LCL
D = D + M
@SP
A = M
M = D
@SP
M = M - 1
@SP
A = M
D = M
A = A + 1
A = M
M = D

// push constant 40
@40
D = A
@SP
A = M
M = D
@SP
M = M + 1

// pop local 2
@2
D = A
@LCL
D = D + M
@SP
A = M
M = D
@SP
M = M - 1
@SP
A = M
D = M
A = A + 1
A = M
M = D

// push constant 6
@6
D = A
@SP
A = M
M = D
@SP
M = M + 1

// pop local 3
@3
D = A
@LCL
D = D + M
@SP
A = M
M = D
@SP
M = M - 1
@SP
A = M
D = M
A = A + 1
A = M
M = D

// push constant 123
@123
D = A
@SP
A = M
M = D
@SP
M = M + 1

// call Sys.add12 1

// push retAddrLabel
@Sys.asm$return.2
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
@Sys.add12
0;JMP

(Sys.asm$return.2)

// pop temp 0
@0
D = A
@5
D = D + A
@SP
A = M
M = D
@SP
M = M - 1
@SP
A = M
D = M
A = A + 1
A = M
M = D

// push local 0
@0
D = A
@LCL 
A = D + M
D = M
@SP
A = M
M = D
@SP
M = M + 1

// push local 1
@1
D = A
@LCL 
A = D + M
D = M
@SP
A = M
M = D
@SP
M = M + 1

// push local 2
@2
D = A
@LCL 
A = D + M
D = M
@SP
A = M
M = D
@SP
M = M + 1

// push local 3
@3
D = A
@LCL 
A = D + M
D = M
@SP
A = M
M = D
@SP
M = M + 1

// push local 4
@4
D = A
@LCL 
A = D + M
D = M
@SP
A = M
M = D
@SP
M = M + 1

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

// function Sys.add12 0     
(Sys.add12)
@0   
D = A
(Sys.add12$local$loop)

@Sys.add12$local$end
D;JLE

@SP
A = M
M = 0
@SP
M = M + 1

@Sys.add12$local$loop
D = D - 1
0;JMP
(Sys.add12$local$end)

// push constant 4002
@4002
D = A
@SP
A = M
M = D
@SP
M = M + 1

// pop pointer 0
@SP
M = M - 1
A = M
D = M

@THIS 
M = D

// push constant 5002
@5002
D = A
@SP
A = M
M = D
@SP
M = M + 1

// pop pointer 1
@SP
M = M - 1
A = M
D = M

@THAT 
M = D

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

// push constant 12
@12
D = A
@SP
A = M
M = D
@SP
M = M + 1

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
