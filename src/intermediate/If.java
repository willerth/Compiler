package intermediate;

public class If extends Stmt {
    Expr E; Stmt S; int after;
    public If(Expr E, Stmt S){
        this.E = E;
        this.S = S;
        after = newLabel();
    }

    @Override
    public void gen(){
        Expr n = E.rvalue();
        emit("ifFalse " + n.toString() + " goto " + after);
        S.gen();
        emit(after + ":");
    }
}
