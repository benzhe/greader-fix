package defpackage;

import java.io.Serializable;
import java.util.Objects;

/* loaded from: classes.dex */
public final class i24<T> implements g24<T>, Serializable {
    public final g24<T> e;
    public volatile transient boolean f;
    public transient T g;

    public i24(g24<T> g24Var) {
        Objects.requireNonNull(g24Var);
        this.e = g24Var;
    }

    @Override // defpackage.g24
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
        Object objC;
        if (this.f) {
            String strValueOf = String.valueOf(this.g);
            objC = jo.c(strValueOf.length() + 25, "<supplier that returned ", strValueOf, ">");
        } else {
            objC = this.e;
        }
        String strValueOf2 = String.valueOf(objC);
        return jo.c(strValueOf2.length() + 19, "Suppliers.memoize(", strValueOf2, ")");
    }
}
