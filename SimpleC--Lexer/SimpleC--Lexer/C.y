%{
#include <stdio.h>

int yyerror(char*s);
extern int yylex(void);
%}
%token END
%token BOOL 
%token VOID 
%token TRUE 
%token FALSE 
%token IF 
%token ELSE 
%token WHILE 
%token RETURN 
%token CIN  
%token COUT 
%token IDENTIFIER 
%token CONSTANT 
%token STING_LITERAL 
%token OPENING_BRACKET 
%token CLOSING_BRACKET 
%token OPENING_PARANTHESIS 
%token CLOSING_PARANTHESIS 
%token OPENING_SQUARE_BRACKET 
%token CLOSING_SQUARE_BRACKET 
%token COMMA 
%token ASSIGN 
%token END_OF_INSTRUCTION 
%token ADD 
%token SUBSTRACT 
%token MULTIPLY 
%token DIVIDE 
%token NOT 
%token AND 
%token OR 
%token EQUAL_TO 
%token NOT_EQUAL_TO 
%token LESS_THAN 
%token GREATER_THAN 
%token LESS_THAN_OR_EQUAL_TO 
%token GREATER_THAN_OR_EQUAL_TO 
%token SHIFT_BITS_LEFT 
%token SHIFT_BITS_RIGHT 
%token STRING_LITERAL  
%token INT 



%start program_unit

%%

program_unit
: program_unit varDecl
| program_unit fnDecl
|
;
varDecl
: type id END_OF_INSTRUCTION
| type id OPENING_SQUARE_BRACKET CONSTANT CLOSING_SQUARE_BRACKET END_OF_INSTRUCTION
;
fnDecl
: type id parameters block
;
type
: INT
| BOOL
| VOID
;
parameters
: OPENING_PARANTHESIS CLOSING_PARANTHESIS
| OPENING_PARANTHESIS formalsList CLOSING_PARANTHESIS
;
formalsList
: formalDecl
| formalsList COMMA formalDecl
;
formalDecl
: type id
;

block
: OPENING_BRACKET declList stmtList CLOSING_BRACKET
;
declList
: declList varDecl
|
;
stmtList
: stmtList stmt
|
;
stmt
: CIN id END_OF_INSTRUCTION
| CIN id OPENING_SQUARE_BRACKET exp CLOSING_SQUARE_BRACKET END_OF_INSTRUCTION 
| COUT exp END_OF_INSTRUCTION
| subscriptExpr ASSIGN exp END_OF_INSTRUCTION 
| id ASSIGN exp END_OF_INSTRUCTION
| IF OPENING_PARANTHESIS exp CLOSING_PARANTHESIS block
| IF OPENING_PARANTHESIS exp CLOSING_PARANTHESIS block ELSE block 
| WHILE OPENING_PARANTHESIS exp CLOSING_PARANTHESIS block
| RETURN exp END_OF_INSTRUCTION
| RETURN END_OF_INSTRUCTION
| fnCallStmt END_OF_INSTRUCTION
;

exp
: exp ADD exp
| exp SUBSTRACT exp
| exp MULTIPLY exp
| exp DIVIDE exp
| NOT exp
| exp AND exp
| exp OR exp
| exp EQUAL_TO exp
| exp NOT_EQUAL_TO exp
| exp LESS_THAN exp 
| exp GREATER_THAN exp
| exp LESS_THAN_OR_EQUAL_TO exp
| exp GREATER_THAN_OR_EQUAL_TO exp
| SUBSTRACT atom
| atom
;

atom
: CONSTANT
| STRING_LITERAL
| TRUE
| FALSE
| OPENING_PARANTHESIS exp CLOSING_PARANTHESIS
| fnCallExpr
| subscriptExpr
| id
;

fnCallExpr
: id OPENING_PARANTHESIS CLOSING_PARANTHESIS
| id OPENING_PARANTHESIS actualList CLOSING_PARANTHESIS
;

fnCallStmt
: id OPENING_PARANTHESIS CLOSING_PARANTHESIS
| id OPENING_PARANTHESIS actualList CLOSING_PARANTHESIS
;

actualList
: exp
| actualList COMMA exp
;

subscriptExpr
: id OPENING_SQUARE_BRACKET exp CLOSING_SQUARE_BRACKET
;

id
: IDENTIFIER
;

%% 
int yyerror( char *s) {
// cout << "Parse error: " << s << endl;
printf("Parse error %s ", s);
exit(-1);
}


