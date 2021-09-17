
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

// push constant 6
@6
D = A
@SP
A = M
M = D
@SP
M = M + 1

// push constant 8
@8
D = A
@SP
A = M
M = D
@SP
M = M + 1

// call Class1.set 2

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

@2
D = D - A

@ARG 
M = D

// LCL = SP
@SP
D = M

@LCL
M = D

// goto functionName
@Class1.set
0;JMP

(Sys.asm$return.1)

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

// push constant 23
@23
D = A
@SP
A = M
M = D
@SP
M = M + 1

// push constant 15
@15
D = A
@SP
A = M
M = D
@SP
M = M + 1

// call Class2.set 2

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

@2
D = D - A

@ARG 
M = D

// LCL = SP
@SP
D = M

@LCL
M = D

// goto functionName
@Class2.set
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

// call Class1.get 0

// push retAddrLabel
@Sys.asm$return.3
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
@Class1.get
0;JMP

(Sys.asm$return.3)

// call Class2.get 0

// push retAddrLabel
@Sys.asm$return.4
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
@Class2.get
0;JMP

(Sys.asm$return.4)

// label WHILE
(WHILE)

// goto WHILE
@WHILE
0;JMP