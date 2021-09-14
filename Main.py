import sys
from os import path, listdir
from os.path import splitext
from CodeWriter import CodeWriter
from Parser import Parser

class Main():
    def __init__(self):
        if path.isdir(sys.argv[1]):
            files = listdir(sys.argv[1])
            realPath = path.realpath(sys.argv[1])
            for file in files:
                if file.endswith('.vm'):
                    filename = path.join(realPath, file)
                    file = splitext(filename)[0]
                    print(filename)
                    self.parser = Parser(file + '.vm')
                    self.code = CodeWriter(file + '.asm')

            else:
                print("Caminho inválido! Indique um caminho válido para o diretório.")
