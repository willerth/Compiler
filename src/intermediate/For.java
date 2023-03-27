package intermediate;

public class For extends Stmt{
    Expr E1, E2, E3;
    Stmt S;

    public For(Expr e1, Expr e2, Expr e3, Stmt s) {
        E1 = e1;
        E2 = e2;
        E3 = e3;
        S = s;
    }

    @Override
    protected void gen() {
        int before = newLabel();
        int after = newLabel();
        E1.gen();
        emit(before + ": ifFalse " + E2.rvalue().toString() + " goto " + after);
        S.gen();
        E3.gen();
        emit("goto " + before);
        emit(after + ": ");
    }
}
