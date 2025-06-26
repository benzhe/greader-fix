package defpackage;

import defpackage.yp7;
import java.util.Objects;

/* loaded from: classes2.dex */
public abstract class bq7<J extends yp7> extends xo7 implements lp7, up7 {
    public final J h;

    public bq7(J j) {
        this.h = j;
    }

    @Override // defpackage.up7
    public eq7 a() {
        return null;
    }

    @Override // defpackage.up7
    public boolean isActive() {
        return true;
    }

    @Override // defpackage.lp7
    public void k() {
        Object objE;
        J j = this.h;
        Objects.requireNonNull(j, "null cannot be cast to non-null type kotlinx.coroutines.JobSupport");
        cq7 cq7Var = (cq7) j;
        do {
            objE = cq7Var.e();
            if (!(objE instanceof bq7)) {
                if (!(objE instanceof up7) || ((up7) objE).a() == null) {
                    return;
                }
                h();
                return;
            }
            if (objE != this) {
                return;
            }
        } while (!cq7.e.compareAndSet(cq7Var, objE, dq7.a));
    }
}
