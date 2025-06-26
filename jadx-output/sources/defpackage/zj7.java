package defpackage;

import java.io.Serializable;

/* loaded from: classes2.dex */
public final class zj7<T> implements oj7<T>, Serializable {
    public el7<? extends T> e;
    public Object f;

    public zj7(el7<? extends T> el7Var) {
        im7.e(el7Var, "initializer");
        this.e = el7Var;
        this.f = wj7.a;
    }

    @Override // defpackage.oj7
    public T getValue() {
        if (this.f == wj7.a) {
            el7<? extends T> el7Var = this.e;
            im7.c(el7Var);
            this.f = el7Var.invoke();
            this.e = null;
        }
        return (T) this.f;
    }

    public String toString() {
        return this.f != wj7.a ? String.valueOf(getValue()) : "Lazy value not initialized yet.";
    }
}
