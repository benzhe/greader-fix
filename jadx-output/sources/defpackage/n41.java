package defpackage;

import android.content.Context;
import android.view.View;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public final class n41 implements cb3<l41> {
    public final mb3<i61> a;
    public final mb3<Context> b;
    public final mb3<uk2> c;
    public final mb3<View> d;
    public final mb3<xw0> e;
    public final mb3<g61> f;
    public final mb3<dk1> g;
    public final mb3<wf1> h;
    public final mb3<q52> i;
    public final mb3<Executor> j;

    public n41(mb3<i61> mb3Var, mb3<Context> mb3Var2, mb3<uk2> mb3Var3, mb3<View> mb3Var4, mb3<xw0> mb3Var5, mb3<g61> mb3Var6, mb3<dk1> mb3Var7, mb3<wf1> mb3Var8, mb3<q52> mb3Var9, mb3<Executor> mb3Var10) {
        this.a = mb3Var;
        this.b = mb3Var2;
        this.c = mb3Var3;
        this.d = mb3Var4;
        this.e = mb3Var5;
        this.f = mb3Var6;
        this.g = mb3Var7;
        this.h = mb3Var8;
        this.i = mb3Var9;
        this.j = mb3Var10;
    }

    public static l41 a(i61 i61Var, Context context, uk2 uk2Var, View view, xw0 xw0Var, g61 g61Var, dk1 dk1Var, wf1 wf1Var, xa3<q52> xa3Var, Executor executor) {
        return new l41(i61Var, context, uk2Var, view, xw0Var, g61Var, dk1Var, wf1Var, xa3Var, executor);
    }

    @Override // defpackage.mb3
    public final /* synthetic */ Object get() {
        return a(this.a.get(), this.b.get(), this.c.get(), this.d.get(), this.e.get(), this.f.get(), this.g.get(), this.h.get(), db3.b(this.i), this.j.get());
    }
}
