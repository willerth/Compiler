/*exercise 3.5.4*/

%%

    [a-zA-Z]*       {handleWord();}
    (.|\n)*         {printf(yytext);}

%%

int yywrap(){
    return 1;
}

void handleWord(char* word){
    if(isVowel(word[0])) printf("%say", word)
    else{
        for(int i = 1; i < yyleng; i++) printf(word[i]);
        printf("%cay", word[0]);
    }
}

int isVowel(char c){
    switch(c){
        case 'a':
        case 'e':
        case 'i':
        case 'o':
        case 'u':
        case 'A':
        case 'E':
        case 'I':
        case 'O':
        case 'U':
            return 1;
        default:
            return 0;
    }
}