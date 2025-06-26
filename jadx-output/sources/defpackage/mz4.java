package defpackage;

/* loaded from: classes.dex */
public final class mz4 implements Runnable {
    public final /* synthetic */ Boolean e;
    public final /* synthetic */ sz4 f;

    public mz4(sz4 sz4Var, Boolean bool) {
        this.f = sz4Var;
        this.e = bool;
    }

    @Override // java.lang.Runnable
    public final void run() throws IllegalStateException {
        this.f.u(this.e, true);
    }
}
