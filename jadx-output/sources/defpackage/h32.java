package defpackage;

import android.content.Context;

/* loaded from: classes.dex */
public final class h32 implements cb3<g32> {
    public final mb3<Context> a;
    public final mb3<gp1> b;

    public h32(mb3<Context> mb3Var, mb3<gp1> mb3Var2) {
        this.a = mb3Var;
        this.b = mb3Var2;
    }

    @Override // defpackage.mb3
    public final /* synthetic */ Object get() {
        return new g32(this.a.get(), this.b.get());
    }
}
