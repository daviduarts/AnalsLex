%{
#include <stdio.h>
#include "y.tab.h"
%}


DIGIT   [0-9]
LETTER  [a-zA-Z]
ID      {LETTER}({LETTER}|{DIGIT})*
NUM     {DIGIT}+

%%

"if"     { printf("PALAVRA-CHAVE: %s\n", yytext); }
"else"   { printf("PALAVRA-CHAVE: %s\n", yytext); }
"while"  { printf("PALAVRA-CHAVE: %s\n", yytext); }
{ID}     { printf("IDENTIFICADOR: %s\n", yytext); }
{NUM}    { printf("NÚMERO: %s\n", yytext); }
[\+\-\*/] { printf("OPERADOR: %s\n", yytext); }
[ \t\n]+  ; /* Ignora espaços, tabulações e quebras de linha */
.        { printf("CARACTERE INVÁLIDO: %s\n", yytext); }

%%

int main() {
    yylex();
    return 0;
}

int yywrap() {
    return 1;
}
