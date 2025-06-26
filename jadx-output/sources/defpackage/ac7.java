package defpackage;

import java.util.Objects;

/* loaded from: classes2.dex */
public abstract class ac7<T> implements ec7<T> {
    public static <T> ac7<T> d(T t) {
        Objects.requireNonNull(t, "item is null");
        return new nh7(t);
    }

    @Override // defpackage.ec7
    public final void a(cc7<? super T> cc7Var) {
        try {
            g(cc7Var);
        } catch (NullPointerException e) {
            throw e;
        } catch (Throwable th) {
            n56.r2(th);
            NullPointerException nullPointerException = new NullPointerException("subscribeActual failed");
            nullPointerException.initCause(th);
            throw nullPointerException;
        }
    }

    public final <R> ac7<R> e(uc7<? super T, ? extends R> uc7Var) {
        return new oh7(this, uc7Var);
    }

    public final ac7<T> f(zb7 zb7Var) {
        Objects.requireNonNull(zb7Var, "scheduler is null");
        return new ph7(this, zb7Var);
    }

    public abstract void g(cc7<? super T> cc7Var);
}
