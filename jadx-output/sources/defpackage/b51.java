package defpackage;

import android.content.Context;

/* loaded from: classes.dex */
public final class b51 implements cb3<zp0> {
    public final mb3<Context> a;
    public final mb3<ll2> b;

    public b51(q41 q41Var, mb3<Context> mb3Var, mb3<ll2> mb3Var2) {
        this.a = mb3Var;
        this.b = mb3Var2;
    }

    @Override // defpackage.mb3
    public final Object get() {
        return new zp0(this.a.get(), this.b.get().f);
    }
}
