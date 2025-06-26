package defpackage;

import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;

/* loaded from: classes.dex */
public final class l74 extends WeakReference<Throwable> {
    public final int a;

    public l74(Throwable th, ReferenceQueue<Throwable> referenceQueue) {
        super(th, referenceQueue);
        this.a = System.identityHashCode(th);
    }

    public final boolean equals(Object obj) {
        if (obj != null && obj.getClass() == l74.class) {
            if (this == obj) {
                return true;
            }
            l74 l74Var = (l74) obj;
            if (this.a == l74Var.a && get() == l74Var.get()) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return this.a;
    }
}
