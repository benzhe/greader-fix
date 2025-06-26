package defpackage;

/* loaded from: classes.dex */
public final class wy4 implements Runnable {
    public final /* synthetic */ boolean e;
    public final /* synthetic */ sz4 f;

    public wy4(sz4 sz4Var, boolean z) {
        this.f = sz4Var;
        this.e = z;
    }

    @Override // java.lang.Runnable
    public final void run() throws IllegalStateException {
        boolean zG = this.f.a.g();
        boolean zF = this.f.a.f();
        this.f.a.B = Boolean.valueOf(this.e);
        if (zF == this.e) {
            this.f.a.a().n.b("Default data collection state already set to", Boolean.valueOf(this.e));
        }
        if (this.f.a.g() == zG || this.f.a.g() != this.f.a.f()) {
            this.f.a.a().k.c("Default data collection is different than actual status", Boolean.valueOf(this.e), Boolean.valueOf(zG));
        }
        this.f.v();
    }
}
