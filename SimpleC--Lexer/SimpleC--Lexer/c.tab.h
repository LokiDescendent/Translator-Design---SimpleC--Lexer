/* A Bison parser, made by GNU Bison 3.7.1.  */

/* Bison interface for Yacc-like parsers in C

   Copyright (C) 1984, 1989-1990, 2000-2015, 2018-2020 Free Software Foundation,
   Inc.

   This program is free software: you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation, either version 3 of the License, or
   (at your option) any later version.

   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.

   You should have received a copy of the GNU General Public License
   along with this program.  If not, see <http://www.gnu.org/licenses/>.  */

/* As a special exception, you may create a larger work that contains
   part or all of the Bison parser skeleton and distribute that work
   under terms of your choice, so long as that work isn't itself a
   parser generator using the skeleton or a modified version thereof
   as a parser skeleton.  Alternatively, if you modify or redistribute
   the parser skeleton itself, you may (at your option) remove this
   special exception, which will cause the skeleton and the resulting
   Bison output files to be licensed under the GNU General Public
   License without this special exception.

   This special exception was added by the Free Software Foundation in
   version 2.2 of Bison.  */

/* DO NOT RELY ON FEATURES THAT ARE NOT DOCUMENTED in the manual,
   especially those whose name start with YY_ or yy_.  They are
   private implementation details that can be changed or removed.  */

#ifndef YY_YY_C_TAB_H_INCLUDED
# define YY_YY_C_TAB_H_INCLUDED
/* Debug traces.  */
#ifndef YYDEBUG
# define YYDEBUG 0
#endif
#if YYDEBUG
extern int yydebug;
#endif

/* Token kinds.  */
#ifndef YYTOKENTYPE
# define YYTOKENTYPE
  enum yytokentype
  {
    YYEMPTY = -2,
    YYEOF = 0,                     /* "end of file"  */
    YYerror = 256,                 /* error  */
    YYUNDEF = 257,                 /* "invalid token"  */
    END = 258,                     /* END  */
    BOOL = 259,                    /* BOOL  */
    VOID = 260,                    /* VOID  */
    TRUE = 261,                    /* TRUE  */
    FALSE = 262,                   /* FALSE  */
    IF = 263,                      /* IF  */
    ELSE = 264,                    /* ELSE  */
    WHILE = 265,                   /* WHILE  */
    RETURN = 266,                  /* RETURN  */
    CIN = 267,                     /* CIN  */
    COUT = 268,                    /* COUT  */
    IDENTIFIER = 269,              /* IDENTIFIER  */
    CONSTANT = 270,                /* CONSTANT  */
    STING_LITERAL = 271,           /* STING_LITERAL  */
    OPENING_BRACKET = 272,         /* OPENING_BRACKET  */
    CLOSING_BRACKET = 273,         /* CLOSING_BRACKET  */
    OPENING_PARANTHESIS = 274,     /* OPENING_PARANTHESIS  */
    CLOSING_PARANTHESIS = 275,     /* CLOSING_PARANTHESIS  */
    OPENING_SQUARE_BRACKET = 276,  /* OPENING_SQUARE_BRACKET  */
    CLOSING_SQUARE_BRACKET = 277,  /* CLOSING_SQUARE_BRACKET  */
    COMMA = 278,                   /* COMMA  */
    ASSIGN = 279,                  /* ASSIGN  */
    END_OF_INSTRUCTION = 280,      /* END_OF_INSTRUCTION  */
    ADD = 281,                     /* ADD  */
    SUBSTRACT = 282,               /* SUBSTRACT  */
    MULTIPLY = 283,                /* MULTIPLY  */
    DIVIDE = 284,                  /* DIVIDE  */
    NOT = 285,                     /* NOT  */
    AND = 286,                     /* AND  */
    OR = 287,                      /* OR  */
    EQUAL_TO = 288,                /* EQUAL_TO  */
    NOT_EQUAL_TO = 289,            /* NOT_EQUAL_TO  */
    LESS_THAN = 290,               /* LESS_THAN  */
    GREATER_THAN = 291,            /* GREATER_THAN  */
    LESS_THAN_OR_EQUAL_TO = 292,   /* LESS_THAN_OR_EQUAL_TO  */
    GREATER_THAN_OR_EQUAL_TO = 293, /* GREATER_THAN_OR_EQUAL_TO  */
    SHIFT_BITS_LEFT = 294,         /* SHIFT_BITS_LEFT  */
    SHIFT_BITS_RIGHT = 295,        /* SHIFT_BITS_RIGHT  */
    STRING_LITERAL = 296,          /* STRING_LITERAL  */
    INT = 297                      /* INT  */
  };
  typedef enum yytokentype yytoken_kind_t;
#endif

/* Value type.  */
#if ! defined YYSTYPE && ! defined YYSTYPE_IS_DECLARED
typedef int YYSTYPE;
# define YYSTYPE_IS_TRIVIAL 1
# define YYSTYPE_IS_DECLARED 1
#endif


extern YYSTYPE yylval;

int yyparse (void);

#endif /* !YY_YY_C_TAB_H_INCLUDED  */
