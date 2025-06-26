package defpackage;

import java.util.Objects;
import java.util.concurrent.Callable;

/* loaded from: classes2.dex */
public final class qf7<T, R> extends mb7<R> {
    public final T f;
    public final uc7<? super T, ? extends w38<? extends R>> g;

    public qf7(T t, uc7<? super T, ? extends w38<? extends R>> uc7Var) {
        this.f = t;
        this.g = uc7Var;
    }

    @Override // defpackage.mb7
    public void t(x38<? super R> x38Var) {
        mi7 mi7Var = mi7.INSTANCE;
        try {
            w38<? extends R> w38VarApply = this.g.apply(this.f);
            Objects.requireNonNull(w38VarApply, "The mapper returned a null Publisher");
            w38<? extends R> w38Var = w38VarApply;
            if (!(w38Var instanceof Callable)) {
                w38Var.i(x38Var);
                return;
            }
            try {
                Object objCall = ((Callable) w38Var).call();
                if (objCall != null) {
                    x38Var.e(new ni7(x38Var, objCall));
                } else {
                    x38Var.e(mi7Var);
                    x38Var.a();
                }
            } catch (Throwable th) {
                n56.r2(th);
                x38Var.e(mi7Var);
                x38Var.b(th);
            }
        } catch (Throwable th2) {
            x38Var.e(mi7Var);
            x38Var.b(th2);
        }
    }
}
