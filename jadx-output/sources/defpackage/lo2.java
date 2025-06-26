package defpackage;

import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* loaded from: classes.dex */
public final class lo2<E, V> implements aw2<V> {
    public final E e;
    public final String f;
    public final aw2<V> g;

    public lo2(E e, String str, aw2<V> aw2Var) {
        this.e = e;
        this.f = str;
        this.g = aw2Var;
    }

    @Override // java.util.concurrent.Future
    public final boolean cancel(boolean z) {
        return this.g.cancel(z);
    }

    @Override // java.util.concurrent.Future
    public final V get() throws ExecutionException, InterruptedException {
        return this.g.get();
    }

    @Override // defpackage.aw2
    public final void i(Runnable runnable, Executor executor) {
        this.g.i(runnable, executor);
    }

    @Override // java.util.concurrent.Future
    public final boolean isCancelled() {
        return this.g.isCancelled();
    }

    @Override // java.util.concurrent.Future
    public final boolean isDone() {
        return this.g.isDone();
    }

    public final String toString() {
        String str = this.f;
        int iIdentityHashCode = System.identityHashCode(this);
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 12);
        sb.append(str);
        sb.append("@");
        sb.append(iIdentityHashCode);
        return sb.toString();
    }

    @Override // java.util.concurrent.Future
    public final V get(long j, TimeUnit timeUnit) throws ExecutionException, InterruptedException, TimeoutException {
        return this.g.get(j, timeUnit);
    }
}
