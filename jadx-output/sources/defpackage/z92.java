package defpackage;

import android.content.Context;

/* loaded from: classes.dex */
public final class z92 implements cb3<x92> {
    public final mb3<zv2> a;
    public final mb3<Context> b;

    public z92(mb3<zv2> mb3Var, mb3<Context> mb3Var2) {
        this.a = mb3Var;
        this.b = mb3Var2;
    }

    @Override // defpackage.mb3
    public final /* synthetic */ Object get() {
        return new x92(this.a.get(), this.b.get());
    }
}
