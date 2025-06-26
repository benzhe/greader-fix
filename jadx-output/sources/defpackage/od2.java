package defpackage;

import android.content.Context;

/* loaded from: classes.dex */
public final class od2 implements cb3<gd2> {
    public final mb3<zv2> a;
    public final mb3<Context> b;

    public od2(mb3<zv2> mb3Var, mb3<Context> mb3Var2) {
        this.a = mb3Var;
        this.b = mb3Var2;
    }

    @Override // defpackage.mb3
    public final Object get() {
        return new gd2(this.a.get(), this.b.get());
    }
}
