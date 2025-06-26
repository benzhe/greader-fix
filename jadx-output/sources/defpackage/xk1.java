package defpackage;

import com.google.android.gms.ads.internal.util.zzf;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public final class xk1 implements cb3<tk1> {
    public final mb3<zzf> a;
    public final mb3<ll2> b;
    public final mb3<ak1> c;
    public final mb3<wj1> d;
    public final mb3<bl1> e;
    public final mb3<pl1> f;
    public final mb3<Executor> g;
    public final mb3<Executor> h;
    public final mb3<rj1> i;

    public xk1(mb3<zzf> mb3Var, mb3<ll2> mb3Var2, mb3<ak1> mb3Var3, mb3<wj1> mb3Var4, mb3<bl1> mb3Var5, mb3<pl1> mb3Var6, mb3<Executor> mb3Var7, mb3<Executor> mb3Var8, mb3<rj1> mb3Var9) {
        this.a = mb3Var;
        this.b = mb3Var2;
        this.c = mb3Var3;
        this.d = mb3Var4;
        this.e = mb3Var5;
        this.f = mb3Var6;
        this.g = mb3Var7;
        this.h = mb3Var8;
        this.i = mb3Var9;
    }

    public static xk1 a(mb3<zzf> mb3Var, mb3<ll2> mb3Var2, mb3<ak1> mb3Var3, mb3<wj1> mb3Var4, mb3<bl1> mb3Var5, mb3<pl1> mb3Var6, mb3<Executor> mb3Var7, mb3<Executor> mb3Var8, mb3<rj1> mb3Var9) {
        return new xk1(mb3Var, mb3Var2, mb3Var3, mb3Var4, mb3Var5, mb3Var6, mb3Var7, mb3Var8, mb3Var9);
    }

    @Override // defpackage.mb3
    public final /* synthetic */ Object get() {
        return new tk1(this.a.get(), this.b.get(), this.c.get(), this.d.get(), this.e.get(), this.f.get(), this.g.get(), this.h.get(), this.i.get());
    }
}
