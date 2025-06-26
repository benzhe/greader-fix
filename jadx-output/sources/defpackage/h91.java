package defpackage;

import android.content.Context;

/* loaded from: classes.dex */
public final class h91 implements cb3<e91> {
    public final mb3<Context> a;
    public final mb3<sk2> b;
    public final mb3<el0> c;

    public h91(mb3<Context> mb3Var, mb3<sk2> mb3Var2, mb3<el0> mb3Var3) {
        this.a = mb3Var;
        this.b = mb3Var2;
        this.c = mb3Var3;
    }

    @Override // defpackage.mb3
    public final /* synthetic */ Object get() {
        return new e91(this.a.get(), this.b.get(), this.c.get());
    }
}
