package defpackage;

import android.content.Context;

/* loaded from: classes.dex */
public final class xa2 implements cb3<ta2> {
    public final mb3<Context> a;
    public final mb3<zv2> b;

    public xa2(mb3<Context> mb3Var, mb3<zv2> mb3Var2) {
        this.a = mb3Var;
        this.b = mb3Var2;
    }

    @Override // defpackage.mb3
    public final Object get() {
        return new ta2(this.a.get(), this.b.get());
    }
}
