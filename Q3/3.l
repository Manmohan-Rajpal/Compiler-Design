/*Q3-Design a LEX Code to identify and print integer and float value in given Input pattern.*/
%{

%}

DIGIT [0-9]
%%
{DIGIT}* {ECHO;printf(" is a Integer Number\n");}   //ECHO prints the currently enetered number
{DIGIT}*?\.{DIGIT}* {ECHO;printf(" is a Float Number\n");} /* ?\. means that the left hand side may or maynot be present*/
END {return 0;}
%%
int yywrap(){}
int main(int argc, char const *argv[])
{
    printf("Enter the no: ");
    yylex();
    return 0;
}
