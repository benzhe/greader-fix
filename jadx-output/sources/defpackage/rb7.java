package defpackage;

import defpackage.dd7;
import java.util.Objects;

/* loaded from: classes2.dex */
public abstract class rb7<T> implements vb7<T> {
    public static <T> rb7<T> i(T t) {
        Objects.requireNonNull(t, "item is null");
        return new kg7(t);
    }

    @Override // defpackage.vb7
    public final void a(tb7<? super T> tb7Var) {
        Objects.requireNonNull(tb7Var, "observer is null");
        try {
            m(tb7Var);
        } catch (NullPointerException e) {
            throw e;
        } catch (Throwable th) {
            n56.r2(th);
            NullPointerException nullPointerException = new NullPointerException("subscribeActual failed");
            nullPointerException.initCause(th);
            throw nullPointerException;
        }
    }

    public final rb7<T> b(T t) {
        Objects.requireNonNull(t, "defaultItem is null");
        return o(new kg7(t));
    }

    public final rb7<T> d(tc7<? super Throwable> tc7Var) {
        tc7<Object> tc7Var2 = dd7.d;
        qc7 qc7Var = dd7.c;
        return new og7(this, tc7Var2, tc7Var2, tc7Var, qc7Var, qc7Var, qc7Var);
    }

    public final rb7<T> e(tc7<? super T> tc7Var) {
        tc7<Object> tc7Var2 = dd7.d;
        qc7 qc7Var = dd7.c;
        return new og7(this, tc7Var2, tc7Var, tc7Var2, qc7Var, qc7Var, qc7Var);
    }

    public final rb7<T> f(vc7<? super T> vc7Var) {
        return new cg7(this, vc7Var);
    }

    public final <R> rb7<R> g(uc7<? super T, ? extends vb7<? extends R>> uc7Var) {
        return new fg7(this, uc7Var);
    }

    public final hb7 h(uc7<? super T, ? extends lb7> uc7Var) {
        return new eg7(this, uc7Var);
    }

    public final <R> rb7<R> j(uc7<? super T, ? extends R> uc7Var) {
        return new lg7(this, uc7Var);
    }

    public final rb7<T> k(zb7 zb7Var) {
        Objects.requireNonNull(zb7Var, "scheduler is null");
        return new mg7(this, zb7Var);
    }

    public final rb7<T> l(vb7<? extends T> vb7Var) {
        return new ng7(this, new dd7.g(vb7Var), true);
    }

    public abstract void m(tb7<? super T> tb7Var);

    public final rb7<T> n(zb7 zb7Var) {
        Objects.requireNonNull(zb7Var, "scheduler is null");
        return new pg7(this, zb7Var);
    }

    public final rb7<T> o(vb7<? extends T> vb7Var) {
        return new qg7(this, vb7Var);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final mb7<T> p() {
        return this instanceof gd7 ? ((gd7) this).c() : new rg7(this);
    }
}
