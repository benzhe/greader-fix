package defpackage;

import java.lang.Throwable;
import java.util.Objects;
import java.util.concurrent.ExecutionException;

/* loaded from: classes.dex */
public abstract class pu2<V, X extends Throwable, F, T> extends mv2<V> implements Runnable {
    public static final /* synthetic */ int o = 0;
    public aw2<? extends V> l;
    public Class<X> m;
    public F n;

    public pu2(aw2<? extends V> aw2Var, Class<X> cls, F f) {
        Objects.requireNonNull(aw2Var);
        this.l = aw2Var;
        Objects.requireNonNull(cls);
        this.m = cls;
        Objects.requireNonNull(f);
        this.n = f;
    }

    public abstract void B(T t);

    public abstract T C(F f, X x) throws Exception;

    @Override // defpackage.su2
    public final void b() {
        f(this.l);
        this.l = null;
        this.m = null;
        this.n = null;
    }

    @Override // defpackage.su2
    public final String g() {
        String strC;
        aw2<? extends V> aw2Var = this.l;
        Class<X> cls = this.m;
        F f = this.n;
        String strG = super.g();
        if (aw2Var != null) {
            String strValueOf = String.valueOf(aw2Var);
            strC = jo.c(strValueOf.length() + 16, "inputFuture=[", strValueOf, "], ");
        } else {
            strC = "";
        }
        if (cls != null && f != null) {
            String strValueOf2 = String.valueOf(cls);
            String strValueOf3 = String.valueOf(f);
            return jo.s(jo.y(strValueOf3.length() + strValueOf2.length() + jo.x(strC, 29), strC, "exceptionType=[", strValueOf2, "], fallback=["), strValueOf3, "]");
        }
        if (strG == null) {
            return null;
        }
        String strValueOf4 = String.valueOf(strC);
        return strG.length() != 0 ? strValueOf4.concat(strG) : new String(strValueOf4);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v4, types: [F, java.lang.Class<X extends java.lang.Throwable>] */
    @Override // java.lang.Runnable
    public final void run() {
        aw2<? extends V> aw2Var = this.l;
        Class<X> cls = this.m;
        F f = this.n;
        if (((f == null) || ((aw2Var == null) | (cls == null))) || isCancelled()) {
            return;
        }
        ?? r3 = (Class<X>) null;
        this.l = null;
        try {
            th = aw2Var instanceof qw2 ? ((qw2) aw2Var).a() : null;
        } catch (ExecutionException e) {
            Throwable cause = e.getCause();
            if (cause == null) {
                String strValueOf = String.valueOf(aw2Var.getClass());
                String strValueOf2 = String.valueOf(e.getClass());
                StringBuilder sbY = jo.y(strValueOf2.length() + strValueOf.length() + 35, "Future type ", strValueOf, " threw ", strValueOf2);
                sbY.append(" without a cause");
                cause = new NullPointerException(sbY.toString());
            }
            th = cause;
        } catch (Throwable th) {
            th = th;
        }
        Object objE = th == null ? vt2.e(aw2Var) : null;
        if (th == null) {
            h(objE);
            return;
        }
        if (!cls.isInstance(th)) {
            k(aw2Var);
            return;
        }
        try {
            Object objC = C(f, th);
            this.m = null;
            this.n = null;
            B(objC);
        } catch (Throwable th2) {
            try {
                j(th2);
            } finally {
                this.m = null;
                this.n = null;
            }
        }
    }
}
