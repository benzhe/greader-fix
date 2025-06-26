package defpackage;

import java.io.Serializable;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;

/* loaded from: classes2.dex */
public final class tj7<T> implements oj7<T>, Serializable {
    public static final AtomicReferenceFieldUpdater<tj7<?>, Object> g = AtomicReferenceFieldUpdater.newUpdater(tj7.class, Object.class, "f");
    public volatile el7<? extends T> e;
    private volatile Object f;

    public tj7(el7<? extends T> el7Var) {
        im7.e(el7Var, "initializer");
        this.e = el7Var;
        this.f = wj7.a;
    }

    @Override // defpackage.oj7
    public T getValue() {
        T t = (T) this.f;
        wj7 wj7Var = wj7.a;
        if (t != wj7Var) {
            return t;
        }
        el7<? extends T> el7Var = this.e;
        if (el7Var != null) {
            T tInvoke = el7Var.invoke();
            if (g.compareAndSet(this, wj7Var, tInvoke)) {
                this.e = null;
                return tInvoke;
            }
        }
        return (T) this.f;
    }

    public String toString() {
        return this.f != wj7.a ? String.valueOf(getValue()) : "Lazy value not initialized yet.";
    }
}
