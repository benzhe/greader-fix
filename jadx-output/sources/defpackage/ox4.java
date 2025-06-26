package defpackage;

import java.lang.Thread;
import java.util.Objects;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.Callable;
import java.util.concurrent.Future;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.Semaphore;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes.dex */
public final class ox4 extends my4 {
    public static final AtomicLong k = new AtomicLong(Long.MIN_VALUE);
    public nx4 c;
    public nx4 d;
    public final PriorityBlockingQueue<mx4<?>> e;
    public final BlockingQueue<mx4<?>> f;
    public final Thread.UncaughtExceptionHandler g;
    public final Thread.UncaughtExceptionHandler h;
    public final Object i;
    public final Semaphore j;

    public ox4(rx4 rx4Var) {
        super(rx4Var);
        this.i = new Object();
        this.j = new Semaphore(2);
        this.e = new PriorityBlockingQueue<>();
        this.f = new LinkedBlockingQueue();
        this.g = new lx4(this, "Thread death: Uncaught exception on worker thread");
        this.h = new lx4(this, "Thread death: Uncaught exception on network thread");
    }

    @Override // defpackage.ly4
    public final void c() {
        if (Thread.currentThread() != this.d) {
            throw new IllegalStateException("Call expected from network thread");
        }
    }

    @Override // defpackage.ly4
    public final void d() {
        if (Thread.currentThread() != this.c) {
            throw new IllegalStateException("Call expected from worker thread");
        }
    }

    @Override // defpackage.my4
    public final boolean f() {
        return false;
    }

    public final boolean n() {
        return Thread.currentThread() == this.c;
    }

    public final <V> Future<V> p(Callable<V> callable) throws IllegalStateException {
        i();
        mx4<?> mx4Var = new mx4<>(this, callable, false);
        if (Thread.currentThread() == this.c) {
            if (!this.e.isEmpty()) {
                this.a.a().i.a("Callable skipped the worker queue.");
            }
            mx4Var.run();
        } else {
            u(mx4Var);
        }
        return mx4Var;
    }

    public final void q(Runnable runnable) throws IllegalStateException {
        i();
        Objects.requireNonNull(runnable, "null reference");
        u(new mx4<>(this, runnable, false, "Task exception on worker thread"));
    }

    public final <T> T r(AtomicReference<T> atomicReference, long j, String str, Runnable runnable) {
        synchronized (atomicReference) {
            this.a.m().q(runnable);
            try {
                atomicReference.wait(j);
            } catch (InterruptedException unused) {
                this.a.a().i.a(str.length() != 0 ? "Interrupted waiting for ".concat(str) : new String("Interrupted waiting for "));
                return null;
            }
        }
        T t = atomicReference.get();
        if (t == null) {
            this.a.a().i.a(str.length() != 0 ? "Timed out waiting for ".concat(str) : new String("Timed out waiting for "));
        }
        return t;
    }

    public final void s(Runnable runnable) throws IllegalStateException {
        i();
        u(new mx4<>(this, runnable, true, "Task exception on worker thread"));
    }

    public final void t(Runnable runnable) throws IllegalStateException {
        i();
        mx4<?> mx4Var = new mx4<>(this, runnable, false, "Task exception on network thread");
        synchronized (this.i) {
            this.f.add(mx4Var);
            nx4 nx4Var = this.d;
            if (nx4Var == null) {
                nx4 nx4Var2 = new nx4(this, "Measurement Network", this.f);
                this.d = nx4Var2;
                nx4Var2.setUncaughtExceptionHandler(this.h);
                this.d.start();
            } else {
                synchronized (nx4Var.e) {
                    nx4Var.e.notifyAll();
                }
            }
        }
    }

    public final void u(mx4<?> mx4Var) {
        synchronized (this.i) {
            this.e.add(mx4Var);
            nx4 nx4Var = this.c;
            if (nx4Var == null) {
                nx4 nx4Var2 = new nx4(this, "Measurement Worker", this.e);
                this.c = nx4Var2;
                nx4Var2.setUncaughtExceptionHandler(this.g);
                this.c.start();
            } else {
                synchronized (nx4Var.e) {
                    nx4Var.e.notifyAll();
                }
            }
        }
    }
}
