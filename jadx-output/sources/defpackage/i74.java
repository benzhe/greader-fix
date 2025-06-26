package defpackage;

import java.util.Objects;

/* loaded from: classes.dex */
public final class i74<T> implements g74<T> {
    public volatile g74<T> e;
    public volatile boolean f;
    public T g;

    public i74(g74<T> g74Var) {
        Objects.requireNonNull(g74Var);
        this.e = g74Var;
    }

    @Override // defpackage.g74
    public final T a() {
        if (!this.f) {
            synchronized (this) {
                if (!this.f) {
                    T tA = this.e.a();
                    this.g = tA;
                    this.f = true;
                    this.e = null;
                    return tA;
                }
            }
        }
        return this.g;
    }

    public final String toString() {
        Object objT = this.e;
        if (objT == null) {
            String strValueOf = String.valueOf(this.g);
            objT = jo.t(new StringBuilder(strValueOf.length() + 25), "<supplier that returned ", strValueOf, ">");
        }
        String strValueOf2 = String.valueOf(objT);
        return jo.t(new StringBuilder(strValueOf2.length() + 19), "Suppliers.memoize(", strValueOf2, ")");
    }
}
