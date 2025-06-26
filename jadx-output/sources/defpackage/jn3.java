package defpackage;

/* loaded from: classes.dex */
public final class jn3 implements Runnable {
    public final j40 e;
    public final c90 f;
    public final Runnable g;

    public jn3(j40 j40Var, c90 c90Var, Runnable runnable) {
        this.e = j40Var;
        this.f = c90Var;
        this.g = runnable;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.e.isCanceled();
        c90 c90Var = this.f;
        uh0 uh0Var = c90Var.c;
        if (uh0Var == null) {
            this.e.l(c90Var.a);
        } else {
            this.e.zzb(uh0Var);
        }
        if (this.f.d) {
            this.e.zzc("intermediate-response");
        } else {
            this.e.w("done");
        }
        Runnable runnable = this.g;
        if (runnable != null) {
            runnable.run();
        }
    }
}
