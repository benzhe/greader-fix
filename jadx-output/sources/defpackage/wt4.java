package defpackage;

/* loaded from: classes.dex */
public final class wt4 implements Runnable {
    public final /* synthetic */ long e;
    public final /* synthetic */ xu4 f;

    public wt4(xu4 xu4Var, long j) {
        this.f = xu4Var;
        this.e = j;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f.l(this.e);
    }
}
