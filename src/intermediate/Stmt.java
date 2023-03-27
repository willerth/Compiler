package intermediate;

public class Stmt extends Node {
    public static int label = 0;

    protected int newLabel(){
        return(label++);
    }
}
