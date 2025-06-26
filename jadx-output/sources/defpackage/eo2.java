package defpackage;

import java.util.Objects;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ThreadFactory;

/* loaded from: classes.dex */
public final class eo2 implements cb3<ScheduledExecutorService> {
    public final mb3<ThreadFactory> a;

    public eo2(mb3<ThreadFactory> mb3Var) {
        this.a = mb3Var;
    }

    @Override // defpackage.mb3
    public final Object get() {
        ScheduledExecutorService scheduledExecutorServiceUnconfigurableScheduledExecutorService = Executors.unconfigurableScheduledExecutorService(Executors.newScheduledThreadPool(1, this.a.get()));
        Objects.requireNonNull(scheduledExecutorServiceUnconfigurableScheduledExecutorService, "Cannot return null from a non-@Nullable @Provides method");
        return scheduledExecutorServiceUnconfigurableScheduledExecutorService;
    }
}
