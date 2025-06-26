package defpackage;

import android.content.Context;

/* loaded from: classes.dex */
public final class bb2 implements cb3<za2> {
    public final mb3<Context> a;
    public final mb3<zv2> b;

    public bb2(mb3<Context> mb3Var, mb3<zv2> mb3Var2) {
        this.a = mb3Var;
        this.b = mb3Var2;
    }

    @Override // defpackage.mb3
    public final /* synthetic */ Object get() {
        return new za2(this.a.get(), this.b.get());
    }
}
