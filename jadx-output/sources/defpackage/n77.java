package defpackage;

import defpackage.a67;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;

/* loaded from: classes2.dex */
public class n77 {
    public static final long l = TimeUnit.SECONDS.toNanos(10);
    public final ScheduledExecutorService a;
    public final pd5 b;
    public final d c;
    public final boolean d;
    public e e;
    public ScheduledFuture<?> f;
    public ScheduledFuture<?> g;
    public final Runnable h;
    public final Runnable i;
    public final long j;
    public final long k;

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            n77 n77Var;
            boolean z;
            synchronized (n77.this) {
                n77Var = n77.this;
                e eVar = n77Var.e;
                e eVar2 = e.DISCONNECTED;
                if (eVar != eVar2) {
                    n77Var.e = eVar2;
                    z = true;
                } else {
                    z = false;
                }
            }
            if (z) {
                n77Var.c.a();
            }
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            boolean z;
            synchronized (n77.this) {
                n77 n77Var = n77.this;
                n77Var.g = null;
                e eVar = n77Var.e;
                e eVar2 = e.PING_SCHEDULED;
                if (eVar == eVar2) {
                    z = true;
                    n77Var.e = e.PING_SENT;
                    n77Var.f = n77Var.a.schedule(n77Var.h, n77Var.k, TimeUnit.NANOSECONDS);
                } else {
                    if (eVar == e.PING_DELAYED) {
                        ScheduledExecutorService scheduledExecutorService = n77Var.a;
                        Runnable runnable = n77Var.i;
                        long j = n77Var.j;
                        pd5 pd5Var = n77Var.b;
                        TimeUnit timeUnit = TimeUnit.NANOSECONDS;
                        n77Var.g = scheduledExecutorService.schedule(runnable, j - pd5Var.a(timeUnit), timeUnit);
                        n77.this.e = eVar2;
                    }
                    z = false;
                }
            }
            if (z) {
                n77.this.c.b();
            }
        }
    }

    public static final class c implements d {
        public final d67 a;

        public class a implements a67.a {
            public a() {
            }

            @Override // a67.a
            public void a(Throwable th) {
                c.this.a.c(x47.n.h("Keepalive failed. The connection is likely gone"));
            }

            @Override // a67.a
            public void b(long j) {
            }
        }

        public c(d67 d67Var) {
            this.a = d67Var;
        }

        @Override // n77.d
        public void a() {
            this.a.c(x47.n.h("Keepalive failed. The connection is likely gone"));
        }

        @Override // n77.d
        public void b() {
            this.a.f(new a(), he5.INSTANCE);
        }
    }

    public interface d {
        void a();

        void b();
    }

    public enum e {
        IDLE,
        PING_SCHEDULED,
        PING_DELAYED,
        PING_SENT,
        IDLE_AND_PING_SENT,
        DISCONNECTED
    }

    static {
        TimeUnit.MILLISECONDS.toNanos(10L);
    }

    public n77(d dVar, ScheduledExecutorService scheduledExecutorService, long j, long j2, boolean z) {
        pd5 pd5Var = new pd5();
        this.e = e.IDLE;
        this.h = new o77(new a());
        this.i = new o77(new b());
        c50.A(dVar, "keepAlivePinger");
        this.c = dVar;
        c50.A(scheduledExecutorService, "scheduler");
        this.a = scheduledExecutorService;
        c50.A(pd5Var, "stopwatch");
        this.b = pd5Var;
        this.j = j;
        this.k = j2;
        this.d = z;
        pd5Var.b();
        pd5Var.c();
    }

    public synchronized void a() {
        e eVar = e.IDLE_AND_PING_SENT;
        synchronized (this) {
            pd5 pd5Var = this.b;
            pd5Var.b();
            pd5Var.c();
            e eVar2 = this.e;
            e eVar3 = e.PING_SCHEDULED;
            if (eVar2 == eVar3) {
                this.e = e.PING_DELAYED;
            } else if (eVar2 == e.PING_SENT || eVar2 == eVar) {
                ScheduledFuture<?> scheduledFuture = this.f;
                if (scheduledFuture != null) {
                    scheduledFuture.cancel(false);
                }
                if (this.e == eVar) {
                    this.e = e.IDLE;
                } else {
                    this.e = eVar3;
                    c50.G(this.g == null, "There should be no outstanding pingFuture");
                    this.g = this.a.schedule(this.i, this.j, TimeUnit.NANOSECONDS);
                }
            }
        }
    }

    public synchronized void b() {
        e eVar = this.e;
        if (eVar == e.IDLE) {
            this.e = e.PING_SCHEDULED;
            if (this.g == null) {
                ScheduledExecutorService scheduledExecutorService = this.a;
                Runnable runnable = this.i;
                long j = this.j;
                pd5 pd5Var = this.b;
                TimeUnit timeUnit = TimeUnit.NANOSECONDS;
                this.g = scheduledExecutorService.schedule(runnable, j - pd5Var.a(timeUnit), timeUnit);
            }
        } else if (eVar == e.IDLE_AND_PING_SENT) {
            this.e = e.PING_SENT;
        }
    }
}
