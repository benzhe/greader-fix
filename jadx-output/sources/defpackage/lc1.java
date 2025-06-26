package defpackage;

import java.lang.ref.WeakReference;

/* loaded from: classes.dex */
public final class lc1 implements Runnable {
    public final WeakReference<kc1> e;

    public lc1(kc1 kc1Var, mc1 mc1Var) {
        this.e = new WeakReference<>(kc1Var);
    }

    @Override // java.lang.Runnable
    public final void run() {
        kc1 kc1Var = this.e.get();
        if (kc1Var != null) {
            kc1Var.D0(jc1.a);
        }
    }
}
