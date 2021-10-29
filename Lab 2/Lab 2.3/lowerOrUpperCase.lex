%{
    // C Program
%}

small [a-z]
cap [A-Z]
both [A-Za-z]

%%
{small}+ {printf("Small letters only");}
{cap}+ {printf("Capital letters only");}
{both}+ {printf("Both cases present");}
.* {printf("Character other than alphabets.");}
%%
	
int main(){
    yylex();
    return 0;
}
int yywrap(void){
    return 0;
}

