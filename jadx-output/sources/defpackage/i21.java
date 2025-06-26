package defpackage;

import android.content.Context;
import android.view.View;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;

/* loaded from: classes.dex */
public final class i21 implements cb3<g21> {
    public final mb3<Context> a;
    public final mb3<Executor> b;
    public final mb3<ScheduledExecutorService> c;
    public final mb3<hl2> d;
    public final mb3<sk2> e;
    public final mb3<hq2> f;
    public final mb3<rl2> g;
    public final mb3<View> h;
    public final mb3<d23> i;
    public final mb3<b60> j;
    public final mb3<c60> k;

    public i21(mb3<Context> mb3Var, mb3<Executor> mb3Var2, mb3<ScheduledExecutorService> mb3Var3, mb3<hl2> mb3Var4, mb3<sk2> mb3Var5, mb3<hq2> mb3Var6, mb3<rl2> mb3Var7, mb3<View> mb3Var8, mb3<d23> mb3Var9, mb3<b60> mb3Var10, mb3<c60> mb3Var11) {
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
        this.k = mb3Var11;
    }

    public static i21 a(mb3<Context> mb3Var, mb3<Executor> mb3Var2, mb3<ScheduledExecutorService> mb3Var3, mb3<hl2> mb3Var4, mb3<sk2> mb3Var5, mb3<hq2> mb3Var6, mb3<rl2> mb3Var7, mb3<View> mb3Var8, mb3<d23> mb3Var9, mb3<b60> mb3Var10, mb3<c60> mb3Var11) {
        return new i21(mb3Var, mb3Var2, mb3Var3, mb3Var4, mb3Var5, mb3Var6, mb3Var7, mb3Var8, mb3Var9, mb3Var10, mb3Var11);
    }

    @Override // defpackage.mb3
    public final /* synthetic */ Object get() {
        return new g21(this.a.get(), this.b.get(), this.c.get(), this.d.get(), this.e.get(), this.f.get(), this.g.get(), this.h.get(), this.i.get(), this.j.get(), this.k.get());
    }
}
