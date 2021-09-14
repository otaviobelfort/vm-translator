import sys
from os import path, listdir
from CodeWriter import CodeWriter
from Parser import Parser
from os.path import splitext

if path.isdir(sys.argv[1]):
    files = listdir(sys.argv[1])
    realPath = path.realpath(sys.argv[1])
    for file in files:
        if file.endswith('.vm'):
            filename = path.join(realPath, file)
            file = splitext(filename)[0]
            parser = Parser(file + '.vm')
            code = CodeWriter(file + '.asm')
            while parser.hasMoreCommands():
                if parser.commandType()[0] == "push":
                    code.writePush(parser.arg1(), parser.arg2())
                if parser.commandType()[0] == "pop":
                    code.writePop(parser.arg1(), parser.arg2())
                elif parser.commandType()[0] == "arithmetic":
                    code.writeArithmetic(parser.commandType()[1])
                parser.advance()
            code.close()
else:
    print("Caminho inválido! Indique um caminho válido para o diretório.")
