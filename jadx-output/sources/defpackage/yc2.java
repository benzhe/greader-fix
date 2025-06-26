package defpackage;

import android.content.Context;

/* loaded from: classes.dex */
public final class yc2 implements cb3<wc2> {
    public final mb3<cq0> a;
    public final mb3<zv2> b;
    public final mb3<Context> c;

    public yc2(mb3<cq0> mb3Var, mb3<zv2> mb3Var2, mb3<Context> mb3Var3) {
        this.a = mb3Var;
        this.b = mb3Var2;
        this.c = mb3Var3;
    }

    @Override // defpackage.mb3
    public final /* synthetic */ Object get() {
        return new wc2(this.a.get(), this.b.get(), this.c.get());
    }
}
