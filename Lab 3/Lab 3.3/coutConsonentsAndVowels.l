%{
    # include <stdio.h>
    int v=0, c=0;
%}

%%
[aeiouAEIOU] {v++;}
[A-Za-z] {c++;}
\n {printf("Consonant %d Vowel %d\n",c,v);
v=0;
c=0;}
%%

int main(){
    yylex();
}
int yywrap(){
    return 0;
}

