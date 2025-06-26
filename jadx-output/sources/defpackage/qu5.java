package defpackage;

import com.google.firebase.Timestamp;

/* loaded from: classes.dex */
public abstract class qu5 {
    public final bu5 a;
    public final wu5 b;

    public qu5(bu5 bu5Var, wu5 wu5Var) {
        this.a = bu5Var;
        this.b = wu5Var;
    }

    public abstract fu5 a(fu5 fu5Var, fu5 fu5Var2, Timestamp timestamp);

    public abstract fu5 b(fu5 fu5Var, tu5 tu5Var);

    public abstract hu5 c(fu5 fu5Var);

    public boolean d(qu5 qu5Var) {
        return this.a.equals(qu5Var.a) && this.b.equals(qu5Var.b);
    }

    public int e() {
        return this.b.hashCode() + (this.a.hashCode() * 31);
    }

    public String f() {
        StringBuilder sbZ = jo.z("key=");
        sbZ.append(this.a);
        sbZ.append(", precondition=");
        sbZ.append(this.b);
        return sbZ.toString();
    }

    public void g(fu5 fu5Var) {
        if (fu5Var != null) {
            bx5.c(fu5Var.a.equals(this.a), "Can only apply a mutation to a document with the same key", new Object[0]);
        }
    }
}
