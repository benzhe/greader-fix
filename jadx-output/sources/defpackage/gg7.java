package defpackage;

import java.util.concurrent.Callable;

/* loaded from: classes2.dex */
public final class gg7<T> extends rb7<T> implements Callable<T> {
    public final Callable<? extends T> e;

    public gg7(Callable<? extends T> callable) {
        this.e = callable;
    }

    @Override // java.util.concurrent.Callable
    public T call() throws Exception {
        return this.e.call();
    }

    @Override // defpackage.rb7
    public void m(tb7<? super T> tb7Var) {
        ic7 ic7VarT0 = n56.t0();
        tb7Var.c(ic7VarT0);
        jc7 jc7Var = (jc7) ic7VarT0;
        if (jc7Var.a()) {
            return;
        }
        try {
            T tCall = this.e.call();
            if (jc7Var.a()) {
                return;
            }
            if (tCall == null) {
                tb7Var.a();
            } else {
                tb7Var.onSuccess(tCall);
            }
        } catch (Throwable th) {
            n56.r2(th);
            if (jc7Var.a()) {
                n56.z1(th);
            } else {
                tb7Var.b(th);
            }
        }
    }
}
