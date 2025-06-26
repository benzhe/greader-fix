package defpackage;

/* loaded from: classes.dex */
public final class bk3 {
    public final nj3 a;
    public final ak3 b;
    public final Object c;
    public final qe3[] d;

    public bk3(nj3 nj3Var, ak3 ak3Var, Object obj, qe3[] qe3VarArr) {
        this.a = nj3Var;
        this.b = ak3Var;
        this.c = obj;
        this.d = qe3VarArr;
    }

    public final boolean a(bk3 bk3Var, int i) {
        return bk3Var != null && el3.d(this.b.b[i], bk3Var.b.b[i]) && el3.d(this.d[i], bk3Var.d[i]);
    }
}
