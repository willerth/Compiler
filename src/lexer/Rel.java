package lexer;

public class Rel extends Token {
    public final String lexeme;

    public Rel(int t, String s){
        super(t);
        lexeme = s;
    }
}
