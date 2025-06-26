package defpackage;

/* loaded from: classes.dex */
public final class u45 implements Runnable {
    public final /* synthetic */ e45 e;
    public final /* synthetic */ v45 f;

    public u45(v45 v45Var, e45 e45Var) {
        this.f = v45Var;
        this.e = e45Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (this.f.b) {
            a45 a45Var = this.f.c;
            if (a45Var != null) {
                a45Var.c(this.e.k());
            }
        }
    }
}
