package defpackage;

import java.util.Objects;
import java.util.concurrent.Callable;

/* loaded from: classes2.dex */
public final class mh7<T> extends ac7<T> {
    public final Callable<? extends T> e;

    public mh7(Callable<? extends T> callable) {
        this.e = callable;
    }

    @Override // defpackage.ac7
    public void g(cc7<? super T> cc7Var) {
        ic7 ic7VarT0 = n56.t0();
        cc7Var.c(ic7VarT0);
        jc7 jc7Var = (jc7) ic7VarT0;
        if (jc7Var.a()) {
            return;
        }
        try {
            T tCall = this.e.call();
            Objects.requireNonNull(tCall, "The callable returned a null value");
            if (jc7Var.a()) {
                return;
            }
            cc7Var.onSuccess(tCall);
        } catch (Throwable th) {
            n56.r2(th);
            if (jc7Var.a()) {
                n56.z1(th);
            } else {
                cc7Var.b(th);
            }
        }
    }
}
