package defpackage;

import com.google.android.gms.ads.internal.zzr;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* loaded from: classes.dex */
public class xs0<T> implements aw2<T> {
    public final iw2<T> e = new iw2<>();

    public final boolean a(T t) {
        boolean zH = this.e.h(t);
        if (!zH) {
            zzr.zzkz().c(new IllegalStateException("Provided SettableFuture with multiple values."), "SettableFuture");
        }
        return zH;
    }

    public final boolean b(Throwable th) {
        boolean zJ = this.e.j(th);
        if (!zJ) {
            zzr.zzkz().c(new IllegalStateException("Provided SettableFuture with multiple values."), "SettableFuture");
        }
        return zJ;
    }

    @Override // java.util.concurrent.Future
    public boolean cancel(boolean z) {
        return this.e.cancel(z);
    }

    @Override // java.util.concurrent.Future
    public T get() throws ExecutionException, InterruptedException {
        return this.e.get();
    }

    @Override // defpackage.aw2
    public void i(Runnable runnable, Executor executor) {
        this.e.i(runnable, executor);
    }

    @Override // java.util.concurrent.Future
    public boolean isCancelled() {
        return this.e.isCancelled();
    }

    @Override // java.util.concurrent.Future
    public boolean isDone() {
        return this.e.isDone();
    }

    @Override // java.util.concurrent.Future
    public T get(long j, TimeUnit timeUnit) throws ExecutionException, InterruptedException, TimeoutException {
        return this.e.get(j, timeUnit);
    }
}
