package defpackage;

/* loaded from: classes.dex */
public class bu1 extends Exception {
    public final dm2 e;

    public bu1(dm2 dm2Var) {
        this.e = dm2Var;
    }

    public bu1(dm2 dm2Var, String str) {
        super(str);
        this.e = dm2Var;
    }

    public bu1(dm2 dm2Var, String str, Throwable th) {
        super(str, th);
        this.e = dm2Var;
    }
}
