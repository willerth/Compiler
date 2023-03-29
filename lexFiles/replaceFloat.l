/*exercise 3.5.2*/

%%

float       printf("double")
(|\n)*      printf(yytext)

%%

int yywrap(){
    return 1;
}