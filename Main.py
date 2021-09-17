import sys
from os import path, listdir
from CodeWriter import CodeWriter
from Parser import Parser
from os.path import splitext, basename, dirname

if path.isdir(sys.argv[1]):
    files = listdir(sys.argv[1])
    realPath = path.realpath(sys.argv[1])
    for file in files:
        if file.endswith('.vm'):
            pathName = path.join(realPath, file)
            file = splitext(pathName)[0]
            baseName = basename(pathName).split(".")
            nomeArquivo = baseName[0]
            dirName = dirname(pathName).split("\\")[-1]
            code = CodeWriter(file + '.asm')
            
            if dirName in ["NestedCall", "FibonacciElement", "StaticsTest"]:
                code.writeInit()
            
            code.set_file_name(nomeArquivo + '.asm')
            print ("Traduzindo: " + nomeArquivo)
            parser = Parser(pathName)
            while parser.has_more_commands():
                parser.advance()
                if parser.command_type() in ["PUSH", "POP"]:
                    code.writePushPop(parser.command_type(), parser.get_tokens())
                elif parser.command_type() == "ARITHMETIC":
                    code.writeArithmetic(parser.get_arg1())
                elif parser.command_type() == "LABEL":
                    code.writeLabel(parser.get_arg1())
                elif parser.command_type() == "GOTO":
                    code.writeGoto(parser.get_arg1())
                elif parser.command_type() == "IF":
                    code.writeIf(parser.get_arg1())
                elif parser.command_type() == "FUNCTION":
                    code.writeFunction(parser.get_arg1(), parser.get_arg2())
                elif parser.command_type() == "CALL":
                    code.writeCall(parser.get_arg1(), parser.get_arg2())
                elif parser.command_type() == "RETURN":
                    code.write_return()
else:
    print("Caminho inválido! Indique um caminho válido para o diretório.")