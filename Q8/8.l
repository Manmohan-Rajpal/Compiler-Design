/* Design a LEX Code to extract all html tags in the given HTML file at run time and store into Text file given at run time */
%{
%}
%%
"<"[^>]*">" fprintf(yyout,"%s",yytext);
[$] return 0;
. ;
%%
int yywrap(){}
int main(int args,char **argv)
{
extern FILE *yyin,*yout;
yyout=fopen("Output.txt","w");
yylex();
}
