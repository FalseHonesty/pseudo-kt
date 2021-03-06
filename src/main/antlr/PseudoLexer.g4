lexer grammar PseudoLexer;
NEWLINE            : '\r\n' | '\n' ;
// Comments
COMMENT            : '//' ~[\r\n]* -> skip ;
// Whitespace
WS                 : [\t ]+ -> skip ;
// Keywords
GLOBAL             : 'global' ;
ARRAY              : 'array' ;
NEW                : 'new' ;
SUPER              : 'super' ;
IF                 : 'if' ;
THEN               : 'then' ;
ELSEIF             : 'elseif' ;
ELSE               : 'else' ;
ENDIF              : 'endif' ;
FUNCTION           : 'function' ;
ENDFUNCTION        : 'endfunction' ;
RETURN             : 'return' ;
SWITCH             : 'switch' ;
CASE               : 'case' ;
DEFAULT            : 'default' ;
ENDSWITCH          : 'endswitch' ;
WHILE              : 'while' ;
ENDWHILE           : 'endwhile' ;
DO                 : 'do' ;
UNTIL              : 'until' ;
FOR                : 'for' ;
TO                 : 'to' ;
STEP               : 'step' ;
NEXT               : 'next' ;
BREAK              : 'break' ;
CONTINUE           : 'continue' ;
CLASS              : 'class' ;
PUBLIC             : 'public' ;
PRIVATE            : 'private' ;
ENDCLASS           : 'endclass' ;
INHERITS           : 'inherits' ;

fragment
TRUE               : 'true' ;
fragment
FALSE              : 'false' ;
// Literals
INTLIT             : [0-9]+ ;
DECLIT             : [0-9]* DOT [0-9]+ ;
BOOLIT             : TRUE | FALSE ;
STRLIT             : '"' (~'"'|'\\"')* '"' ;
NULL               : 'null' ;
// Operators
PLUS               : '+' ;
MINUS              : '-' ;
ASTERISK           : '*' ;
DIVISION           : '/' ;
ASSIGN             : '=' ;
LPAREN             : '(' ;
RPAREN             : ')' ;
EXP                : '^' ;
MOD                : 'MOD' ;
DIV                : 'DIV' ;
LSB                : '[' ;
RSB                : ']' ;
LCB                : '{' ;
RCB                : '}' ;
// Compound Assignment Operators
fragment PLUSASSIGN  : '+=' ;
fragment MINASSIGN   : '-=' ;
fragment MULASSIGN   : '*=' ;
fragment DIVIDEASSIGN: '/=' ;
fragment EXPASSIGN   : '^=' ;
fragment MODASSIGN   : 'MOD=' ;
fragment DIVASSIGN   : 'DIV=' ;
COMPOUNDASSIGN       : PLUSASSIGN | MINASSIGN | MULASSIGN | DIVIDEASSIGN | EXPASSIGN | MODASSIGN | DIVASSIGN ;
// Logical
EQ                 : '==' ;
NE                 : '!=' ;
LT                 : '<' ;
LE                 : '<=' ;
GT                 : '>' ;
GE                 : '>=' ;
AND                : 'AND' ;
OR                 : 'OR' ;
NOT                : 'NOT' ;
// Identifiers
ID                 : [A-Za-z_][A-Za-z0-9_]* ;
// Other
COMMA              : ',' ;
DOT                : '.' ;
COLON              : ':' ;