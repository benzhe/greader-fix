package defpackage;

import java.lang.Thread;
import java.util.Queue;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes2.dex */
public final class b57 implements Executor {
    public final Thread.UncaughtExceptionHandler e;
    public final Queue<Runnable> f = new ConcurrentLinkedQueue();
    public final AtomicReference<Thread> g = new AtomicReference<>();

    public class a implements Runnable {
        public final /* synthetic */ b e;
        public final /* synthetic */ Runnable f;

        public a(b bVar, Runnable runnable) {
            this.e = bVar;
            this.f = runnable;
        }

        @Override // java.lang.Runnable
        public void run() {
            b57.this.execute(this.e);
        }

        public String toString() {
            return this.f.toString() + "(scheduled in SynchronizationContext)";
        }
    }

    public static class b implements Runnable {
        public final Runnable e;
        public boolean f;
        public boolean g;

        public b(Runnable runnable) {
            c50.A(runnable, "task");
            this.e = runnable;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.f) {
                return;
            }
            this.g = true;
            this.e.run();
        }
    }

    public static final class c {
        public final b a;
        public final ScheduledFuture<?> b;

        public c(b bVar, ScheduledFuture scheduledFuture, a aVar) {
            c50.A(bVar, "runnable");
            this.a = bVar;
            c50.A(scheduledFuture, "future");
            this.b = scheduledFuture;
        }

        public void a() {
            this.a.f = true;
            this.b.cancel(false);
        }
    }

    public b57(Thread.UncaughtExceptionHandler uncaughtExceptionHandler) {
        c50.A(uncaughtExceptionHandler, "uncaughtExceptionHandler");
        this.e = uncaughtExceptionHandler;
    }

    public final void a() {
        while (this.g.compareAndSet(null, Thread.currentThread())) {
            while (true) {
                try {
                    Runnable runnablePoll = this.f.poll();
                    if (runnablePoll == null) {
                        break;
                    }
                    try {
                        runnablePoll.run();
                    } catch (Throwable th) {
                        this.e.uncaughtException(Thread.currentThread(), th);
                    }
                } catch (Throwable th2) {
                    this.g.set(null);
                    throw th2;
                }
            }
            this.g.set(null);
            if (this.f.isEmpty()) {
                return;
            }
        }
    }

    public final void b(Runnable runnable) {
        Queue<Runnable> queue = this.f;
        c50.A(runnable, "runnable is null");
        queue.add(runnable);
    }

    public final c c(Runnable runnable, long j, TimeUnit timeUnit, ScheduledExecutorService scheduledExecutorService) {
        b bVar = new b(runnable);
        return new c(bVar, scheduledExecutorService.schedule(new a(bVar, runnable), j, timeUnit), null);
    }

    public void d() {
        c50.G(Thread.currentThread() == this.g.get(), "Not called from the SynchronizationContext");
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        Queue<Runnable> queue = this.f;
        c50.A(runnable, "runnable is null");
        queue.add(runnable);
        a();
    }
}
