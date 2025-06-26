package defpackage;

import android.content.Context;

/* loaded from: classes.dex */
public final class u12 implements cb3<t12> {
    public final mb3<Context> a;
    public final mb3<oh1> b;

    public u12(mb3<Context> mb3Var, mb3<oh1> mb3Var2) {
        this.a = mb3Var;
        this.b = mb3Var2;
    }

    @Override // defpackage.mb3
    public final /* synthetic */ Object get() {
        return new t12(this.a.get(), this.b.get());
    }
}
