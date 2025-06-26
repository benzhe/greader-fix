package defpackage;

import java.util.Queue;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.logging.Level;
import java.util.logging.Logger;

/* loaded from: classes2.dex */
public final class u87 implements Executor, Runnable {
    public static final Logger h = Logger.getLogger(u87.class.getName());
    public static final b i;
    public final Executor e;
    public final Queue<Runnable> f = new ConcurrentLinkedQueue();
    private volatile int g = 0;

    public static abstract class b {
        public b(a aVar) {
        }

        public abstract boolean a(u87 u87Var, int i, int i2);

        public abstract void b(u87 u87Var, int i);
    }

    public static final class c extends b {
        public final AtomicIntegerFieldUpdater<u87> a;

        public c(AtomicIntegerFieldUpdater atomicIntegerFieldUpdater, a aVar) {
            super(null);
            this.a = atomicIntegerFieldUpdater;
        }

        @Override // u87.b
        public boolean a(u87 u87Var, int i, int i2) {
            return this.a.compareAndSet(u87Var, i, i2);
        }

        @Override // u87.b
        public void b(u87 u87Var, int i) {
            this.a.set(u87Var, i);
        }
    }

    public static final class d extends b {
        public d(a aVar) {
            super(null);
        }

        @Override // u87.b
        public boolean a(u87 u87Var, int i, int i2) {
            synchronized (u87Var) {
                if (u87Var.g != i) {
                    return false;
                }
                u87Var.g = i2;
                return true;
            }
        }

        @Override // u87.b
        public void b(u87 u87Var, int i) {
            synchronized (u87Var) {
                u87Var.g = i;
            }
        }
    }

    static {
        b dVar;
        try {
            dVar = new c(AtomicIntegerFieldUpdater.newUpdater(u87.class, "g"), null);
        } catch (Throwable th) {
            h.log(Level.SEVERE, "FieldUpdaterAtomicHelper failed", th);
            dVar = new d(null);
        }
        i = dVar;
    }

    public u87(Executor executor) {
        c50.A(executor, "'executor' must not be null.");
        this.e = executor;
    }

    public final void c(Runnable runnable) {
        if (i.a(this, 0, -1)) {
            try {
                this.e.execute(this);
            } catch (Throwable th) {
                if (runnable != null) {
                    this.f.remove(runnable);
                }
                i.b(this, 0);
                throw th;
            }
        }
    }

    @Override // java.util.concurrent.Executor
    public void execute(Runnable runnable) {
        Queue<Runnable> queue = this.f;
        c50.A(runnable, "'r' must not be null.");
        queue.add(runnable);
        c(runnable);
    }

    @Override // java.lang.Runnable
    public void run() {
        while (true) {
            try {
                Runnable runnablePoll = this.f.poll();
                if (runnablePoll == null) {
                    break;
                }
                try {
                    runnablePoll.run();
                } catch (RuntimeException e) {
                    h.log(Level.SEVERE, "Exception while executing runnable " + runnablePoll, (Throwable) e);
                }
            } catch (Throwable th) {
                i.b(this, 0);
                throw th;
            }
        }
        i.b(this, 0);
        if (this.f.isEmpty()) {
            return;
        }
        c(null);
    }
}
