package defpackage;

import android.content.Context;

/* loaded from: classes.dex */
public final class ht implements Object<zt> {
    public final jj7<Context> a;
    public final jj7<cu> b;
    public final jj7<nt> c;
    public final jj7<dv> d;

    public ht(jj7<Context> jj7Var, jj7<cu> jj7Var2, jj7<nt> jj7Var3, jj7<dv> jj7Var4) {
        this.a = jj7Var;
        this.b = jj7Var2;
        this.c = jj7Var3;
        this.d = jj7Var4;
    }

    public Object get() {
        Context context = this.a.get();
        cu cuVar = this.b.get();
        nt ntVar = this.c.get();
        this.d.get();
        return new lt(context, cuVar, ntVar);
    }
}
