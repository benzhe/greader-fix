package defpackage;

import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;

/* loaded from: classes.dex */
public final class sv2<V> implements Runnable {
    public final Future<V> e;
    public final rv2<? super V> f;

    public sv2(Future<V> future, rv2<? super V> rv2Var) {
        this.e = future;
        this.f = rv2Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Throwable thA;
        Future<V> future = this.e;
        if ((future instanceof qw2) && (thA = ((qw2) future).a()) != null) {
            this.f.a(thA);
            return;
        }
        try {
            this.f.onSuccess(vt2.e(this.e));
        } catch (Error e) {
            e = e;
            this.f.a(e);
        } catch (RuntimeException e2) {
            e = e2;
            this.f.a(e);
        } catch (ExecutionException e3) {
            this.f.a(e3.getCause());
        }
    }

    public final String toString() {
        xs2 xs2Var = new xs2(sv2.class.getSimpleName(), null);
        rv2<? super V> rv2Var = this.f;
        zs2 zs2Var = new zs2(null);
        xs2Var.c.b = zs2Var;
        xs2Var.c = zs2Var;
        zs2Var.a = rv2Var;
        return xs2Var.toString();
    }
}
