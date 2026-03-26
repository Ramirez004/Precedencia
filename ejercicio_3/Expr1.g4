grammar Expr1;

prog: expr;

expr: expr ('+'|'-') term
    | term
    ;

term: term ('*'|'/') factor
    | factor
    ;

factor: INT;

INT: [0-9]+;
WS: [ \t\r\n]+ -> skip;
