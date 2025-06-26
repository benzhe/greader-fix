package defpackage;

import defpackage.su2;
import java.util.Objects;

/* loaded from: classes.dex */
public final class ew2 extends su2.i<Void> implements Runnable {
    public final Runnable l;

    public ew2(Runnable runnable) {
        Objects.requireNonNull(runnable);
        this.l = runnable;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            this.l.run();
        } catch (Throwable th) {
            j(th);
            Object obj = ht2.a;
            if (th instanceof RuntimeException) {
                throw ((RuntimeException) th);
            }
            if (!(th instanceof Error)) {
                throw new RuntimeException(th);
            }
            throw ((Error) th);
        }
    }
}
