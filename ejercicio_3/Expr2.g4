grammar Expr2;

prog: expr;

expr: term ('+'|'-') expr
    | term
    ;

term: factor ('*'|'/') term
    | factor
    ;

factor: INT;

INT: [0-9]+;
WS: [ \t\r\n]+ -> skip;
