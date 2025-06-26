package defpackage;

import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;
import java.util.Objects;

/* loaded from: classes.dex */
public final class zo4 extends WeakReference<Throwable> {
    public final int a;

    public zo4(Throwable th, ReferenceQueue<Throwable> referenceQueue) {
        super(th, referenceQueue);
        Objects.requireNonNull(th, "The referent cannot be null");
        this.a = System.identityHashCode(th);
    }

    public final boolean equals(Object obj) {
        if (obj != null && obj.getClass() == zo4.class) {
            if (this == obj) {
                return true;
            }
            zo4 zo4Var = (zo4) obj;
            if (this.a == zo4Var.a && get() == zo4Var.get()) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return this.a;
    }
}
