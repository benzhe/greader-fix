package defpackage;

import android.content.Context;
import com.google.android.gms.internal.ads.zzbar;
import java.lang.ref.WeakReference;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;

/* loaded from: classes.dex */
public final class yt1 implements cb3<mt1> {
    public final mb3<Executor> a;
    public final mb3<Context> b;
    public final mb3<WeakReference<Context>> c;
    public final mb3<nq1> d;
    public final mb3<ScheduledExecutorService> e;
    public final mb3<ws1> f;
    public final mb3<zzbar> g;
    public final mb3<ye1> h;

    public yt1(mb3<Executor> mb3Var, mb3<Context> mb3Var2, mb3<WeakReference<Context>> mb3Var3, mb3<Executor> mb3Var4, mb3<nq1> mb3Var5, mb3<ScheduledExecutorService> mb3Var6, mb3<ws1> mb3Var7, mb3<zzbar> mb3Var8, mb3<ye1> mb3Var9) {
        this.a = mb3Var;
        this.b = mb3Var2;
        this.c = mb3Var3;
        this.d = mb3Var5;
        this.e = mb3Var6;
        this.f = mb3Var7;
        this.g = mb3Var8;
        this.h = mb3Var9;
    }

    @Override // defpackage.mb3
    public final /* synthetic */ Object get() {
        return new mt1(this.a.get(), this.b.get(), this.c.get(), yn2.a(), this.d.get(), this.e.get(), this.f.get(), this.g.get(), this.h.get());
    }
}
