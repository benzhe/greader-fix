package defpackage;

import android.content.Context;

/* loaded from: classes.dex */
public final class hz1 implements cb3<cz1> {
    public final mb3<Context> a;
    public final mb3<sy1> b;
    public final mb3<ls0> c;
    public final mb3<ns1> d;
    public final mb3<pp2> e;

    public hz1(mb3<Context> mb3Var, mb3<sy1> mb3Var2, mb3<ls0> mb3Var3, mb3<ns1> mb3Var4, mb3<pp2> mb3Var5) {
        this.a = mb3Var;
        this.b = mb3Var2;
        this.c = mb3Var3;
        this.d = mb3Var4;
        this.e = mb3Var5;
    }

    @Override // defpackage.mb3
    public final /* synthetic */ Object get() {
        return new cz1(this.a.get(), this.b.get(), this.c.get(), this.d.get(), this.e.get());
    }
}
