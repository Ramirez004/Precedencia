from antlr4 import *
import time

# Se debe cambiar entre las expresiones de ANTLR
from Expr1Lexer import Expr1Lexer
from Expr1Parser import Expr1Parser

entrada = InputStream("10-5-2+3*4-6")

lexer = Expr1Lexer(entrada)
tokens = CommonTokenStream(lexer)
parser = Expr1Parser(tokens)

tree = parser.prog()

print(tree.toStringTree(recog=parser))
