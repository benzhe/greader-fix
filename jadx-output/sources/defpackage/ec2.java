package defpackage;

import defpackage.nd2;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public final class ec2<S extends nd2<?>> implements qd2<S> {
    public final qd2<S> a;
    public final long b;
    public final ScheduledExecutorService c;

    public ec2(qd2<S> qd2Var, long j, ScheduledExecutorService scheduledExecutorService) {
        this.a = qd2Var;
        this.b = j;
        this.c = scheduledExecutorService;
    }

    @Override // defpackage.qd2
    public final aw2<S> a() {
        aw2<S> aw2VarA = this.a.a();
        long j = this.b;
        if (j > 0) {
            aw2VarA = vt2.d(aw2VarA, j, TimeUnit.MILLISECONDS, this.c);
        }
        return vt2.n(aw2VarA, Throwable.class, dc2.a, ms0.f);
    }
}
