%{
    // C Program
%}
%%
[A-Za-z]+ {printf("Only alphabets");}
.* {printf("Other than alphabets"); }
%%
	
int main(){
    yylex();
    return 0;
}
int yywrap(void){
    return 0;
}

