%{
// C Program
%}

digit [0-9]
alpha [A-Za-z]

%%
{digit}+ {printf("Digit.");}
{alpha}+ {printf("Alphabet.");}
.* {printf("Invalid.");}
%%

int main(){
    yylex();
    return 0;
}
int yywrap(void){
}

