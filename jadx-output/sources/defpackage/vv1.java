package defpackage;

import android.content.Context;

/* loaded from: classes.dex */
public final class vv1 implements cb3<tv1> {
    public final mb3<Context> a;
    public final mb3<cq0> b;

    public vv1(mb3<Context> mb3Var, mb3<cq0> mb3Var2) {
        this.a = mb3Var;
        this.b = mb3Var2;
    }

    @Override // defpackage.mb3
    public final /* synthetic */ Object get() {
        return new tv1(this.a.get(), this.b.get());
    }
}
