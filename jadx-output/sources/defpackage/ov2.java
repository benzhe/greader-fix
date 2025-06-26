package defpackage;

import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* JADX WARN: Incorrect class signature: super class is equals to this class */
/* loaded from: classes.dex */
public abstract class ov2<V> implements Future<V> {
    @Override // java.util.concurrent.Future
    public boolean cancel(boolean z) {
        return ((qv2) this).e.cancel(z);
    }

    @Override // java.util.concurrent.Future
    public V get() throws ExecutionException, InterruptedException {
        return ((qv2) this).e.get();
    }

    @Override // java.util.concurrent.Future
    public boolean isCancelled() {
        return ((qv2) this).e.isCancelled();
    }

    @Override // java.util.concurrent.Future
    public boolean isDone() {
        return ((qv2) this).e.isDone();
    }

    public String toString() {
        return ((qv2) this).e.toString();
    }

    @Override // java.util.concurrent.Future
    public V get(long j, TimeUnit timeUnit) throws ExecutionException, InterruptedException, TimeoutException {
        return ((qv2) this).e.get(j, timeUnit);
    }
}
