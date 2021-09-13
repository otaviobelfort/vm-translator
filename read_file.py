import pandas as np
from glob import glob
import os
dir = '../vm-translator/vazio/*.jack'

list_file = sorted(glob(r'../vm-translator/vazio/*.jack'))
#list_file = list_file[0].split("/")[-1]


if (list_file is []): 
    print("diretório vazio")
else:
    print(list_file)

#print(list_file is True)

