%{
#include <stdio.h>
%}

%{
int yylex();
void yyerror(char *s);
%}

%token WORD
%token INT

%%
program: line;
line: date | sentence;
date: INT INT INT;
sentence: | sentence WORD;
%%

int main(int argc, char** argv) {
  yyparse();
}

void yyerror(char *s) {
  fprintf(stderr, "error: %s\n", s);
}