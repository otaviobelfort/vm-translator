class Codewriter:

    def __init__ (self, output_file):

        self.output_f = open(output_file, "w")
        self.module_name = "Bar"
        # count ++
        self.count_1 = 0
        self.count_2 = 0
        self.count_3 = 0
        self.count_4 = 0
    
    def getsegmentpointer(self, segment, index):
        if(segment == "local"): return "LCL"
        elif(segment == "argument") : return "ARG"
        elif(segment in ["this", "that"]) : return segment.upper()
        elif(segment == "temp") : return "R{}".format(5+int(index))
        elif(segment == "pointer") : return "R{}".format(3+int(index))
        elif(segment == "static") : return "{}.{}".format(self.moduleName, index)
        else:
            return 'ERROR'


        
