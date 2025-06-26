package defpackage;

import java.util.Iterator;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes2.dex */
public final class pn7<T> implements sn7<T> {
    public final AtomicReference<sn7<T>> a;

    public pn7(sn7<? extends T> sn7Var) {
        im7.e(sn7Var, "sequence");
        this.a = new AtomicReference<>(sn7Var);
    }

    @Override // defpackage.sn7
    public Iterator<T> iterator() {
        sn7<T> andSet = this.a.getAndSet(null);
        if (andSet != null) {
            return andSet.iterator();
        }
        throw new IllegalStateException("This sequence can be consumed only once.");
    }
}
