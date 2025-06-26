package defpackage;

/* loaded from: classes.dex */
public final class nz4 implements Runnable {
    public final /* synthetic */ ds4 e;
    public final /* synthetic */ long f;
    public final /* synthetic */ int g;
    public final /* synthetic */ long h;
    public final /* synthetic */ boolean i;
    public final /* synthetic */ sz4 j;

    public nz4(sz4 sz4Var, ds4 ds4Var, long j, int i, long j2, boolean z) {
        this.j = sz4Var;
        this.e = ds4Var;
        this.f = j;
        this.g = i;
        this.h = j2;
        this.i = z;
    }

    @Override // java.lang.Runnable
    public final void run() throws IllegalStateException {
        this.j.z(this.e);
        this.j.l(this.f, false);
        sz4.t(this.j, this.e, this.g, this.h, true, this.i);
    }
}
