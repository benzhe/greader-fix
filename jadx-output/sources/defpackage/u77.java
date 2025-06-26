package defpackage;

/* loaded from: classes2.dex */
public final class u77 implements Runnable {
    public final /* synthetic */ q77 e;

    public u77(q77 q77Var) {
        this.e = q77Var;
    }

    @Override // java.lang.Runnable
    public void run() {
        q77 q77Var = this.e;
        if (q77Var.G) {
            return;
        }
        q77Var.G = true;
        q77.n(q77Var);
    }
}
