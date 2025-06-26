package defpackage;

import android.content.Context;

/* loaded from: classes.dex */
public final class ws implements Object<vs> {
    public final jj7<Context> a;
    public final jj7<ts> b;

    public ws(jj7<Context> jj7Var, jj7<ts> jj7Var2) {
        this.a = jj7Var;
        this.b = jj7Var2;
    }

    public Object get() {
        return new vs(this.a.get(), this.b.get());
    }
}
