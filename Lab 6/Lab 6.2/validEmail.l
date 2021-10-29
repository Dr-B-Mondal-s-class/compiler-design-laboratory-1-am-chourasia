%{
%}

name [a-zA-Z0-9]{6,64}
domain [a-zA-Z0-9]{1,253}
topLevelDomain "com"|"net"|"org"
email ({name}\@{domain}\.{topLevelDomain})

%%
{email} {printf("Valid Email Id!\n");}
.* {printf("Invalid Email Id!\n");}
%%

main()
{
	yylex();
}
yywrap(void)
{
	return 0;
}
