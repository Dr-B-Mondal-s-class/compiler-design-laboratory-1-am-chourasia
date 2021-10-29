%{
    // C Program
%}
op_plus "+"
%%
[0-9]+ {printf("Digit(s)");}
[A-Za-z]+ {printf("Alphabet(s)");}
[0-9A-za-z]+ {printf("Both");}
.* {printf("Invalid characters");}
%%
int main(){
    yylex();
}
int yywrap(void){
    return 0;
}

