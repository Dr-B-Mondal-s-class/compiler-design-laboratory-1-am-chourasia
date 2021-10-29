%{
    // C Program
%}

vowel[aeiouAEIOU]
Cons[BCDFGHJ-NP-TV-Zbcdfghj-np-tv-z]

Alpha[a-zA-z]

%%
{vowel}+ {printf("The input is a vowel.");}
{Cons}+ {printf("The input is a consonant.");}
{Alpha}+ {printf("Both characters.");}
.* {printf("Invalid characters.");}

%%

int main(){
    yylex();
    return 0;
}
int yywrap(void){
    return 0;
}

