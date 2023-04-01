/*Lex code for counting number of lines, spaces, tabs and rest of characters.*/
%{
int ch=0,bl=0,ln=0,wr=0;
%}
%%
[\n] { ln++;wr++;}
[\t] {bl++; wr++;}
[" "] {bl++;wr++;}
[^\t\n] {ch++;} 
%%
 
int yywrap(){}
int main(){
    printf("Enter the Sentence: ");
    yylex();
    printf("Total charcters: %d\n Blanks: %d\n Words: %d\n Lines:%d\n",ch,bl,wr,ln);     
    return 0;
}
