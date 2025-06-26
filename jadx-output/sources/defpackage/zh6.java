package defpackage;

/* loaded from: classes.dex */
public final /* synthetic */ class zh6 implements Runnable {
    public final lh6 e;
    public final Runnable f;

    public zh6(lh6 lh6Var, Runnable runnable) {
        this.e = lh6Var;
        this.f = runnable;
    }

    @Override // java.lang.Runnable
    public final void run() {
        lh6 lh6Var = this.e;
        Runnable runnable = this.f;
        bi.l(lh6Var.d.getAndSet(Thread.currentThread()) == null);
        try {
            runnable.run();
            lh6Var.d.set(null);
            lh6Var.b();
        } catch (Throwable th) {
            try {
                lh6Var.d.set(null);
                lh6Var.b();
            } catch (Throwable th2) {
                pg4.a.a(th, th2);
            }
            throw th;
        }
    }
}
