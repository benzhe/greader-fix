package defpackage;

import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public final class yt implements Object<xt> {
    public final jj7<Executor> a;
    public final jj7<cu> b;
    public final jj7<zt> c;
    public final jj7<cv> d;

    public yt(jj7<Executor> jj7Var, jj7<cu> jj7Var2, jj7<zt> jj7Var3, jj7<cv> jj7Var4) {
        this.a = jj7Var;
        this.b = jj7Var2;
        this.c = jj7Var3;
        this.d = jj7Var4;
    }

    public Object get() {
        return new xt(this.a.get(), this.b.get(), this.c.get(), this.d.get());
    }
}
