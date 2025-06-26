package defpackage;

import defpackage.zb7;
import java.util.Objects;
import java.util.concurrent.Callable;
import java.util.concurrent.Executors;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes2.dex */
public final class di7 extends zb7 {
    public static final zh7 b;
    public static final ScheduledExecutorService c;
    public final AtomicReference<ScheduledExecutorService> a;

    public static final class a extends zb7.b {
        public final ScheduledExecutorService e;
        public final hc7 f = new hc7();
        public volatile boolean g;

        public a(ScheduledExecutorService scheduledExecutorService) {
            this.e = scheduledExecutorService;
        }

        @Override // zb7.b
        public ic7 c(Runnable runnable, long j, TimeUnit timeUnit) {
            zc7 zc7Var = zc7.INSTANCE;
            if (this.g) {
                return zc7Var;
            }
            Objects.requireNonNull(runnable, "run is null");
            bi7 bi7Var = new bi7(runnable, this.f);
            this.f.b(bi7Var);
            try {
                bi7Var.a(j <= 0 ? this.e.submit((Callable) bi7Var) : this.e.schedule((Callable) bi7Var, j, timeUnit));
                return bi7Var;
            } catch (RejectedExecutionException e) {
                k();
                n56.z1(e);
                return zc7Var;
            }
        }

        @Override // defpackage.ic7
        public void k() {
            if (this.g) {
                return;
            }
            this.g = true;
            this.f.k();
        }
    }

    static {
        ScheduledExecutorService scheduledExecutorServiceNewScheduledThreadPool = Executors.newScheduledThreadPool(0);
        c = scheduledExecutorServiceNewScheduledThreadPool;
        scheduledExecutorServiceNewScheduledThreadPool.shutdown();
        b = new zh7("RxSingleScheduler", Math.max(1, Math.min(10, Integer.getInteger("rx2.single-priority", 5).intValue())), true);
    }

    public di7() {
        zh7 zh7Var = b;
        AtomicReference<ScheduledExecutorService> atomicReference = new AtomicReference<>();
        this.a = atomicReference;
        atomicReference.lazySet(ci7.a(zh7Var));
    }

    @Override // defpackage.zb7
    public zb7.b a() {
        return new a(this.a.get());
    }

    @Override // defpackage.zb7
    public ic7 c(Runnable runnable, long j, TimeUnit timeUnit) {
        Objects.requireNonNull(runnable, "run is null");
        ai7 ai7Var = new ai7(runnable);
        try {
            ai7Var.a(j <= 0 ? this.a.get().submit(ai7Var) : this.a.get().schedule(ai7Var, j, timeUnit));
            return ai7Var;
        } catch (RejectedExecutionException e) {
            n56.z1(e);
            return zc7.INSTANCE;
        }
    }
}
