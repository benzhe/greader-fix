package defpackage;

import android.content.Context;

/* loaded from: classes.dex */
public final class uq0 implements cb3<rq0> {
    public final mb3<Context> a;
    public final mb3<vp0> b;

    public uq0(mb3<Context> mb3Var, mb3<vp0> mb3Var2) {
        this.a = mb3Var;
        this.b = mb3Var2;
    }

    @Override // defpackage.mb3
    public final /* synthetic */ Object get() {
        return new rq0(this.a.get(), this.b.get());
    }
}
