package defpackage;

import java.util.Objects;
import java.util.concurrent.Callable;

/* loaded from: classes2.dex */
public final class hh7<T> extends ac7<T> {
    public final Callable<? extends Throwable> e;

    public hh7(Callable<? extends Throwable> callable) {
        this.e = callable;
    }

    @Override // defpackage.ac7
    public void g(cc7<? super T> cc7Var) {
        try {
            Throwable thCall = this.e.call();
            Objects.requireNonNull(thCall, "Callable returned null throwable. Null values are generally not allowed in 2.x operators and sources.");
            th = thCall;
        } catch (Throwable th) {
            th = th;
            n56.r2(th);
        }
        cc7Var.c(zc7.INSTANCE);
        cc7Var.b(th);
    }
}
