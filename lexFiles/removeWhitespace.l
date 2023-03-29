/*exercise 3.5.2*/

delim       [ \t]

%%

{delim}+    {printf(" ");}
.*|\n       {printf(yytext)}

%%

int yywrap(void){
    return 1;
}

