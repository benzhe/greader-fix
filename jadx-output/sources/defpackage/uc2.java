package defpackage;

import android.content.Context;
import java.util.concurrent.ScheduledExecutorService;

/* loaded from: classes.dex */
public final class uc2 implements cb3<rc2> {
    public final mb3<zv2> a;
    public final mb3<ScheduledExecutorService> b;
    public final mb3<String> c;
    public final mb3<l52> d;
    public final mb3<Context> e;
    public final mb3<ll2> f;
    public final mb3<i52> g;

    public uc2(mb3<zv2> mb3Var, mb3<ScheduledExecutorService> mb3Var2, mb3<String> mb3Var3, mb3<l52> mb3Var4, mb3<Context> mb3Var5, mb3<ll2> mb3Var6, mb3<i52> mb3Var7) {
        this.a = mb3Var;
        this.b = mb3Var2;
        this.c = mb3Var3;
        this.d = mb3Var4;
        this.e = mb3Var5;
        this.f = mb3Var6;
        this.g = mb3Var7;
    }

    public static uc2 a(mb3<zv2> mb3Var, mb3<ScheduledExecutorService> mb3Var2, mb3<String> mb3Var3, mb3<l52> mb3Var4, mb3<Context> mb3Var5, mb3<ll2> mb3Var6, mb3<i52> mb3Var7) {
        return new uc2(mb3Var, mb3Var2, mb3Var3, mb3Var4, mb3Var5, mb3Var6, mb3Var7);
    }

    @Override // defpackage.mb3
    public final /* synthetic */ Object get() {
        return new rc2(this.a.get(), this.b.get(), this.c.get(), this.d.get(), this.e.get(), this.f.get(), this.g.get());
    }
}
