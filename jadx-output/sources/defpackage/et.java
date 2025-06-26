package defpackage;

import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public final class et implements Object<dt> {
    public final jj7<Executor> a;
    public final jj7<ps> b;
    public final jj7<zt> c;
    public final jj7<cu> d;
    public final jj7<cv> e;

    public et(jj7<Executor> jj7Var, jj7<ps> jj7Var2, jj7<zt> jj7Var3, jj7<cu> jj7Var4, jj7<cv> jj7Var5) {
        this.a = jj7Var;
        this.b = jj7Var2;
        this.c = jj7Var3;
        this.d = jj7Var4;
        this.e = jj7Var5;
    }

    public Object get() {
        return new dt(this.a.get(), this.b.get(), this.c.get(), this.d.get(), this.e.get());
    }
}
