package defpackage;

/* loaded from: classes.dex */
public final class pk3 implements Runnable {
    public final /* synthetic */ j40 e;
    public final /* synthetic */ zh3 f;

    public pk3(zh3 zh3Var, j40 j40Var) {
        this.f = zh3Var;
        this.e = j40Var;
    }

    @Override // java.lang.Runnable
    public final void run() throws InterruptedException {
        try {
            this.f.f.put(this.e);
        } catch (InterruptedException unused) {
            Thread.currentThread().interrupt();
        }
    }
}
