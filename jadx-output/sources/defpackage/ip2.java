package defpackage;

import java.util.concurrent.ScheduledExecutorService;

/* loaded from: classes.dex */
public final class ip2 implements cb3<zo2> {
    public final mb3<zv2> a;
    public final mb3<ScheduledExecutorService> b;
    public final mb3<cp2> c;

    public ip2(mb3<zv2> mb3Var, mb3<ScheduledExecutorService> mb3Var2, mb3<cp2> mb3Var3) {
        this.a = mb3Var;
        this.b = mb3Var2;
        this.c = mb3Var3;
    }

    @Override // defpackage.mb3
    public final /* synthetic */ Object get() {
        return new zo2(this.a.get(), this.b.get(), this.c.get());
    }
}
