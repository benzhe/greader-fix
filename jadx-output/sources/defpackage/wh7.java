package defpackage;

import defpackage.zb7;
import java.util.Iterator;
import java.util.Objects;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes2.dex */
public final class wh7 extends zb7 {
    public static final zh7 c;
    public static final zh7 d;
    public static final c g;
    public static final a h;
    public final ThreadFactory a;
    public final AtomicReference<a> b;
    public static final TimeUnit f = TimeUnit.SECONDS;
    public static final long e = Long.getLong("rx2.io-keep-alive-time", 60).longValue();

    public static final class a implements Runnable {
        public final long e;
        public final ConcurrentLinkedQueue<c> f;
        public final hc7 g;
        public final ScheduledExecutorService h;
        public final Future<?> i;
        public final ThreadFactory j;

        public a(long j, TimeUnit timeUnit, ThreadFactory threadFactory) {
            ScheduledFuture<?> scheduledFutureScheduleWithFixedDelay;
            long nanos = timeUnit != null ? timeUnit.toNanos(j) : 0L;
            this.e = nanos;
            this.f = new ConcurrentLinkedQueue<>();
            this.g = new hc7();
            this.j = threadFactory;
            ScheduledExecutorService scheduledExecutorServiceNewScheduledThreadPool = null;
            if (timeUnit != null) {
                scheduledExecutorServiceNewScheduledThreadPool = Executors.newScheduledThreadPool(1, wh7.d);
                scheduledFutureScheduleWithFixedDelay = scheduledExecutorServiceNewScheduledThreadPool.scheduleWithFixedDelay(this, nanos, nanos, TimeUnit.NANOSECONDS);
            } else {
                scheduledFutureScheduleWithFixedDelay = null;
            }
            this.h = scheduledExecutorServiceNewScheduledThreadPool;
            this.i = scheduledFutureScheduleWithFixedDelay;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.f.isEmpty()) {
                return;
            }
            long jNanoTime = System.nanoTime();
            Iterator<c> it = this.f.iterator();
            while (it.hasNext()) {
                c next = it.next();
                if (next.g > jNanoTime) {
                    return;
                }
                if (this.f.remove(next) && this.g.c(next)) {
                    next.k();
                }
            }
        }
    }

    public static final class b extends zb7.b {
        public final a f;
        public final c g;
        public final AtomicBoolean h = new AtomicBoolean();
        public final hc7 e = new hc7();

        public b(a aVar) {
            c cVar;
            c cVar2;
            this.f = aVar;
            if (aVar.g.f) {
                cVar2 = wh7.g;
            } else {
                while (true) {
                    if (aVar.f.isEmpty()) {
                        cVar = new c(aVar.j);
                        aVar.g.b(cVar);
                        break;
                    } else {
                        cVar = aVar.f.poll();
                        if (cVar != null) {
                            break;
                        }
                    }
                }
                cVar2 = cVar;
            }
            this.g = cVar2;
        }

        @Override // zb7.b
        public ic7 c(Runnable runnable, long j, TimeUnit timeUnit) {
            return this.e.f ? zc7.INSTANCE : this.g.d(runnable, j, timeUnit, this.e);
        }

        @Override // defpackage.ic7
        public void k() {
            if (this.h.compareAndSet(false, true)) {
                this.e.k();
                a aVar = this.f;
                c cVar = this.g;
                Objects.requireNonNull(aVar);
                cVar.g = System.nanoTime() + aVar.e;
                aVar.f.offer(cVar);
            }
        }
    }

    public static final class c extends yh7 {
        public long g;

        public c(ThreadFactory threadFactory) {
            super(threadFactory);
            this.g = 0L;
        }
    }

    static {
        c cVar = new c(new zh7("RxCachedThreadSchedulerShutdown"));
        g = cVar;
        cVar.k();
        int iMax = Math.max(1, Math.min(10, Integer.getInteger("rx2.io-priority", 5).intValue()));
        zh7 zh7Var = new zh7("RxCachedThreadScheduler", iMax);
        c = zh7Var;
        d = new zh7("RxCachedWorkerPoolEvictor", iMax);
        a aVar = new a(0L, null, zh7Var);
        h = aVar;
        aVar.g.k();
        Future<?> future = aVar.i;
        if (future != null) {
            future.cancel(true);
        }
        ScheduledExecutorService scheduledExecutorService = aVar.h;
        if (scheduledExecutorService != null) {
            scheduledExecutorService.shutdownNow();
        }
    }

    public wh7() {
        zh7 zh7Var = c;
        this.a = zh7Var;
        a aVar = h;
        AtomicReference<a> atomicReference = new AtomicReference<>(aVar);
        this.b = atomicReference;
        a aVar2 = new a(e, f, zh7Var);
        if (atomicReference.compareAndSet(aVar, aVar2)) {
            return;
        }
        aVar2.g.k();
        Future<?> future = aVar2.i;
        if (future != null) {
            future.cancel(true);
        }
        ScheduledExecutorService scheduledExecutorService = aVar2.h;
        if (scheduledExecutorService != null) {
            scheduledExecutorService.shutdownNow();
        }
    }

    @Override // defpackage.zb7
    public zb7.b a() {
        return new b(this.b.get());
    }
}
