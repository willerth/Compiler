%{
    /*definitions of manifest constants
    LT, LE, EQ, NE, GT, GE,
    IF, THEN, ELSE, WHILE,
    ID, NUMBER, RELOP, STRING */
%}

/* reg definitions */
delim           [ \t\n]
ws              {delim}+
letter          [A-Za-z_]
digit           [0-9]
id              {letter}({letter}|{digit})*
number          {digit}+(.{digit}+)?(E[+-]?{digit}+)?
string          "(\\"|\\\\|[^"\\])*"

%%

{ws}            {/*do nothing, return nothing*/}
if              {return(IF);}
then            {return(THEN);}
else            {return(ELSE);}
while           {/*exercise 3.5.1a*/ return(WHILE);}
{id}            {yylval = (int) installID(); return(ID);}
{number}        {yylval = (int) installNum(); return(NUM);}
{string}        {yylval = (int) installString(); return(STRING);}
"<"             {yylval = LT; return(RELOP);}
"<="            {yylval = LE; return(RELOP);}
"="             {yylval = EQ; return(RELOP);}
"!="            {/*exercise 3.5.1b*/ yylval = NE; return(RELOP);}
">"             {yylval = GT; return(RELOP);}
">="            {yylval = GE; return(RELOP);}

%%

int installID(){
    */function to install the lexeme, whose
    first character is pointed to by yytext,
    and whose length is yyleng, into the
    symbol table and return a pointer
    thereto */
}

int installNum() {
    */ similar to installID, but puts numerical
    constants into a separate table */
}

int installString() {
    /*similar to above */
}