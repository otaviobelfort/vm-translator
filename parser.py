import re

class Parser():

    def __init__(self, input_file):
        self.input_file = input_file
        self.file = open(input_file, 'r')
        text = self.file.read()
        self.currTokenIndex = 0
        self.file.close()
        text = re.sub(r'\/\/.*', '', text)
        self.commands = re.findall(r'[a-z]+\s[a-zA-Z\.]+\s[0-9]+|^[a-z]+', text, re.MULTILINE)
        self.commands = tuple(map(lambda x: x.split(" "), self.commands))

    def hasMoreCommands(self):
        state = self.currTokenIndex <= len(self.commands)-1
        return state

    def advance(self):
        if (self.hasMoreCommands()):
            self.currTokenIndex += 1
    
    def currCommand(self):
        return self.commands[self.currTokenIndex]

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

    def commandType(self):
        if self.commands[self.currTokenIndex][0] in ["add", "sub", "eq", "lt", "gt", "neg", "and", "or", "not"]:
            return ("arithmetic", self.commands[self.currTokenIndex][0])
        elif self.commands[self.currTokenIndex][0] == "push":
            return ("push", self.commands[self.currTokenIndex][0])
        elif self.commands[self.currTokenIndex][0] == "pop":
            return ("pop", self.commands[self.currTokenIndex][0])

    def arg1(self):
        return self.commands[self.currTokenIndex][1]

    def arg2(self):
        return int(self.commands[self.currTokenIndex][2])
    
    def _arg1(self):
        if(self.nextCommand() == "Arithmetic"):
            return self.currTokenIndex()
        elif(self.nextCommand() == "Return"):
            return 0
        else:
            return self.currTokenIndex().split(" ")[1]
    
    def _arg2(self):
        if(self.nextCommand() in ["Push", "Pop", "Function", "Call"]):
            return self.currTokenIndex().split(" ")[2]
        else:
            return 0







