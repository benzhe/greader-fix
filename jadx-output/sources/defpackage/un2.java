package defpackage;

import java.util.Objects;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;

/* loaded from: classes.dex */
public final class un2 implements cb3<zv2> {
    @Override // defpackage.mb3
    public final Object get() {
        zv2 cw2Var;
        ExecutorService executorServiceA = js2.a.a(1, Executors.defaultThreadFactory());
        if (executorServiceA instanceof zv2) {
            cw2Var = (zv2) executorServiceA;
        } else {
            cw2Var = executorServiceA instanceof ScheduledExecutorService ? new cw2((ScheduledExecutorService) executorServiceA) : new dw2(executorServiceA);
        }
        Objects.requireNonNull(cw2Var, "Cannot return null from a non-@Nullable @Provides method");
        return cw2Var;
    }
}
