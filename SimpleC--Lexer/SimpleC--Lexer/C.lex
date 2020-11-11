D [0-9]
L [a-zA-Z_]
H [a-fA-F0-9]
E [Ee][+-]?{D}+
FS (f|F|I|L)
IS (u|U|I|L)*
 
%{
     #include <stdio.h>
     #include "c.tab.h"
    void count();

%}

%%
"#"    {comment(); }
"//"   {comment(); }
"int" { count (); return(INT); }
"bool" { count (); return(BOOL); }
"void" { count (); return(VOID); }
"true" { count (); return(TRUE); }
"false" { count (); return(FALSE); }
"if" { count (); return(IF); }
"else" { count (); return(ELSE); }
"while" { count (); return(WHILE); }
"return" { count (); return(RETURN); }
"cin" { count (); return(CIN); }
"cout" { count (); return(COUT); }

{L}({L}|{D})* { count(); return(check_type()); }
0{D}+{IS}? { count(); return(CONSTANT); }
{D}*{IS}? { count(); return(CONSTANT); }
{D}+{E}{FS}? { count(); return(CONSTANT); }
{D}*"."{D}+({E})?{FS}? { count(); return(CONSTANT); }
{D}+"."{D}*({E})?{FS}? { count(); return(CONSTANT); }

{L}?\"(\\.|[^"\\])*\" { count(); return(STRING_LITERAL); }

"{" {count(); return(OPENING_BRACKET);}
"}" {count(); return(CLOSING_BRACKET);}
"(" {count(); return(OPENING_PARANTHESIS);}
")" {count(); return(CLOSING_PARANTHESIS);}
"[" {count(); return(OPENING_SQUARE_BRACKET);}
"]" {count(); return(CLOSING_SQUARE_BRACKET);}
"," {count(); return(COMMA);}
"=" {count(); return(ASSIGN);}
";" {count(); return(END_OF_INSTRUCTION);}
"+" {count(); return(ADD);}
"-" {count(); return(SUBSTRACT);}
"*" {count(); return(MULTIPLY);}
"/" {count(); return(DIVIDE);}
"!" {count(); return(NOT);}
"==" {count(); return(EQUAL_TO);}
"!=" {count(); return(NOT_EQUAL_TO);}
"&&" {count(); return(AND);}
"||" {count(); return(OR);}
"<" {count(); return(LESS_THAN);}
">" {count(); return(GREATER_THAN);}
"<=" {count(); return(LESS_THAN_OR_EQUAL_TO);}
">=" {count(); return(GREATER_THAN_OR_EQUAL_TO);}
"<<" {count(); return(SHIFT_BITS_LEFT);}
">>" {count(); return(SHIFT_BITS_RIGHT);}



[\t\v\n\f] {count(); }
.           {/*Ignore bad characters*/}

%%


 yywrap() {
        return (1);
    }

    comment() {

        char c, c1;
    }

    int column = 0;

    void count()
    {
        int i;
        for(i=0; yytext[i] != '\0'; i++)
            if(yytext[i] == '\n')
                column = 0;
            else if(yytext[i] == '\t')
                column += 8 -(column % 8);
            else 
                column++;
        ECHO;
    }
    int check_type() {
        return(IDENTIFIER);
    }
