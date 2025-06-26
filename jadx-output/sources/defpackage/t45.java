package defpackage;

/* loaded from: classes.dex */
public final class t45 implements Runnable {
    public final /* synthetic */ e45 e;
    public final /* synthetic */ s45 f;

    public t45(s45 s45Var, e45 e45Var) {
        this.f = s45Var;
        this.e = e45Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (this.f.b) {
            z35<TResult> z35Var = this.f.c;
            if (z35Var != 0) {
                z35Var.a(this.e);
            }
        }
    }
}
