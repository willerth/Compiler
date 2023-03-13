package Translator;

import java.io.IOException;

public class Parser {
    static int lookahead;

    public Parser() throws IOException{
        lookahead = System.in.read();
    }
    public void expr() throws IOException{
        term();
        rest();
    }

    public void rest()throws IOException{
        while(true){
            if(lookahead == '+'){
                match('+');
                term();
                System.out.print("+");
                continue;
            }
            else if(lookahead == '-'){
                match('-');
                term();
                System.out.print("-");
                continue;
            }
            else break;
        }
    }

    public void term() throws IOException{
        if(lookahead >= '0' && lookahead <= '9'){
            int t = lookahead;
            match(t);
            System.out.print((char) t);
        }
    }

    private void match(int c) throws IOException {
        if(lookahead == c) lookahead = System.in.read();
        else throw new Error("Syntax error");
    }
}
