package defpackage;

import java.io.Serializable;

/* loaded from: classes2.dex */
public final class uj7<T> implements oj7<T>, Serializable {
    public el7<? extends T> e;
    public volatile Object f;
    public final Object g;

    public uj7(el7 el7Var, Object obj, int i) {
        int i2 = i & 2;
        im7.e(el7Var, "initializer");
        this.e = el7Var;
        this.f = wj7.a;
        this.g = this;
    }

    @Override // defpackage.oj7
    public T getValue() {
        T tInvoke;
        T t = (T) this.f;
        wj7 wj7Var = wj7.a;
        if (t != wj7Var) {
            return t;
        }
        synchronized (this.g) {
            tInvoke = (T) this.f;
            if (tInvoke == wj7Var) {
                el7<? extends T> el7Var = this.e;
                im7.c(el7Var);
                tInvoke = el7Var.invoke();
                this.f = tInvoke;
                this.e = null;
            }
        }
        return tInvoke;
    }

    public String toString() {
        return this.f != wj7.a ? String.valueOf(getValue()) : "Lazy value not initialized yet.";
    }
}
