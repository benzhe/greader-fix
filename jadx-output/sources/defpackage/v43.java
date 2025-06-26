package defpackage;

import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;
import java.util.Objects;

/* loaded from: classes.dex */
public final class v43 extends WeakReference<Throwable> {
    public final int a;

    public v43(Throwable th, ReferenceQueue<Throwable> referenceQueue) {
        super(th, referenceQueue);
        Objects.requireNonNull(th, "The referent cannot be null");
        this.a = System.identityHashCode(th);
    }

    public final boolean equals(Object obj) {
        if (obj != null && obj.getClass() == v43.class) {
            if (this == obj) {
                return true;
            }
            v43 v43Var = (v43) obj;
            if (this.a == v43Var.a && get() == v43Var.get()) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return this.a;
    }
}
