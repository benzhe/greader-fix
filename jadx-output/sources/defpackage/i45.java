package defpackage;

import java.util.concurrent.CountDownLatch;

/* loaded from: classes.dex */
public final class i45 implements h45 {
    public final CountDownLatch a = new CountDownLatch(1);

    public i45(g55 g55Var) {
    }

    @Override // defpackage.y35
    public final void b() {
        this.a.countDown();
    }

    @Override // defpackage.a45
    public final void c(Exception exc) {
        this.a.countDown();
    }

    @Override // defpackage.b45
    public final void onSuccess(Object obj) {
        this.a.countDown();
    }
}
