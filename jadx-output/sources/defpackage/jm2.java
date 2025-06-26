package defpackage;

import android.content.Context;

/* loaded from: classes.dex */
public final class jm2 implements cb3<gm2> {
    public final mb3<Context> a;
    public final mb3<xr0> b;

    public jm2(mb3<Context> mb3Var, mb3<xr0> mb3Var2) {
        this.a = mb3Var;
        this.b = mb3Var2;
    }

    @Override // defpackage.mb3
    public final /* synthetic */ Object get() {
        return new gm2(this.a.get(), this.b.get());
    }
}
