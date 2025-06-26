package defpackage;

/* loaded from: classes.dex */
public final class x45 implements Runnable {
    public final /* synthetic */ e45 e;
    public final /* synthetic */ w45 f;

    public x45(w45 w45Var, e45 e45Var) {
        this.f = w45Var;
        this.e = e45Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (this.f.b) {
            b45<? super TResult> b45Var = this.f.c;
            if (b45Var != 0) {
                b45Var.onSuccess(this.e.l());
            }
        }
    }
}
