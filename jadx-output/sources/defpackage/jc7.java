package defpackage;

import java.util.concurrent.atomic.AtomicReference;

/* JADX WARN: Incorrect class signature: super class is equals to this class */
/* loaded from: classes2.dex */
public final class jc7 extends AtomicReference implements ic7 {
    public jc7(Runnable runnable) {
        super(runnable);
    }

    public final boolean a() {
        return get() == null;
    }

    @Override // defpackage.ic7
    public final void k() {
        Object andSet;
        if (get() == null || (andSet = getAndSet(null)) == null) {
            return;
        }
        ((Runnable) andSet).run();
    }

    @Override // java.util.concurrent.atomic.AtomicReference
    public String toString() {
        StringBuilder sbZ = jo.z("RunnableDisposable(disposed=");
        sbZ.append(a());
        sbZ.append(", ");
        sbZ.append(get());
        sbZ.append(")");
        return sbZ.toString();
    }
}
