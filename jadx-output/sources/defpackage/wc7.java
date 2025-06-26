package defpackage;

import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes2.dex */
public final class wc7 extends AtomicReference<sc7> implements ic7 {
    public wc7(sc7 sc7Var) {
        super(sc7Var);
    }

    @Override // defpackage.ic7
    public void k() {
        sc7 andSet;
        if (get() == null || (andSet = getAndSet(null)) == null) {
            return;
        }
        try {
            andSet.cancel();
        } catch (Exception e) {
            n56.r2(e);
            n56.z1(e);
        }
    }
}
