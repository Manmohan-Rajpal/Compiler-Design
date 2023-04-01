/*Lex program to count totals characters ,white spaces, and words froma text file 'INPUT.txt'Count lines,tabs,spaces and characters*/
%{
    int ch=0,bl=0,ln=0,wr=0;
%}

%%
[\n] {ln++;wr++;}
[\t] {bl++;wr++;}
[" "] {bl++;wr++;}
[^\n\t] {ch++;}
    END {return 0;}
%%
int yywrap(){}
int main(int argc,char *argv[])
{
extern FILE *yyin;
yyin=fopen("input.txt","r");
yylex();
printf("Total charcters: %d\n Blanks: %d\n Words: %d\n Lines:%d\n",ch,bl,wr,ln);
return 0;
}
