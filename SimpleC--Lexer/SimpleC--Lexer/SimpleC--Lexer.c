// SimpleC--Lexer.cpp : This file contains the 'main' function. Program execution begins and ends there.
//

#include <stdio.h>
#include "symbols.h"
#include <cerrno>

extern FILE* yyin;
extern int yylex(void);

char* symbols[] = {
 "END",
 "BOOL",
 "VOID",
"TRUE",
 "FALSE",
 "IF",
 "ELSE",
 "WHILE",
 "RETURN",
 "CIN",
 "COUT",
 "IDENTIFIER",
 "CONSTANT",
 "STING_LITERAL",
 "OPENING_BRACKET",
 "CLOSING_BRACKET",
 "OPENING_PARANTHESIS",
 "CLOSING_PARANTHESIS",
 "OPENING_SQUARE_BRACKET",
 "CLOSING_SQUARE_BRACKET",
 "COMMA",
 "ASSIGN",
 "END_OF_INSTRUCTION",
 "ADD",
 "SUBSTRACT",
 "MULTIPLY",
 "DIVIDE",
 "NOT",
 "AND",
 "OR",
 "EQUAL_TO",
 "NOT_EQUAL_TO",
 "LESS_THAN",
 "GREATER_THAN",
 "LESS_THAN_OR_EQUAL_TO",
 "GREATER_THAN_OR_EQUAL_TO",
 "SHIFT_BITS_LEFT",
 "SHIFT_BITS_RIGHT",
 "STRING_LITERAL",
 "INT",


};

//external file input

int main()
{
    
    int lexUnit = 0;
    yyin = fopen("input.csrc", "rt");

    if (yyin != NULL)
    {
        while ((lexUnit = yylex()) != END)
        {
            printf("-> TOKEN: %s\n", symbols[lexUnit]);
        }

        fclose(yyin);
    }
    else
    {
        printf("fisierul nu poate fi deschis. Eroare: %d", errno);
    }
    
}


// console input

//int main()
//{
//
//    int lexUnit = 0;
//  
//
//    
//    
//        while ((lexUnit = yylex()) != END)
//        {
//            printf("-> TOKEN: %s\n", symbols[lexUnit]);
//        }
//
//      
//    
//   
//}
