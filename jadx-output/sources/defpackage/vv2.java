package defpackage;

import defpackage.su2;
import java.util.Objects;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import java.util.logging.Level;
import java.util.logging.Logger;

/* loaded from: classes.dex */
public class vv2<V> implements aw2<V> {
    public static final aw2<?> f = new vv2(null);
    public static final Logger g = Logger.getLogger(vv2.class.getName());
    public final V e;

    public static final class a<V> extends su2.i<V> {
        public a(Throwable th) {
            j(th);
        }
    }

    public vv2(V v) {
        this.e = v;
    }

    @Override // java.util.concurrent.Future
    public boolean cancel(boolean z) {
        return false;
    }

    @Override // java.util.concurrent.Future
    public V get(long j, TimeUnit timeUnit) throws ExecutionException {
        Objects.requireNonNull(timeUnit);
        return this.e;
    }

    @Override // defpackage.aw2
    public void i(Runnable runnable, Executor executor) {
        c50.y(runnable, "Runnable was null.");
        c50.y(executor, "Executor was null.");
        try {
            executor.execute(runnable);
        } catch (RuntimeException e) {
            Logger logger = g;
            Level level = Level.SEVERE;
            String strValueOf = String.valueOf(runnable);
            String strValueOf2 = String.valueOf(executor);
            logger.logp(level, "com.google.common.util.concurrent.ImmediateFuture", "addListener", jo.d(strValueOf2.length() + strValueOf.length() + 57, "RuntimeException while executing runnable ", strValueOf, " with executor ", strValueOf2), (Throwable) e);
        }
    }

    @Override // java.util.concurrent.Future
    public boolean isCancelled() {
        return false;
    }

    @Override // java.util.concurrent.Future
    public boolean isDone() {
        return true;
    }

    public String toString() {
        String string = super.toString();
        String strValueOf = String.valueOf(this.e);
        return jo.d(strValueOf.length() + jo.x(string, 27), string, "[status=SUCCESS, result=[", strValueOf, "]]");
    }

    @Override // java.util.concurrent.Future
    public V get() {
        return this.e;
    }
}
