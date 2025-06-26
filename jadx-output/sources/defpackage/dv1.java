package defpackage;

import java.util.concurrent.ScheduledExecutorService;

/* loaded from: classes.dex */
public final class dv1 implements cb3<zu1> {
    public final mb3<ll2> a;
    public final mb3<au1> b;
    public final mb3<zv2> c;
    public final mb3<ScheduledExecutorService> d;
    public final mb3<dy1> e;

    public dv1(mb3<ll2> mb3Var, mb3<au1> mb3Var2, mb3<zv2> mb3Var3, mb3<ScheduledExecutorService> mb3Var4, mb3<dy1> mb3Var5) {
        this.a = mb3Var;
        this.b = mb3Var2;
        this.c = mb3Var3;
        this.d = mb3Var4;
        this.e = mb3Var5;
    }

    public static dv1 a(mb3<ll2> mb3Var, mb3<au1> mb3Var2, mb3<zv2> mb3Var3, mb3<ScheduledExecutorService> mb3Var4, mb3<dy1> mb3Var5) {
        return new dv1(mb3Var, mb3Var2, mb3Var3, mb3Var4, mb3Var5);
    }

    @Override // defpackage.mb3
    public final /* synthetic */ Object get() {
        return new zu1(this.a.get(), this.b.get(), this.c.get(), this.d.get(), this.e.get());
    }
}
