package defpackage;

/* loaded from: classes.dex */
public final class oi3 implements Runnable {
    public final /* synthetic */ mi3 e;

    public oi3(mi3 mi3Var) {
        this.e = mi3Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        mi3 mi3Var = this.e;
        if (mi3Var.K) {
            return;
        }
        mi3Var.t.e(mi3Var);
    }
}
