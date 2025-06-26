package defpackage;

import java.util.concurrent.ScheduledExecutorService;

/* loaded from: classes.dex */
public final class k41 implements cb3<kc1> {
    public final mb3<ScheduledExecutorService> a;
    public final mb3<b20> b;

    public k41(mb3<ScheduledExecutorService> mb3Var, mb3<b20> mb3Var2) {
        this.a = mb3Var;
        this.b = mb3Var2;
    }

    @Override // defpackage.mb3
    public final Object get() {
        return new kc1(this.a.get(), this.b.get());
    }
}
