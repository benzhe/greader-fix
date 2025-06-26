package defpackage;

import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;

/* loaded from: classes2.dex */
public final class q87 {
    public final ScheduledExecutorService a;
    public final Executor b;
    public final Runnable c;
    public final pd5 d;
    public long e;
    public boolean f;
    public ScheduledFuture<?> g;

    public final class b implements Runnable {
        public b(a aVar) {
        }

        @Override // java.lang.Runnable
        public void run() {
            q87 q87Var = q87.this;
            if (!q87Var.f) {
                q87Var.g = null;
                return;
            }
            pd5 pd5Var = q87Var.d;
            TimeUnit timeUnit = TimeUnit.NANOSECONDS;
            long jA = pd5Var.a(timeUnit);
            q87 q87Var2 = q87.this;
            long j = q87Var2.e - jA;
            if (j > 0) {
                q87Var2.g = q87Var2.a.schedule(q87Var2.new c(null), j, timeUnit);
                return;
            }
            q87Var2.f = false;
            q87Var2.g = null;
            q87Var2.c.run();
        }
    }

    public final class c implements Runnable {
        public c(a aVar) {
        }

        @Override // java.lang.Runnable
        public void run() {
            q87 q87Var = q87.this;
            q87Var.b.execute(q87Var.new b(null));
        }
    }

    public q87(Runnable runnable, Executor executor, ScheduledExecutorService scheduledExecutorService, pd5 pd5Var) {
        this.c = runnable;
        this.b = executor;
        this.a = scheduledExecutorService;
        this.d = pd5Var;
        pd5Var.c();
    }
}
