package defpackage;

import android.content.Context;
import com.google.android.gms.internal.ads.zzbar;
import java.util.concurrent.ScheduledExecutorService;

/* loaded from: classes.dex */
public final class z72 implements cb3<l72> {
    public final mb3<sy0> a;
    public final mb3<Context> b;
    public final mb3<d23> c;
    public final mb3<zzbar> d;
    public final mb3<yl2<io1>> e;
    public final mb3<ScheduledExecutorService> f;

    public z72(mb3<sy0> mb3Var, mb3<Context> mb3Var2, mb3<d23> mb3Var3, mb3<zzbar> mb3Var4, mb3<yl2<io1>> mb3Var5, mb3<zv2> mb3Var6, mb3<ScheduledExecutorService> mb3Var7) {
        this.a = mb3Var;
        this.b = mb3Var2;
        this.c = mb3Var3;
        this.d = mb3Var4;
        this.e = mb3Var5;
        this.f = mb3Var7;
    }

    @Override // defpackage.mb3
    public final /* synthetic */ Object get() {
        return new l72(this.a.get(), this.b.get(), this.c.get(), this.d.get(), this.e.get(), yn2.a(), this.f.get());
    }
}
