package defpackage;

import android.content.Context;
import com.google.android.gms.ads.internal.zzb;
import com.google.android.gms.internal.ads.zzbar;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;

/* loaded from: classes.dex */
public final class zm1 implements cb3<sm1> {
    public final mb3<Context> a;
    public final mb3<im1> b;
    public final mb3<d23> c;
    public final mb3<zzbar> d;
    public final mb3<zzb> e;
    public final mb3<ep3> f;
    public final mb3<ll2> g;
    public final mb3<fn1> h;
    public final mb3<ScheduledExecutorService> i;

    public zm1(mb3<Context> mb3Var, mb3<im1> mb3Var2, mb3<d23> mb3Var3, mb3<zzbar> mb3Var4, mb3<zzb> mb3Var5, mb3<ep3> mb3Var6, mb3<Executor> mb3Var7, mb3<ll2> mb3Var8, mb3<fn1> mb3Var9, mb3<ScheduledExecutorService> mb3Var10) {
        this.a = mb3Var;
        this.b = mb3Var2;
        this.c = mb3Var3;
        this.d = mb3Var4;
        this.e = mb3Var5;
        this.f = mb3Var6;
        this.g = mb3Var8;
        this.h = mb3Var9;
        this.i = mb3Var10;
    }

    @Override // defpackage.mb3
    public final /* synthetic */ Object get() {
        return new sm1(this.a.get(), this.b.get(), this.c.get(), this.d.get(), this.e.get(), this.f.get(), yn2.a(), this.g.get(), this.h.get(), this.i.get());
    }
}
