package defpackage;

import android.content.Context;

/* loaded from: classes.dex */
public final class uu1 implements cb3<kv1> {
    public final mb3<Context> a;

    public uu1(mb3<Context> mb3Var) {
        this.a = mb3Var;
    }

    @Override // defpackage.mb3
    public final Object get() {
        return new kv1(this.a.get());
    }
}
