package defpackage;

import java.util.Objects;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;

/* loaded from: classes.dex */
public abstract class vu2<I, O, F, T> extends mv2<O> implements Runnable {
    public static final /* synthetic */ int n = 0;
    public aw2<? extends I> l;
    public F m;

    public vu2(aw2<? extends I> aw2Var, F f) {
        Objects.requireNonNull(aw2Var);
        this.l = aw2Var;
        Objects.requireNonNull(f);
        this.m = f;
    }

    public abstract void B(T t);

    public abstract T C(F f, I i) throws Exception;

    @Override // defpackage.su2
    public final void b() {
        f(this.l);
        this.l = null;
        this.m = null;
    }

    @Override // defpackage.su2
    public final String g() {
        String strC;
        aw2<? extends I> aw2Var = this.l;
        F f = this.m;
        String strG = super.g();
        if (aw2Var != null) {
            String strValueOf = String.valueOf(aw2Var);
            strC = jo.c(strValueOf.length() + 16, "inputFuture=[", strValueOf, "], ");
        } else {
            strC = "";
        }
        if (f != null) {
            String strValueOf2 = String.valueOf(f);
            return jo.d(strValueOf2.length() + jo.x(strC, 11), strC, "function=[", strValueOf2, "]");
        }
        if (strG == null) {
            return null;
        }
        String strValueOf3 = String.valueOf(strC);
        return strG.length() != 0 ? strValueOf3.concat(strG) : new String(strValueOf3);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.lang.Runnable
    public final void run() {
        aw2<? extends I> aw2Var = this.l;
        F f = this.m;
        if ((isCancelled() | (aw2Var == null)) || (f == null)) {
            return;
        }
        this.l = null;
        if (aw2Var.isCancelled()) {
            k(aw2Var);
            return;
        }
        try {
            try {
                Object objC = C(f, vt2.e(aw2Var));
                this.m = null;
                B(objC);
            } catch (Throwable th) {
                try {
                    j(th);
                } finally {
                    this.m = null;
                }
            }
        } catch (Error e) {
            j(e);
        } catch (CancellationException unused) {
            cancel(false);
        } catch (RuntimeException e2) {
            j(e2);
        } catch (ExecutionException e3) {
            j(e3.getCause());
        }
    }
}
