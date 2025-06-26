package defpackage;

import android.content.Context;

/* loaded from: classes.dex */
public final class eo1 implements cb3<co1> {
    public final mb3<Context> a;
    public final mb3<wj1> b;
    public final mb3<tk1> c;
    public final mb3<kj1> d;

    public eo1(mb3<Context> mb3Var, mb3<wj1> mb3Var2, mb3<tk1> mb3Var3, mb3<kj1> mb3Var4) {
        this.a = mb3Var;
        this.b = mb3Var2;
        this.c = mb3Var3;
        this.d = mb3Var4;
    }

    @Override // defpackage.mb3
    public final /* synthetic */ Object get() {
        return new co1(this.a.get(), this.b.get(), this.c.get(), this.d.get());
    }
}
