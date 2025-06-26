package defpackage;

import android.content.Context;

/* loaded from: classes.dex */
public final class fx1 implements cb3<gx1> {
    public final mb3<Context> a;
    public final mb3<vl2> b;
    public final mb3<hl2> c;
    public final mb3<sk2> d;
    public final mb3<sy1> e;
    public final mb3<pp2> f;
    public final mb3<String> g;

    public fx1(mb3<Context> mb3Var, mb3<vl2> mb3Var2, mb3<hl2> mb3Var3, mb3<sk2> mb3Var4, mb3<sy1> mb3Var5, mb3<pp2> mb3Var6, mb3<String> mb3Var7) {
        this.a = mb3Var;
        this.b = mb3Var2;
        this.c = mb3Var3;
        this.d = mb3Var4;
        this.e = mb3Var5;
        this.f = mb3Var6;
        this.g = mb3Var7;
    }

    public static fx1 a(mb3<Context> mb3Var, mb3<vl2> mb3Var2, mb3<hl2> mb3Var3, mb3<sk2> mb3Var4, mb3<sy1> mb3Var5, mb3<pp2> mb3Var6, mb3<String> mb3Var7) {
        return new fx1(mb3Var, mb3Var2, mb3Var3, mb3Var4, mb3Var5, mb3Var6, mb3Var7);
    }

    @Override // defpackage.mb3
    public final /* synthetic */ Object get() {
        return new gx1(this.a.get(), this.b.get(), this.c.get(), this.d.get(), this.e.get(), this.f.get(), this.g.get());
    }
}
