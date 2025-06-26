package defpackage;

import java.util.concurrent.Callable;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public final class cw2 extends dw2 implements zv2, ScheduledExecutorService {
    public final ScheduledExecutorService f;

    public cw2(ScheduledExecutorService scheduledExecutorService) {
        super(scheduledExecutorService);
        this.f = scheduledExecutorService;
    }

    @Override // java.util.concurrent.ScheduledExecutorService
    public final ScheduledFuture schedule(Callable callable, long j, TimeUnit timeUnit) {
        lw2 lw2Var = new lw2(callable);
        return new fw2(lw2Var, this.f.schedule(lw2Var, j, timeUnit));
    }

    @Override // java.util.concurrent.ScheduledExecutorService
    public final /* synthetic */ ScheduledFuture scheduleAtFixedRate(Runnable runnable, long j, long j2, TimeUnit timeUnit) {
        ew2 ew2Var = new ew2(runnable);
        return new fw2(ew2Var, this.f.scheduleAtFixedRate(ew2Var, j, j2, timeUnit));
    }

    @Override // java.util.concurrent.ScheduledExecutorService
    public final /* synthetic */ ScheduledFuture scheduleWithFixedDelay(Runnable runnable, long j, long j2, TimeUnit timeUnit) {
        ew2 ew2Var = new ew2(runnable);
        return new fw2(ew2Var, this.f.scheduleWithFixedDelay(ew2Var, j, j2, timeUnit));
    }

    @Override // java.util.concurrent.ScheduledExecutorService
    public final ScheduledFuture schedule(Runnable runnable, long j, TimeUnit timeUnit) {
        lw2 lw2Var = new lw2(Executors.callable(runnable, null));
        return new fw2(lw2Var, this.f.schedule(lw2Var, j, timeUnit));
    }
}
