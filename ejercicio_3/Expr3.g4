grammar Expr3;

prog: expr;

expr: expr ('*'|'/') expr
    | expr ('+'|'-') expr
    | INT
    ;

INT: [0-9]+;
WS: [ \t\r\n]+ -> skip;
