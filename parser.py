class Parser:

    def __init__(self, filename):
        self.in_stream = open(filename, "r")

    def has_more_commands(self):
        line = self.in_stream.readline()

        if line:
            line = self.clean_line(line)

            if line.startswith("//"):
                return self.has_more_commands()
            self.current_line = line
            return True
        return False

    def advance(self):
        self.current_command = self.current_line
        self.tokenize()

    def command_type(self):
        if len(self.tokens) == 1:
            if self.get_arg1() == "return":
                return "RETURN"
            return "ARITHMETIC"

        elif len(self.tokens) == 2:
            if self.tokens["op_type"] == "label":
                return "LABEL"
            elif self.tokens["op_type"] == "goto":
                return "GOTO"
            elif self.tokens["op_type"] == "if-goto":
                return "IF"

        elif len(self.tokens) == 3:
            if self.tokens["op_type"] == "push":
                return "PUSH"

            elif self.tokens["op_type"] == "pop":
                return "POP"

            elif self.tokens["op_type"] == "function":
                return "FUNCTION"

            elif self.tokens["op_type"] == "call":
                return "CALL"

    def get_arg1(self):
        return self.tokens["arg1"]

    def get_arg2(self):
        return self.tokens["arg2"]

    def tokenize(self):
        self.tokens = {}

        tokens = self.current_command.split()

        if len(tokens) == 1:
            self.tokens["arg1"] = tokens[0]

        elif len(tokens) == 2:
            self.tokens["op_type"] = tokens[0]
            self.tokens["arg1"] = tokens[1]

        elif len(tokens) == 3:
            self.tokens["arg1"] = tokens[1]
            self.tokens["arg2"] = tokens[2]
            self.tokens["op_type"] = tokens[0]

    def get_tokens(self):
        return self.tokens

    def clean_line(self, line):
        if "//" in line:
            line = line[: line.index("//")]
        line = line.strip(" ")
        line = line.rstrip("\n")
        return line
