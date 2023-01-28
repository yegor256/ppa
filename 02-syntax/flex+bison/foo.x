%option noyywrap

%{
# include "foo.tab.h"
%}

DIGIT [0-9]
LETTER [a-z]
SPACE " "
EOL "\n"

%%
{DIGIT}+ { return INT; }
{LETTER}+ { return WORD; }
{SPACE}+ {};
{EOL}+ {};
%%
