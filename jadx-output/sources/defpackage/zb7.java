package defpackage;

import java.util.Objects;
import java.util.concurrent.TimeUnit;

/* loaded from: classes2.dex */
public abstract class zb7 {

    public static final class a implements ic7, Runnable {
        public final Runnable e;
        public final b f;
        public Thread g;

        public a(Runnable runnable, b bVar) {
            this.e = runnable;
            this.f = bVar;
        }

        @Override // defpackage.ic7
        public void k() {
            if (this.g == Thread.currentThread()) {
                b bVar = this.f;
                if (bVar instanceof yh7) {
                    yh7 yh7Var = (yh7) bVar;
                    if (yh7Var.f) {
                        return;
                    }
                    yh7Var.f = true;
                    yh7Var.e.shutdown();
                    return;
                }
            }
            this.f.k();
        }

        @Override // java.lang.Runnable
        public void run() {
            this.g = Thread.currentThread();
            try {
                this.e.run();
            } finally {
                k();
                this.g = null;
            }
        }
    }

    public static abstract class b implements ic7 {
        public long a(TimeUnit timeUnit) {
            return timeUnit.convert(System.currentTimeMillis(), TimeUnit.MILLISECONDS);
        }

        public ic7 b(Runnable runnable) {
            return c(runnable, 0L, TimeUnit.NANOSECONDS);
        }

        public abstract ic7 c(Runnable runnable, long j, TimeUnit timeUnit);
    }

    static {
        TimeUnit.MINUTES.toNanos(Long.getLong("rx2.scheduler.drift-tolerance", 15L).longValue());
    }

    public abstract b a();

    public ic7 b(Runnable runnable) {
        return c(runnable, 0L, TimeUnit.NANOSECONDS);
    }

    public ic7 c(Runnable runnable, long j, TimeUnit timeUnit) {
        b bVarA = a();
        Objects.requireNonNull(runnable, "run is null");
        a aVar = new a(runnable, bVarA);
        bVarA.c(aVar, j, timeUnit);
        return aVar;
    }
}
