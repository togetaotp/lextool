%{
#include<stdio.h>
%}
%%
int|float|char|long|double|void {printf("Keywords : %s\n",yytext);}
[0-9]+ {printf("Numbers: %s\n",yytext);}
[a-zA-z]* {printf("identifiers: %s\n",yytext);}

[\+\-\*\/\%\=\(\)\{\}\[\] ]        { printf("special charaters: %s\n",yytext);}                                       

\n {printf("NewLine\n");}

%%
int main(void)
{
yylex();
return 0;
}

