package defpackage;

import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: classes.dex */
public final class a61 implements ob1, em3 {
    public final sk2 e;
    public final qa1 f;
    public final sb1 g;
    public final AtomicBoolean h = new AtomicBoolean();
    public final AtomicBoolean i = new AtomicBoolean();

    public a61(sk2 sk2Var, qa1 qa1Var, sb1 sb1Var) {
        this.e = sk2Var;
        this.f = qa1Var;
        this.g = sb1Var;
    }

    @Override // defpackage.em3
    public final void c0(fm3 fm3Var) {
        if (this.e.e == 1 && fm3Var.j && this.h.compareAndSet(false, true)) {
            this.f.onAdImpression();
        }
        if (fm3Var.j && this.i.compareAndSet(false, true)) {
            sb1 sb1Var = this.g;
            synchronized (sb1Var) {
                sb1Var.D0(vb1.a);
            }
        }
    }

    @Override // defpackage.ob1
    public final synchronized void onAdLoaded() {
        if (this.e.e != 1 && this.h.compareAndSet(false, true)) {
            this.f.onAdImpression();
        }
    }
}
