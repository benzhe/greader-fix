package defpackage;

import android.content.Context;

/* loaded from: classes.dex */
public final class s42 implements cb3<m42> {
    public final mb3<Context> a;
    public final mb3<g51> b;
    public final mb3<zo2> c;
    public final mb3<zv2> d;
    public final mb3<t50> e;

    public s42(mb3<Context> mb3Var, mb3<g51> mb3Var2, mb3<zo2> mb3Var3, mb3<zv2> mb3Var4, mb3<t50> mb3Var5) {
        this.a = mb3Var;
        this.b = mb3Var2;
        this.c = mb3Var3;
        this.d = mb3Var4;
        this.e = mb3Var5;
    }

    @Override // defpackage.mb3
    public final /* synthetic */ Object get() {
        return new m42(this.a.get(), this.b.get(), this.c.get(), this.d.get(), this.e.get());
    }
}
