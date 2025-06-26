package defpackage;

import android.content.Context;

/* loaded from: classes.dex */
public final class eh2 implements cb3<zg2> {
    public final mb3<sy0> a;
    public final mb3<Context> b;
    public final mb3<String> c;
    public final mb3<xg2> d;
    public final mb3<mg2> e;

    public eh2(mb3<sy0> mb3Var, mb3<Context> mb3Var2, mb3<String> mb3Var3, mb3<xg2> mb3Var4, mb3<mg2> mb3Var5) {
        this.a = mb3Var;
        this.b = mb3Var2;
        this.c = mb3Var3;
        this.d = mb3Var4;
        this.e = mb3Var5;
    }

    @Override // defpackage.mb3
    public final /* synthetic */ Object get() {
        return new zg2(this.a.get(), this.b.get(), this.c.get(), this.d.get(), this.e.get());
    }
}
