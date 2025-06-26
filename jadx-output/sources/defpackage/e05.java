package defpackage;

/* loaded from: classes.dex */
public final class e05 implements Runnable {
    public final /* synthetic */ long e;
    public final /* synthetic */ h05 f;

    public e05(h05 h05Var, long j) {
        this.f = h05Var;
        this.e = j;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f.a.c().h(this.e);
        this.f.e = null;
    }
}
