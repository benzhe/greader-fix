package defpackage;

import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;
import java.util.Objects;

/* loaded from: classes.dex */
public final class tg4 extends WeakReference<Throwable> {
    public final int a;

    public tg4(Throwable th, ReferenceQueue<Throwable> referenceQueue) {
        super(th, referenceQueue);
        Objects.requireNonNull(th, "The referent cannot be null");
        this.a = System.identityHashCode(th);
    }

    public final boolean equals(Object obj) {
        if (obj != null && obj.getClass() == tg4.class) {
            if (this == obj) {
                return true;
            }
            tg4 tg4Var = (tg4) obj;
            if (this.a == tg4Var.a && get() == tg4Var.get()) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return this.a;
    }
}
