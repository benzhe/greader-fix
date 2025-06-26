package defpackage;

import java.util.Objects;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;

/* loaded from: classes2.dex */
public final class hr7 extends sp7 implements lr7, Executor {
    public static final AtomicIntegerFieldUpdater l = AtomicIntegerFieldUpdater.newUpdater(hr7.class, "inFlightTasks");
    public final fr7 h;
    public final int i;
    public final String j;
    public final int k;
    public final ConcurrentLinkedQueue<Runnable> g = new ConcurrentLinkedQueue<>();
    private volatile int inFlightTasks = 0;

    public hr7(fr7 fr7Var, int i, String str, int i2) {
        this.h = fr7Var;
        this.i = i;
        this.j = str;
        this.k = i2;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        throw new IllegalStateException("Close cannot be invoked on LimitingBlockingDispatcher".toString());
    }

    @Override // defpackage.lr7
    public void e() {
        Runnable runnablePoll = this.g.poll();
        if (runnablePoll != null) {
            fr7 fr7Var = this.h;
            Objects.requireNonNull(fr7Var);
            try {
                fr7Var.g.e(runnablePoll, this, true);
                return;
            } catch (RejectedExecutionException unused) {
                gp7.m.Z(fr7Var.g.b(runnablePoll, this));
                return;
            }
        }
        l.decrementAndGet(this);
        Runnable runnablePoll2 = this.g.poll();
        if (runnablePoll2 != null) {
            x(runnablePoll2, true);
        }
    }

    @Override // java.util.concurrent.Executor
    public void execute(Runnable runnable) {
        x(runnable, false);
    }

    @Override // defpackage.lr7
    public int i() {
        return this.k;
    }

    @Override // defpackage.cp7
    public void t(rk7 rk7Var, Runnable runnable) {
        x(runnable, false);
    }

    @Override // defpackage.cp7
    public String toString() {
        String str = this.j;
        if (str != null) {
            return str;
        }
        return super.toString() + "[dispatcher = " + this.h + ']';
    }

    public final void x(Runnable runnable, boolean z) {
        do {
            AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = l;
            if (atomicIntegerFieldUpdater.incrementAndGet(this) <= this.i) {
                fr7 fr7Var = this.h;
                Objects.requireNonNull(fr7Var);
                try {
                    fr7Var.g.e(runnable, this, z);
                    return;
                } catch (RejectedExecutionException unused) {
                    gp7.m.Z(fr7Var.g.b(runnable, this));
                    return;
                }
            }
            this.g.add(runnable);
            if (atomicIntegerFieldUpdater.decrementAndGet(this) >= this.i) {
                return;
            } else {
                runnable = this.g.poll();
            }
        } while (runnable != null);
    }
}
