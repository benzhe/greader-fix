package defpackage;

/* loaded from: classes.dex */
public final class oz4 implements Runnable {
    public final /* synthetic */ ds4 e;
    public final /* synthetic */ int f;
    public final /* synthetic */ long g;
    public final /* synthetic */ boolean h;
    public final /* synthetic */ sz4 i;

    public oz4(sz4 sz4Var, ds4 ds4Var, int i, long j, boolean z) {
        this.i = sz4Var;
        this.e = ds4Var;
        this.f = i;
        this.g = j;
        this.h = z;
    }

    @Override // java.lang.Runnable
    public final void run() throws IllegalStateException {
        this.i.z(this.e);
        sz4.t(this.i, this.e, this.f, this.g, false, this.h);
    }
}
