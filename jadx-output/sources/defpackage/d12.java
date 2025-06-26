package defpackage;

import java.util.concurrent.ScheduledExecutorService;

/* loaded from: classes.dex */
public final class d12 implements cb3<z02> {
    public final mb3<g51> a;
    public final mb3<d02> b;
    public final mb3<ba1> c;
    public final mb3<ScheduledExecutorService> d;

    public d12(mb3<g51> mb3Var, mb3<d02> mb3Var2, mb3<ba1> mb3Var3, mb3<ScheduledExecutorService> mb3Var4, mb3<zv2> mb3Var5) {
        this.a = mb3Var;
        this.b = mb3Var2;
        this.c = mb3Var3;
        this.d = mb3Var4;
    }

    @Override // defpackage.mb3
    public final /* synthetic */ Object get() {
        return new z02(this.a.get(), this.b.get(), this.c.get(), this.d.get(), yn2.a());
    }
}
