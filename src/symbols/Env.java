package symbols;
import lexer.Token;

import java.util.*;
public class Env {
    private Hashtable table;
    protected Env prev;

    public Env(Env p){
        table = new Hashtable();
        prev = p;
    }

    public void put(String s, Token t){
        table.put(s, t);
    }
}
