package defpackage;

import android.content.Context;

/* loaded from: classes.dex */
public final class zr1 implements cb3<as1> {
    public final mb3<Context> a;
    public final mb3<vl2> b;
    public final mb3<ns1> c;
    public final mb3<hl2> d;
    public final mb3<sk2> e;
    public final mb3<sy1> f;

    public zr1(mb3<Context> mb3Var, mb3<vl2> mb3Var2, mb3<ns1> mb3Var3, mb3<hl2> mb3Var4, mb3<sk2> mb3Var5, mb3<sy1> mb3Var6) {
        this.a = mb3Var;
        this.b = mb3Var2;
        this.c = mb3Var3;
        this.d = mb3Var4;
        this.e = mb3Var5;
        this.f = mb3Var6;
    }

    public static zr1 a(mb3<Context> mb3Var, mb3<vl2> mb3Var2, mb3<ns1> mb3Var3, mb3<hl2> mb3Var4, mb3<sk2> mb3Var5, mb3<sy1> mb3Var6) {
        return new zr1(mb3Var, mb3Var2, mb3Var3, mb3Var4, mb3Var5, mb3Var6);
    }

    @Override // defpackage.mb3
    public final /* synthetic */ Object get() {
        return new as1(this.a.get(), this.b.get(), this.c.get(), this.d.get(), this.e.get(), this.f.get());
    }
}
