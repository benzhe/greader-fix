package defpackage;

import java.util.Objects;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* loaded from: classes.dex */
public final class pv2<V> extends nv2<V> {
    public final aw2<V> l;

    public pv2(aw2<V> aw2Var) {
        Objects.requireNonNull(aw2Var);
        this.l = aw2Var;
    }

    @Override // defpackage.su2, java.util.concurrent.Future
    public final boolean cancel(boolean z) {
        return this.l.cancel(z);
    }

    @Override // defpackage.su2, java.util.concurrent.Future
    public final V get() throws ExecutionException, InterruptedException {
        return this.l.get();
    }

    @Override // defpackage.su2, defpackage.aw2
    public final void i(Runnable runnable, Executor executor) {
        this.l.i(runnable, executor);
    }

    @Override // defpackage.su2, java.util.concurrent.Future
    public final boolean isCancelled() {
        return this.l.isCancelled();
    }

    @Override // defpackage.su2, java.util.concurrent.Future
    public final boolean isDone() {
        return this.l.isDone();
    }

    @Override // defpackage.su2
    public final String toString() {
        return this.l.toString();
    }

    @Override // defpackage.su2, java.util.concurrent.Future
    public final V get(long j, TimeUnit timeUnit) throws ExecutionException, InterruptedException, TimeoutException {
        return this.l.get(j, timeUnit);
    }
}
