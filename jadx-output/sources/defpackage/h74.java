package defpackage;

import java.io.Serializable;
import java.util.Objects;

/* loaded from: classes.dex */
public final class h74<T> implements Serializable, g74 {
    public final g74<T> e;
    public volatile transient boolean f;
    public transient T g;

    public h74(g74<T> g74Var) {
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
                    return tA;
                }
            }
        }
        return this.g;
    }

    public final String toString() {
        Object objT;
        if (this.f) {
            String strValueOf = String.valueOf(this.g);
            objT = jo.t(new StringBuilder(strValueOf.length() + 25), "<supplier that returned ", strValueOf, ">");
        } else {
            objT = this.e;
        }
        String strValueOf2 = String.valueOf(objT);
        return jo.t(new StringBuilder(strValueOf2.length() + 19), "Suppliers.memoize(", strValueOf2, ")");
    }
}
