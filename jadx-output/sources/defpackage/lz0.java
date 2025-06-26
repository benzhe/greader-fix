package defpackage;

import android.content.Context;

/* loaded from: classes.dex */
public final class lz0 implements cb3<an0> {
    public final mb3<Context> a;

    public lz0(mb3<Context> mb3Var) {
        this.a = mb3Var;
    }

    @Override // defpackage.mb3
    public final Object get() {
        Context context = this.a.get();
        return new ym0(context, new bn0(context).a);
    }
}
