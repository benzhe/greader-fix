package defpackage;

import java.util.concurrent.Callable;
import java.util.concurrent.Future;
import java.util.concurrent.FutureTask;
import java.util.concurrent.atomic.AtomicReference;

/* JADX WARN: Incorrect class signature: super class is equals to this class */
/* loaded from: classes2.dex */
public final class ai7 extends AtomicReference implements Callable<Void>, ic7 {
    public static final FutureTask<Void> g;
    public static final FutureTask<Void> h;
    public final Runnable e;
    public Thread f;

    static {
        Runnable runnable = dd7.b;
        g = new FutureTask<>(runnable, null);
        h = new FutureTask<>(runnable, null);
    }

    public ai7(Runnable runnable) {
        this.e = runnable;
    }

    public final void a(Future future) {
        Future future2;
        do {
            future2 = (Future) get();
            if (future2 == g) {
                return;
            }
            if (future2 == h) {
                future.cancel(this.f != Thread.currentThread());
                return;
            }
        } while (!compareAndSet(future2, future));
    }

    @Override // java.util.concurrent.Callable
    public Void call() throws Exception {
        this.f = Thread.currentThread();
        try {
            this.e.run();
            return null;
        } finally {
            lazySet(g);
            this.f = null;
        }
    }

    @Override // defpackage.ic7
    public final void k() {
        FutureTask<Void> futureTask;
        Future future = (Future) get();
        if (future == g || future == (futureTask = h) || !compareAndSet(future, futureTask) || future == null) {
            return;
        }
        future.cancel(this.f != Thread.currentThread());
    }
}
