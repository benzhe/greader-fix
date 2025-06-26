package defpackage;

import android.content.Context;

/* loaded from: classes.dex */
public final class r21 implements cb3<o21> {
    public final mb3<Context> a;
    public final mb3<bm3> b;

    public r21(mb3<Context> mb3Var, mb3<bm3> mb3Var2) {
        this.a = mb3Var;
        this.b = mb3Var2;
    }

    @Override // defpackage.mb3
    public final /* synthetic */ Object get() {
        return new o21(this.a.get(), this.b.get());
    }
}
