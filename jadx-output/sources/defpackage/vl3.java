package defpackage;

/* loaded from: classes.dex */
public final class vl3 implements Runnable {
    public final /* synthetic */ int e;
    public final /* synthetic */ long f;
    public final /* synthetic */ rl3 g;

    public vl3(rl3 rl3Var, int i, long j) {
        this.g = rl3Var;
        this.e = i;
        this.f = j;
    }

    @Override // java.lang.Runnable
    public final void run() {
        ((cv0) this.g.b).q += this.e;
    }
}
