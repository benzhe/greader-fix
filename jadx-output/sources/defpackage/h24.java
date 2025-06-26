package defpackage;

import java.util.Objects;

/* loaded from: classes.dex */
public final class h24<T> implements g24<T> {
    public volatile g24<T> e;
    public volatile boolean f;
    public T g;

    public h24(g24<T> g24Var) {
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
                    this.e = null;
                    return tA;
                }
            }
        }
        return this.g;
    }

    public final String toString() {
        Object objC = this.e;
        if (objC == null) {
            String strValueOf = String.valueOf(this.g);
            objC = jo.c(strValueOf.length() + 25, "<supplier that returned ", strValueOf, ">");
        }
        String strValueOf2 = String.valueOf(objC);
        return jo.c(strValueOf2.length() + 19, "Suppliers.memoize(", strValueOf2, ")");
    }
}
