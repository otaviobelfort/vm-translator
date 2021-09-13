#!usr/bin/env python3
class Parser():

    def __init__(self, input_file):
        self.input_file = input_file
        self.file = open(input_file, "r")
        self.temp = self.file.readlines()
        self.tokens = []
        self.currTokenIndex = 0
        self.formatLines()

    def hasMoreCommands(self):
        state = self.currTokenIndex <= len(self.tokens)-1
        return state

    def advance(self):
        if (self.hasMoreCommands()):
            self.currTokenIndex += 1
    
    def currCommand(self):
        return self.tokens[self.currTokenIndex]

    def nextCommand(self):
        command = self.currTokenIndex()
        split = command.split(" ")
        cmd = split[0]
        if (command in ['add','sub','neg','eq','gt','lt','and','or','not']):
            return "Arithmetic"
        else:
            if   (cmd == "pop"): 
                return "Pop"
            elif (cmd == "push"): 
                return "Push"
            elif (cmd == "call"): 
                return "Call"
            elif (cmd == "function"): 
                return "Function"
            elif (cmd == "return"): 
                return "Return"
            elif (cmd == "label"): 
                return "Label"
            elif (cmd == "goto"): 
                return "Goto"
            elif (cmd == "if-goto"): 
                return "If"
            else : 
                return None
    
    def arg1(self):
        if(self.nextCommand() == "Arithmetic"):
            return self.currTokenIndex()
        elif(self.nextCommand() == "Return"):
            return 0
        else:
            return self.currTokenIndex().split(" ")[1]
    
    def arg2(self):
        if(self.nextCommand() in ["Push", "Pop", "Function", "Call"]):
            return self.currTokenIndex().split(" ")[2]
        else:
            return 0







