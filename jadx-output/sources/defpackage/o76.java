package defpackage;

/* loaded from: classes.dex */
public final class o76 implements Object<r26> {
    public final m76 a;
    public final jj7<o66> b;
    public final jj7<no5> c;

    public o76(m76 m76Var, jj7<o66> jj7Var, jj7<no5> jj7Var2) {
        this.a = m76Var;
        this.b = jj7Var;
        this.c = jj7Var2;
    }

    public Object get() {
        m76 m76Var = this.a;
        return new r26(m76Var.a, this.b.get(), this.c.get());
    }
}
