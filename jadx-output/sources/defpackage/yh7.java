package defpackage;

import defpackage.zb7;
import java.util.Objects;
import java.util.concurrent.Callable;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;

/* loaded from: classes2.dex */
public class yh7 extends zb7.b implements ic7 {
    public final ScheduledExecutorService e;
    public volatile boolean f;

    public yh7(ThreadFactory threadFactory) {
        this.e = ci7.a(threadFactory);
    }

    @Override // zb7.b
    public ic7 b(Runnable runnable) {
        return c(runnable, 0L, null);
    }

    @Override // zb7.b
    public ic7 c(Runnable runnable, long j, TimeUnit timeUnit) {
        return this.f ? zc7.INSTANCE : d(runnable, j, timeUnit, null);
    }

    public bi7 d(Runnable runnable, long j, TimeUnit timeUnit, xc7 xc7Var) {
        Objects.requireNonNull(runnable, "run is null");
        bi7 bi7Var = new bi7(runnable, xc7Var);
        if (xc7Var != null && !xc7Var.b(bi7Var)) {
            return bi7Var;
        }
        try {
            bi7Var.a(j <= 0 ? this.e.submit((Callable) bi7Var) : this.e.schedule((Callable) bi7Var, j, timeUnit));
        } catch (RejectedExecutionException e) {
            if (xc7Var != null) {
                xc7Var.a(bi7Var);
            }
            n56.z1(e);
        }
        return bi7Var;
    }

    @Override // defpackage.ic7
    public void k() {
        if (this.f) {
            return;
        }
        this.f = true;
        this.e.shutdownNow();
    }
}
