/*Lex code for removing C-comment from C-program*/
%{
%}
%%
"//"[^\n]* ;
"/*"([^8]|[*]+[^/])*[*]+"/" ;
. fprintf(yyout,"%s",yytext);
%%
int yywrap(){}
int main()
{
extern FILE *yyin,*yyout;
yyin=fopen("input.c","r");
yyout=fopen("output.c","w");
yylex();
return 0;
}
