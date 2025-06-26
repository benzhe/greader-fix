package defpackage;

import android.content.Context;

/* loaded from: classes.dex */
public final class av implements Object<zu> {
    public final jj7<Context> a;
    public final jj7<String> b;
    public final jj7<Integer> c;

    public av(jj7<Context> jj7Var, jj7<String> jj7Var2, jj7<Integer> jj7Var3) {
        this.a = jj7Var;
        this.b = jj7Var2;
        this.c = jj7Var3;
    }

    public Object get() {
        return new zu(this.a.get(), this.b.get(), this.c.get().intValue());
    }
}
